package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.tile.FlxTilemap;
import flixel.util.FlxAxes;

class PlayState extends FlxState
{
	
	private var timer:Float = 0;
	private var styleNo:Int = -1;
	private var style:FlxAxes;
	
	override public function create():Void
	{
		bgColor = 0;
		super.create();
		
		var map = new FlxTilemap();
		map.loadMapFromCSV(AssetPaths.map__csv, AssetPaths.tiles__png, 16, 16);
		map.screenCenter();
		add(map);
	}

	override public function update(elapsed:Float):Void
	{
		timer -= elapsed;
		if (timer <= 0)
		{
			timer = 2;
			styleNo++;
			if (styleNo >= 3)
				styleNo = 0;
			style = switch (styleNo) 
			{
				case 0: FlxAxes.XY;
				case 1: FlxAxes.X;
				case _: FlxAxes.Y;
			}
			
			FlxG.camera.shake(0.05, 0.5, null, true, style);
		}
		
		super.update(elapsed);
	}
}
