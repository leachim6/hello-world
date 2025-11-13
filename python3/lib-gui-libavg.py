from libavg import avg

player = avg.Player.get()
canvas = player.createMainCanvas(size=(640,480))
rootNode = canvas.getRootNode()
avg.WordsNode(pos=(10,10), font="arial", 
        text="Hello World", parent=rootNode)
player.play()
