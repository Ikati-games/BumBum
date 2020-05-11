from PIL import Image


sizes = [180, 167, 152, 120, 87, 80, 76, 58, 40]

for i in sizes:
	img = Image.open("../Images.xcassets/AppIcon.appiconset/Icon-1024.png")
	img.thumbnail((i, i))
	img.save("../Images.xcassets/AppIcon.appiconset/Icon-%s.png" % i)