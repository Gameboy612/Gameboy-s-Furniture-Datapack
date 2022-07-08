data modify entity @s Item set from storage gbfurniture:temp Entity.data.gbfurniture.Item
data modify entity @s Item.tag.display.Name set from storage gbfurniture:temp Entity.data.gbfurniture.Item.tag.LocName
data modify entity @s Item.tag.EntityTag.Tags set from storage gbfurniture:temp Entity.Tags
data modify entity @s Item.tag.EntityTag.data set from storage gbfurniture:temp Entity.data
data modify entity @s Item.tag.EntityTag.id set value "minecraft:marker"


# Rotation
execute if score #rot GBT.temp matches -44..44 run data modify entity @s ItemRotation set value 4
execute if score #rot GBT.temp matches 45..135 run data modify entity @s ItemRotation set value 6
execute if score #rot GBT.temp matches -135..-45 run data modify entity @s ItemRotation set value 2
execute unless score #rot GBT.temp matches -135..135 run data modify entity @s ItemRotation set value 0


# Remove the tag
tag @s remove gbfurniture.new