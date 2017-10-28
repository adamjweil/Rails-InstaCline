# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Photo.delete_all
Comment.delete_all
Like.delete_all

# for testing purposes
User.create(username: "username", email: "email@email.com", password: "password", avatar_url: "https://static.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg")

# 5.times do
#   User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "password")
# end

1.times do
  User.create(username: "@JessFTW", email: Faker::Internet.safe_email, password: "password")
end
1.times do
  User.create(username: "@AdamJWeil", email: Faker::Internet.safe_email, password: "password")
end
1.times do
  User.create(username: "@BeachMaster", email: Faker::Internet.safe_email, password: "password")
end
1.times do
  User.create(username: "@Foodie", email: Faker::Internet.safe_email, password: "password")
end
1.times do
  User.create(username: "@ILoveFood", email: Faker::Internet.safe_email, password: "password")
end


Photo.create(photo: "http://travel.home.sndimg.com/content/dam/images/travel/fullset/2014/12/3/top-10-caribbean-beaches-eagle-beach-aruba.jpg.rend.hgtvcom.966.725.suffix/1491584555480.jpeg", username: "@BeachMaster", blurb: "Wow!")



Photo.create(photo: "https://media.cntraveler.com/photos/590372b6a71e701c036ce19c/master/pass/best-mexico-beaches-playa-de-amor-GettyImages-648939118.jpg", username: "@JessFTW", blurb: "#blessed")



Photo.create(photo: "https://media.gq.com/photos/594ee1bf92ae3c70e00797af/master/w_800/best-beaches-Railay-Beach-Thailand.jpg", username: "@BeachMaster", blurb: "Beach Day!")


Photo.create(photo: "https://s-i.huffpost.com/gen/4451422/images/o-FOOD-facebook.jpg", username: "@Foodie", blurb: "Lunch!")

Photo.create(photo: "http://travel.home.sndimg.com/content/dam/images/travel/fullset/2014/07/20/32/food-paradise-102-ss-001.rend.hgtvcom.966.544.suffix/1491584380240.jpeg", username: "@BeachMaster", blurb: "Footlongs all day!")

Photo.create(photo: "http://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/6/18/0/YW0304H_Pulled-Pork-Sandwich_s4x3.jpg.rend.hgtvcom.966.725.suffix/1387299384530.jpeg", username: "@Foodie", blurb: "Sliderssss")


Photo.create(photo: "https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Common-dog-behaviors-explained.jpg?itok=FSzwbBoi", username: "@ILoveFood", blurb: "Who are you?")


Photo.create(photo: "https://static.boredpanda.com/blog/wp-content/uploads/2016/01/bear-dogs-310__605.jpg", username: "@AdamJWeil", blurb: "Panda")


Photo.create(photo: "http://ichef.bbci.co.uk/wwfeatures/wm/live/1280_640/images/live/p0/55/8x/p0558xqm.jpg", username: "@AdamJWeil", blurb: "Having Fun!")


# 100.times do
#   Comment.create(user_id: User.all.sample.id, photo_id: Photo.all.sample.id, content: Faker::ChuckNorris.fact)
# end
#
# 500.times do
#   Like.create(user_id: User.all.sample.id, photo_id: Photo.all.sample.id)
# end
