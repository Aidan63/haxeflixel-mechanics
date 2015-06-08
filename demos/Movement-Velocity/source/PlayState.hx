package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	
	private var _sprTest:FlxSprite;
	
	override public function create():Void
	{
		super.create();
		
		FlxG.autoPause = false;
		
		_sprTest = new FlxSprite();
		_sprTest.makeGraphic(32, 32);
		_sprTest.setPosition( -32, -32);
		add(_sprTest);
		
		
		_sprTest.velocity.set(100, 100);
		
		trace(_sprTest.maxVelocity);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (_sprTest.x > FlxG.width || _sprTest.y > FlxG.height)
			_sprTest.setPosition( -32, -32);
	}	
}