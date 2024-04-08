# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

## PEOPLE
#########
## Flintstone family
# agriculture (hillbilly)
# San Cemente Owner
zeke = Person.create!(first_name: 'Zeke', last_name: 'Flintstone', gender: 'male')
# agriculture (hillbilly)
jed = Person.create!(first_name: 'Jed', last_name: 'Flintstone', gender: 'male')

# soldier / pilot
rocky = Person.create!(first_name: 'Rockbottom', nick_name: 'Rocky', last_name: 'Flintstone', gender: 'male')

# rich uncle
giggles = Person.create!(first_name: 'Jay Giggles', nick_name: 'Uncle Giggles', last_name: 'Flintstone', gender: 'male')

# freeway traffic reporter
pops = Person.create!(first_name: 'Ed Pops', nick_name: 'Pops', last_name: 'Flintstone', gender: 'male')
# homemaker
edna = Person.create!(first_name: 'Edna', last_name: 'Flintstone', given_name: 'Hardrock', gender: 'female')

# married to wilma
# son of pops & edna (crane operator at 'Slate Rock & Gravel Company')
fred = Person.create!(first_name: 'Fredrick Jay', nick_name: 'Fred', last_name: 'Flintstone', gender: 'male')
# married to fred
# reporter & caterer & homemaker
wilma = Person.create!(first_name: 'Wilma', last_name: 'Flintstone', given_name: 'Slaghoople', gender: 'female')

# daughter of fred & wilma, married to bamm-bamm
# advertising executive
pebbles = Person.create!(first_name: 'Pebbles Wilma', nick_name: 'Pebbles', last_name: 'Rubble', given_name: 'Flintstone', gender: 'female')
# adopted brother to pebbles
stoney = Person.create!(first_name: 'Stoney', last_name: 'Flintstone', gender: 'male')


## Hardrock family
# father to Edna, Tex, Jemina (married to Lucile)
james = Person.create!(first_name: 'James', last_name: 'Hardrock', gender: 'male')
# mother to Edna, Tex, Jemina (married to James)
lucile = Person.create!(first_name: 'Lucile', last_name: 'Hardrock', given_name: 'von Stone', gender: 'female')

# sister to Tex & Edna
jemina = Person.create!(first_name: 'Jemina', last_name: 'Hardrock', gender: 'female')

# texrock rangers & rancher (town: texrock)
# brother to Edna
tex = Person.create!(first_name: 'Tex', last_name: 'Hardrock', gender: 'male')

# daughter of tex
mary = Person.create!(first_name: 'Mary Lou', last_name: 'Hardrock', gender: 'female')
# son of tex (ranch owner)
tumbleweed = Person.create!(first_name: 'Tumbleweed', last_name: 'Hardrock', gender: 'male')

## Slaghoople family
# father to Wilma, married to Pearl
ricky = Person.create!(first_name: 'Richard', nick_name: 'Ricky', last_name: 'Slaghoople', gender: 'male')
pearl = Person.create!(first_name: 'Pearl', last_name: 'Slaghoople', gender: 'female')

# wilma's sister
mica = Person.create!(first_name: 'Mica', last_name: 'Slaghoople', gender: 'female')
# wilma's sister
mickey = Person.create!(first_name: 'Michael', nick_name: 'Mickey', last_name: 'Slaghoople', gender: 'female')
# wilma's brother
michael = Person.create!(first_name: 'Jerry', last_name: 'Slaghoople', gender: 'male')

## McBricker family
brick = Person.create!(first_name: 'Brick', last_name: 'McBricker', gender: 'male')
jean = Person.create!(first_name: 'Jean', last_name: 'McBricker', gender: 'female')

# betty's bother (child of brick & jean)
# HS Basketball player
brad = Person.create!(first_name: 'Brad', last_name: 'McBricker', gender: 'male')


## Slate family
# flo's brother (lives in granite town)
# manager of 'Bedrock & Gravel Quarry Company'
mr_slate = Person.create!(first_name: 'George', nick_name: 'Mr.', last_name: 'Slate', gender: 'male')
# married to mr. slate
mrs_slate = Person.create!(first_name: 'Mrs.', last_name: 'Slate', gender: 'female')

# child of mr. slate & mrs. slate
eugene = Person.create!(first_name: 'Eugene', last_name: 'Slate', gender: 'male')
# child of mr. slate & mrs. slate
bessie = Person.create!(first_name: 'Bessie', last_name: 'Slate', gender: 'female')
# bessie's child (son)
eddie = Person.create!(first_name: 'Edward', nick_name: 'Eddie', last_name: 'Slate', gender: 'male')


## Rubble family
# married to flo
# used car salesman
bob = Person.create!(first_name: 'Robert', nick_name: 'Bob', last_name: 'Rubble', gender: 'male')
# married to bob (homemaker)
flo = Person.create!(first_name: 'Florence', nick_name: 'Flo', last_name: 'Rubble', given_name: 'Slate', gender: 'female')

# barney's brother (younger)
dusty = Person.create!(first_name: 'Dusty', last_name: 'Rubble', gender: 'male')

# married to betty (child of bob & flo)
# police officer & crane operator at 'Slate Rock & Gravel Company'
barney = Person.create!(first_name: 'Bernard Matthew', nick_name: 'Barney', last_name: 'Rubble', gender: 'male')
# married to barney, child of brick & jean
# reporter & caterer & homemaker
betty = Person.create!(first_name: 'Elizabeth Jean', nick_name: 'Betty', last_name: 'Rubble', given_name: 'McBricker', gender: 'female')

# adopted son of barney & betty (married to pebbles)
# auto mechanic, then screenwriter
bamm = Person.create!(first_name: 'Bamm-Bamm', last_name: 'Rubble', gender: 'male')
# son of bamm-bamm & pebbles
chip = Person.create!(first_name: 'Charleston Frederick', nick_name: 'Chip', last_name: 'Rubble', gender: 'male')
# daughter of bamm-bamm & pebbles
roxy = Person.create!(first_name: 'Roxann Elisabeth', nick_name: 'Roxy', last_name: 'Rubble', gender: 'female')


## The Gruesomes – A creepy but friendly family, who move in next door to the Flintstones in later seasons.
# Uncle Ghastly – The uncle of Gobby from Creepella's side of the family, who is mostly shown as a large furry hand with claws emerging from a door, a well, or a wall. His shadow was also seen in their debut episode. He wasn't named until his second appearance, which is also the only time he is heard speaking, as he is heard laughing from a well.
ghastly = Person.create!(first_name: 'Ghastly', last_name: 'Gruesome', gender: 'male')
# Weirdly Gruesome – The patriarch of the Gruesome family, who works as a reality-show host.
# reality host
weirdly = Person.create!(first_name: 'Weirdly', last_name: 'Gruesome', gender: 'male')
# Creepella Gruesome – Weirdly's tall wife.
creepella = Person.create!(first_name: 'Creepella', last_name: 'Gruesome', gender: 'female')
# Goblin "Gobby" Gruesome – Weirdly and Creepella's son.
gobby = Person.create!(first_name: 'Goblin', nick_name: 'Gobby', last_name: 'Gruesome', gender: 'male')


## The Hatrocks – A family of hillbillies, who feuded with the Flintstones' Arkanstone branch similarly to the Hatfield–McCoy feud. Fred and Barney reignite a feud with them in "The Bedrock Hillbillies", when Fred inherits San Cemente from his late great-great-uncle Zeke Flintstone and they fight over who made Zeke's portrait. The Hatrocks later return in "The Hatrocks and the Gruesomes", where they bunk with the Flintstones during their trip to Bedrock World's Fair and their antics start to annoy them as they guilt-trip Fred into extending their stay. It is also revealed that they dislike bug music. and the Flintstones, the Rubbles, and the Gruesomes are able to drive them away by performing the Four Insects song "She Said Yeah Yeah Yeah".[a] After learning that the Bedrock World's Fair would feature the Four Insects performing, they fled back to Arkanstone.
# Granny Hatrock – The mother of Jethro and grandmother of Zack and Slab.
granny = Person.create!(first_name: 'Granny', last_name: 'Hatrock', gender: 'female')
# Jethro Hatrock – The patriarch of the Hatrock Family. He had brown hair in "The Hatrocks and the Flintstones" and taupe-gray hair in "The Hatrocks and the Gruesomes".
jethro = Person.create!(first_name: 'Jethro', last_name: 'Hatrock', gender: 'male')
# Gravella Hatrock – Jethro's wife.
gravella = Person.create!(first_name: 'Gravella', last_name: 'Hatrock', gender: 'female')
# Zack Hatrock – Jethro and Gravella's oldest son.
zack = Person.create!(first_name: 'Zack', last_name: 'Hatrock', gender: 'male')
# Slab Hatrock – The youngest son of Jethro and Gravella.
slab = Person.create!(first_name: 'Slab', last_name: 'Hatrock', gender: 'male')
# Benji Hatrock – Jethro's son-in-law.
benji = Person.create!(first_name: 'Benji', last_name: 'Hatrock', gender: 'male')

## others
# Friend to Barney & Fred (fire chief)
joe = Person.create!(first_name: 'Joseph', nick_name: 'Joe', last_name: 'Rockhead', gender: 'male')

# paperboy (town: bedrock)
arnold = Person.create!(first_name: 'Arnold', last_name: 'Granite', gender: 'male')

stoney = Person.create!(first_name: 'Stoney', last_name: 'Curtis', gender: 'male')
perry = Person.create!(first_name: 'Perry', last_name: 'Masonry', gender: 'male')

# Sam Slagheap – The Grand Poobah of the Water Buffalo Lodge.
sam = Person.create!(first_name: 'Samuel', nick_name: 'Sam', last_name: 'Slagheap', gender: 'male')
