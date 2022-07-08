kill @e[type=item,distance=..1,nbt={Age:0s,Item:{id:"minecraft:string",Count:1b}}]
kill @e[type=item,distance=..1,nbt={Age:0s,Item:{id:"minecraft:petrified_oak_slab",Count:1b}}]

summon item ~ ~ ~ {Motion:[0.05d,0.25d,0.0d],Tags:["gbfurniture.new"],Item:{id:"minecraft:stone_button",Count:1b,tag:{}}}

execute as @e[type=item,tag=gbfurniture.new,sort=nearest,limit=1,distance=..2] run function gbfurniture_block:item_frame_main/item_setup

kill @s