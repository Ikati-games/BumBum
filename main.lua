display.setDefault("magTextureFilter", "nearest")
display.setDefault("minTextureFilter", "nearest")

composer = require("composer")
C = require("constants")
widget = require("widget")

buttonPressSound = audio.loadSound(C.buttonPressSound)
buttonReleaseSound = audio.loadSound(C.buttonReleaseSound)

composer.gotoScene("scenes.main_menu")