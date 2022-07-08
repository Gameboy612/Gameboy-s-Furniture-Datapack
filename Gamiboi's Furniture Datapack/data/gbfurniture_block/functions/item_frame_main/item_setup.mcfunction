data modify entity @s Item set from storage gbfurniture:temp Entity.Item
data modify entity @s Item.tag.display.Name set from storage gbfurniture:temp Entity.Item.tag.display.LocName
data remove entity @s Item.tag.display.LocName

# Remove the tag
tag @s remove gbfurniture.new