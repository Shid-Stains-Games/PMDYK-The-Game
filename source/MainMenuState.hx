package;

import flixel.FlxG;
import flixel.FlxState;

class MainMenuState extends FlxState
{
	override public function create()
	{
		super.create();

		var stuff = new flixel.text.FlxText(0, 0, 0, "The Main Menu State", 22);
		stuff.screenCenter();
		add(stuff);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		if (FlxG.keys.pressed.ESCAPE)
		{
			FlxG.switchState(new TitleState());
		}
		else if (FlxG.keys.pressed.ENTER)
		{
			FlxG.switchState(new TestGameState());
		}
	}
}
