ds_crops_type = -1
ds_crops_instances = -1
ds_crops_data = ds_grid_create(4, 1)
ds_grid_clear(ds_crops_data, -1)


enum crop {
	tomato,
	potato,
	carrot,
	artichoke,
	chili,
	gourd,
	corn
}

createCropType(1, 60, "Tomato")
createCropType(5, 10, "Potato")
createCropType(3, 20, "Carrot")
createCropType(2, 30, "Artichoke")
createCropType(6, 50, "Chili")
createCropType(4, 20, "Gourd")
createCropType(3, 30, "Corn")

plantingMode = false
selectCrop = 0

mx = 0
my = 0

cellSize = 32