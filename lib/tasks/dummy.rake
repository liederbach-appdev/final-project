namespace :dummy do
  desc "Hydrate the database with some dummy data to make it easier to develop"
  task :reset => :environment do
    User.create([
      {id: 1, name: "Tim", email: "tim@example.com", password: "password", },
      {id: 2, name: "Steph", email: "steph@example.com", password: "password", }
    ])
    
    Restaurant.create([
      {id: 1, name: "Alinea", address: "1723 N Halsted St, Chicago, IL 60614", description: "A Foodie's paradise, but extremely expensive", cuisine: "Upscale Fine Dining", image_url: "https://d2ciprw05cjhos.cloudfront.net/files/v3/styles/gs_large/public/2014/01/Alinea.jpg?itok=OTupo9Pa", creator_id: 1, rating: 2},
      {id: 2, name: "Tanta Chicago", address: "118 W Grand Ave, Chicago, IL 60654", description: "Inventive Peruvian fare served in a hip, upscale ambiance", cuisine: "Peruvian", image_url: "https://assets.dnainfo.com/generated/chicago_photo/2015/08/tanta-1439398179.JPG/extralarge.jpg", creator_id: 1, rating: 4},
      {id: 3, name: "Monteverde", address: "1020 W Madison St, Chicago, IL 60607", description: "Stylish atmosphere, serving comtemporary Italian with an extensive wine list from around the world", cuisine: "Italian", image_url: "https://media1.fdncms.com/chicago/imager/u/magnum/24768984/monteverde_003-1200.jpg", creator_id: 1, rating: 5},
      {id: 4, name: "Little Goat Diner", address: "820 W Randolph St, Chicago, IL 60607", description: "Diner serving a variety of comfort food classics with a gourmet, fusion flare", cuisine: "New American", image_url: "http://www.littlegoatchicago.com/content/05-diner-photos/Little-Goat-1218.jpg", creator_id: 1, rating: 4},
      {id: 5, name: "Peckish Pig", address: "623 Howard St, Evanston, IL 60202", description: "Chill gastropub serving a variety of cocktails, beers, and tapas-style meals", cuisine: "American Gastropub", image_url: "https://jwcdaily.com/sheridanroadmagazine/wp-content/uploads/sites/6/2016/10/Pig3.jpg", creator_id: 1, rating: 3},
      {id: 6, name: "Kabul House", address: "2424 Dempster Street, Evanston, IL 60202", description: "Afghan fare with a variety of kebabs and vegetarian options with BYOB", cuisine: "Afghani", image_url: "https://static.wixstatic.com/media/8e4771_489211eec2e44058840c7e0a23db719e~mv2.jpg", creator_id: 1, rating: 4},
      {id: 7, name: "Farmhouse Evanston", address: "703 Church St, Evanston, IL 60201", description: "Rustic farmhouse vibes, serving farm-to-table meals and curated cocktails/beers", cuisine: "American", image_url: "https://i1.wp.com/farmhouseevanston.com/assets/uploads/2018/05/FH-Beacon-room-2-.jpg?ssl=1", creator_id: 1, rating: 3},
      {id: 8, name: "Dos Urban Cantina", address: "2829 W Armitage Ave, Chicago, IL 60647", description: "Modern Mexican restaurant complimented with tastful decor and crafted cocktails", cuisine: "Mexican", image_url: "https://media1.fdncms.com/chicago/imager/u/zoom/20859101/dosurbancantina_004-1200.jpg", creator_id: 1, rating: 2},
      {id: 9, name: "Gogi", address: "6240 N California Ave, Chicago, IL 60659", description: "Local Korean BBQ place with tabletop grills and all the meats and Soju you'd want", cuisine: "Korean", image_url: "https://www.theworlds50best.com/filestore/KoreaNYC/Gogi-Chicago-dishes-600x400-2.jpg", creator_id: 1, rating: 5},
      {id: 10, name: "Pequod's Pizza", address: "2207 N Clybourn Ave, Chicago, IL 60614", description: "Casual, brick-walled pizza pub serving deep-dish wonders", cuisine: "Pizza", image_url: "http://travelwithbender.com/files/1914/4123/1870/chicago_pizza_IMG_3546-2.jpg", creator_id: 1, rating: 5}
    ])
    
    Meal.create([
      {id: 1, name: "Pepperoni Deep-dish Pizza", restaurant_id: 10, image_url: "https://media.cntraveler.com/photos/58ef97100c86721c06473675/4:5/w_767,c_limit/best-restaurants-chicago-pequods-pizza-2017.jpg"},
      {id: 2, name: "Breakfast Bibimbap", restaurant_id: 4, image_url: "https://resizer.otstatic.com/v2/photos/large/25830837.jpg"},
      {id: 3, name: "Little Piggy Went to China", restaurant_id: 4, image_url: "https://s3-media2.fl.yelpcdn.com/bphoto/N9C_kJZKpzu69LAeUllg0w/o.jpg"},
      {id: 4, name: "Chicken Kebab", restaurant_id: 6, image_url: "https://s3-media2.fl.yelpcdn.com/bphoto/5ChhKbwKQD6EpINR9hxhZw/ls.jpg"},
      {id: 5, name: "Afghani Rice", restaurant_id: 6, image_url: "https://theafghanperspective.files.wordpress.com/2014/12/azeenspalao.jpg"}
    ])
    
    Like.create([
      {id: 1, restaurant_id: 9 , user_id: 1},
      {id: 2, restaurant_id: 9, user_id: 2},
      {id: 3, restaurant_id: 10, user_id: 1}
    ])
    # Write some Ruby to quickly create some records in your tables.
    # If it's helpful, you can use methods from the Faker gem for random data:
    #   https://github.com/stympy/faker

  end
end
