# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'pry'
User.destroy_all
Bug.destroy_all
Fish.destroy_all
Villager.destroy_all
UserBug.destroy_all
UserFish.destroy_all
UserVillager.destroy_all


villagers = RestClient.get 'http://acnhapi.com/v1/villagers/'
villager_array = JSON.parse(villagers)
villager_array.each do |villager|
    Villager.create(
        name: villager[1]["name"]['name-USen'],
        personality: villager[1]["personality"],
        birthday_string: villager[1]["birthday-string"],
        birthday: villager[1]["birthday"],
        hobby: villager[1]["hobby"],
        saying: villager[1]["saying"],
        icon: villager[1]["icon_uri"],
        image: villager[1]["image_uri"],
        bubble_color: villager[1]["bubble-color"], 
        text_color: villager[1]["text-color"],
        species: villager[1]["species"], 
        gender: villager[1]["gender"]
    )
end 

bugs = RestClient.get 'http://acnhapi.com/v1/bugs/'
bug_array = JSON.parse(bugs)
bug_array.each do |bug|
    Bug.create(
        name: bug[1]["name"]['name-USen'],
        availability: bug[1]["availability"],
        price: bug[1]["price"],
        price_flick: bug[1]["price-flick"],
        catch_phrase: bug[1]["catch-phrase"],
        description: bug[1]["museum-phrase"],
        image_cute: bug[1]["icon_uri"],
        image: bug[1]["image_uri"]
    )
end 

fish = RestClient.get 'http://acnhapi.com/v1/fish/'
fish_array = JSON.parse(fish)
fish_array.each do |fish|
    Fish.create(
        name: fish[1]["name"]['name-USen'],
        availability: fish[1]["availability"],
        price: fish[1]["price"],
        price_cj: fish[1]["price-cj"],
        catch_phrase: fish[1]["catch-phrase"],
        description: fish[1]["museum-phrase"],
        image_cute: fish[1]["icon_uri"],
        image: fish[1]["image_uri"]
    )
end 

f1 = Fish.all.first
f2 = Fish.all.second
f3 = Fish.all.third
b1 = Bug.all.first
b2 = Bug.all.second
b3 = Bug.all.third
v1 = Villager.all.first
v2 = Villager.all.second
v3 = Villager.all.last

user1 = User.create(
    name: "Alex",
    email: "alex@gmail.com",
    password: "password",
    town_name: "town",
    hemisphere: "northern"
)

uf1 = UserFish.create(
    user_id: user1.id,
    fish_id: f1.id
)

uf2 = UserFish.create(
    user_id: user1.id,
    fish_id: f2.id
)

uf3 = UserFish.create(
    user_id: user1.id,
    fish_id: f3.id
)

ub1 = UserBug.create(
    user_id: user1.id,
    bug_id: b1.id
)
ub2 = UserBug.create(
    user_id: user1.id,
    bug_id: b2.id
)
ub3 = UserBug.create(
    user_id: user1.id,
    bug_id: b3.id
)
uv1 = UserVillager.create(
    user_id: user1.id,
    villager_id: v1.id
)
uv2 = UserVillager.create(
    user_id: user1.id,
    villager_id: v2.id
)
uv3 = UserVillager.create(
    user_id: user1.id,
    villager_id: v3.id
)


