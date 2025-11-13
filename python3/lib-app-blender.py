import Blender
from Blender import Scene, Text3d

text = Text3d.New("Text")
text.setText("Hello World")
Scene.GetCurrent().objects.new(text)
Blender.Redraw()
