ds_crops_type = -1
ds_crops_instances = -1

enum crop {
	tomato,
	potato,
	carrot,
	artichoke,
	chili,
	gourd,
	corn
}

createCropType(1, 60)
createCropType(5, 10)
createCropType(3, 20)
createCropType(2, 30)
createCropType(6, 50)
createCropType(4, 20)
createCropType(3, 30)

plantingMode = false
selectCrop = 0

mx = 0
my = 0

cellSize = 32