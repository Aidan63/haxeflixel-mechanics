package;

import flixel.FlxState;
import flixel.ui.FlxButton;

class PlayState extends FlxState
{
	var button:FlxButton;
	
	override public function create():Void
	{
		bgColor = 0;
		super.create();

		button = new FlxButton(0, 0, "Click me", onButtonClicked);
		button.screenCenter();
		add(button);
	}

	private function onButtonClicked()
	{
		button.text = "Clicked!";
	}
}
