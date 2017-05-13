Import mojo
Import tfont
Global LoadTime


Global MyFont:TFont
Global MyFont3:TFont
Global MyFont2:TFont



Class Game Extends App
	Method OnCreate()
		SetUpdateRate(60)
		LoadTime = Millisecs
		
		
		MyFont = New TFont("Helvetica.ttf", 25,[0, 0, 0])
		MyFont2 = New TFont("Bugs.ttf", 50,[200, 0, 50])
		MyFont3 = New TFont("Georgia.ttf", 30,[0, 100, 0])
		
		
		LoadTime = Millisecs - LoadTime
	End Method
	
	Method OnUpdate()
		
	End Method
	
	Method OnRender()
		Cls(200, 200, 200)
		SetColor(255, 255, 255)
		
		
		MyFont.DrawText("Loaded from ttf files @ runtime. Time taken: " + LoadTime + "ms", 10, 0)
		MyFont2.DrawText("Supports Different Colours", 10, 35)
		MyFont3.DrawText("MultiLine Support &~nX/Y Centering", 300, 100, 1, 0)
		MyFont.DrawText("Adjust Letter Spacing", 10, 180, 0, 0, 15)
		MyFont.DrawText("Adjust Line~nSpacing", 10, 250, 0, 0, 0, 0)
		MyFont.DrawText("Adjust Line~nSpacing", 200, 250, 0, 0, 0, -10)
		MyFont.DrawText("Adjust Line~nSpacing", 400, 250, 0, 0, 0, 10)
		
		

		
	End Method
End Class






Function Main()
	New Game
End Function