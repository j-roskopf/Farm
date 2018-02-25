///@description create the crop!
///@arg x position
///@arg y position
///@arg crop type

//create the instance
var idOfCrop = instance_create_layer(argument0, argument1, "Instances", obj_crop)

//give charactersistics
with(idOfCrop) {
	cropType = argument2
	growthStageDuration = crops.ds_crops_type[# 0, cropType]
}

return idOfCrop