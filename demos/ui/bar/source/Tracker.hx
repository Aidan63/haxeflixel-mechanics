package;

import flixel.FlxBasic;

class Tracker extends FlxBasic
{
	var value:Float;
	var itVal:Float;

	public function new(it:Float)
	{
		super();

		value = 0;
		itVal = it;
	}

	override public function update(elapsed:Float)
	{
		// Increases the value by the iterator, keeps it under 100 using mod
		value += itVal;
		value = value % 100;
	}
}
