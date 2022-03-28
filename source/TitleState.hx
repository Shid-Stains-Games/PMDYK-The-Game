package;

import flixel.FlxG.keys;
import flixel.FlxG;
import flixel.FlxState;

class TitleState extends FlxState
{
	override public function create()
	{
		super.create();

		var stuff = new flixel.text.FlxText(0, 0, 0, "The Title State", 22);
		stuff.screenCenter();
		add(stuff);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.pressed.ENTER)
		{
			FlxG.switchState(new MainMenuState());
		}
	}
}
