### Entity Main
data remove storage gbfurniture:temp Entity
data modify storage gbfurniture:temp Entity set from entity @s


execute if entity @s[type=marker] run function gbfurniture_main:main/marker_main
execute if entity @s[type=item_frame] run function gbfurniture_main:main/item_frame_main
execute if entity @s[type=item] run function gbfurniture_main:main/item_main
