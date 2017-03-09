package;

import flixel.FlxState;
import flixel.ui.FlxBar;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	override public function create():Void
	{
		bgColor = 0;
		super.create();

		// Two tracker objects with values which the bars will use.
		var tracker1 = new Tracker(0.3);
		var tracker2 = new Tracker(1);

		// Create 4 bars to showcase the different possible styles.
		var barLeft   = new FlxBar(16 , 16 , FlxBarFillDirection.TOP_TO_BOTTOM, 32, 208, tracker1, "value", 0, 100, true);
		var barRight  = new FlxBar(272, 16 , FlxBarFillDirection.BOTTOM_TO_TOP, 32, 208, tracker2, "value", 0, 100, true);
		var barTop    = new FlxBar(64 , 32 , FlxBarFillDirection.LEFT_TO_RIGHT, 192, 32, tracker1, "value", 0, 100, true);
		var barBottom = new FlxBar(64 , 176, FlxBarFillDirection.RIGHT_TO_LEFT, 192, 32, tracker2, "value", 0, 100, true);

		// Change the colours on the basic bar.
		barRight.createColoredEmptyBar(FlxColor.WHITE, true, FlxColor.RED);

		// Create a bar with gradients for the background and filled styles.
		barTop.createGradientBar([FlxColor.WHITE, FlxColor.BLUE], [FlxColor.PINK, FlxColor.PURPLE], 1, 180, true, FlxColor.WHITE);

		// Set an image for the background and foreground of the bar.
		barBottom.createImageBar(AssetPaths.barBackground__png, AssetPaths.barForeground__png);

		add(tracker1);
		add(tracker2);

		add(barLeft);
		add(barRight);
		add(barTop);
		add(barBottom);
	}
}
