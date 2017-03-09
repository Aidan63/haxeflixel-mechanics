package;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.ui.FlxSpriteButton;

class PlayState extends FlxState
{
	override public function create():Void
	{
		bgColor = 0;
		super.create();

		// Button with a text label
		var button1 = new FlxSpriteButton();
		button1.createTextLabel("Text String!");
		button1.screenCenter();
		button1.y -= 32;
		add(button1);

		// Create a sprite which will be the buttons label
		var label = new FlxSprite();
		label.loadGraphic(AssetPaths.sprite__png);

		// Create a button with the sprite as a label and double its scale size
		var button2 = new FlxSpriteButton(0, 0, label);
		button2.scale.set(2, 2);
		button2.updateHitbox();
		button2.screenCenter();
		button2.y += 32;

		// Center the label on the button
		button2.label.offset.x = -68;
		button2.label.offset.y = -4;
		add(button2);
	}
}
