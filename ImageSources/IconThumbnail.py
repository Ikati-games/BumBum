from PIL import Image


sizes = [180, 167, 152, 120, 87, 80, 76, 58, 40]

asizes = dict()

asizes['Icon-xxxhdpi.png'] = 192
asizes['Icon-xxhdpi.png'] = 144
asizes['Icon-xhdpi.png'] = 96
asizes['Icon-mdpi.png'] = 48
asizes['Icon-ldpi.png'] = 36
asizes['Icon-hdpi.png'] = 72
asizes['Icon.png'] = 57


for i in sizes:
	img = Image.open("../Images.xcassets/AppIcon.appiconset/Icon-1024.png")
	img.thumbnail((i, i))
	img.save("../Images.xcassets/AppIcon.appiconset/Icon-%s.png" % i)

for k in asizes:
	img = Image.open("../Images.xcassets/AppIcon.appiconset/Icon-1024.png")
	img.thumbnail((asizes[k], asizes[k]))
	img.save("../%s" % k)