function gbfurniture_main:init/numbers/1_10000

function lcg:init

# *-----------------
scoreboard objectives add GBT.temp dummy
scoreboard objectives add GBT.ImportedDatapacks dummy
scoreboard objectives remove GBT.ImportedDatapacks
scoreboard objectives add GBT.ImportedDatapacks dummy
schedule function gbfurniture_main:compatibility 1t
tellraw Gameboy612 {"text":"Remember to update the GBT.ImportedDatapacks Version Number each time you update.","color":"gray"}
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1 1


schedule clear gbfurniture_main:20t/20t
function gbfurniture_main:20t/20t

schedule clear gbfurniture_main:4t/4t
function gbfurniture_main:4t/4t


# *-----------------
