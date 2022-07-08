# Summons the display item frame
summon item_frame ~ ~ ~ {Invisible:1b,Fixed:1b,Invulnerable:1b,Facing:1b,Tags:["gbfurniture.new","gbfurniture.display"]}

# # Sets the base block.
execute store result score #barrier GBT.temp run data get storage gbfurniture:temp Entity.data.gbfurniture.Type.barrier
execute store result score #light GBT.temp run data get storage gbfurniture:temp Entity.data.gbfurniture.Type.light
execute store result score #string GBT.temp run data get storage gbfurniture:temp Entity.data.gbfurniture.Type.string
execute store result score #slab GBT.temp run data get storage gbfurniture:temp Entity.data.gbfurniture.Type.slab

# Defaults to glass and check if other blocks
setblock ~ ~ ~ glass
execute if score #light GBT.temp matches 0..15 run function gbfurniture_block:marker_main/setblock/light/search
execute if score #barrier GBT.temp matches 1 run setblock ~ ~ ~ barrier
execute if score #string GBT.temp matches 1 run setblock ~ ~ ~ tripwire
execute if score #slab GBT.temp matches 1 run setblock ~ ~ ~ petrified_oak_slab


# Set the data of the item frame (display item, etc.)
execute as @e[type=item_frame,limit=1,sort=nearest,distance=..3,tag=gbfurniture.new] run function gbfurniture_block:marker_main/item_frame_setup


# Kill the marker
kill @s