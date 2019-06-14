class MealsController < ApplicationController
  def list
    @meals = Meal.all

    render("meal_templates/list.html.erb")
  end

  def details
    @meal = Meal.where({ :id => params.fetch("id_to_display") }).first

    render("meal_templates/details.html.erb")
  end

  def blank_form
    @meal = Meal.new
    @restaurant = Restaurant.where({ :id => params.fetch("restaurant_id") }).first

    render("meal_templates/blank_form.html.erb")
  end

  def save_new_info
    @meal = Meal.new

    @meal.name = params.fetch("name")
    @meal.restaurant_id = params.fetch("restaurant_id")
    @meal.image_url = params.fetch("image_url")

    if @meal.valid?
      @meal.save

      redirect_to("/meals", { :notice => "Meal created successfully." })
    else
      render("meal_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @meal = Meal.where({ :id => params.fetch("id_to_prefill") }).first

    render("meal_templates/prefilled_form.html.erb")
  end

  def save_edits
    @meal = Meal.where({ :id => params.fetch("id_to_modify") }).first

    @meal.name = params.fetch("name")
    @meal.restaurant_id = params.fetch("restaurant_id")
    @meal.image_url = params.fetch("image_url")

    if @meal.valid?
      @meal.save

      redirect_to("/meals/" + @meal.id.to_s, { :notice => "Meal updated successfully." })
    else
      render("meal_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @meal = Meal.where({ :id => params.fetch("id_to_remove") }).first

    @meal.destroy

    redirect_to("/meals", { :notice => "Meal deleted successfully." })
  end
end
