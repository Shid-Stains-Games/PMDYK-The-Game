package;

import flixel.FlxG.keys;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;

var hits:FlxText;
var timesHit:Int = 0;

class TestGameState extends FlxState
{
	override public function create()
	{
		super.create();

		var stuff = new flixel.text.FlxText(0, 0, 0, "Test stuff or smth", 22);
		var hits = new flixel.text.FlxText(0, 0, 0, "Hits: " + hits, 22);
		stuff.screenCenter();
		hits.y = stuff.y + stuff.height;
		add(stuff);
		add(hits);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.pressed.ENTER)
		{
			FlxG.switchState(new MainMenuState());
		}
		// if D or F or J or K is pressed, add 1 to hits
		if (FlxG.keys.pressed.D || FlxG.keys.pressed.F || FlxG.keys.pressed.J || FlxG.keys.pressed.K)
		{
			timesHit = timesHit + 1;
			hits.text = "Hits: " + timesHit;
		}
	}
}
