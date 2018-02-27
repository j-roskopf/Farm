collidable = false

frameWidth = 32
frameHeight = 64

cropType = 0 //default to tomato

daysOld = 0
growthStage = 0 //where we are in our growth
growthStageDuration = 0
maxGrowthStage = (sprite_get_width(spr_crops) / frameWidth - 1)
fullyGrown = false
sparkle = -1

//correct for origin
xx = x - (frameWidth / 2) + 2
yy = y - frameHeight + 6