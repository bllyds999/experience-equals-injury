execute as @a run execute store result score @s exp_record run experience query @s levels
execute if items entity @a container.* minecraft:paper as @a at @s run function experience_equals_injury:item
function experience_equals_injury:damage
function experience_equals_injury:health
function experience_equals_injury:effect