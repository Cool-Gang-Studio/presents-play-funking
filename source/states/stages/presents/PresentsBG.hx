package states.stages.presents;

class PresentsBG extends BaseStage
{
	var obama:BGSprite = null;
	override function create()
	{
		var white:FlxSprite = new FlxSprite(-FlxG.width, -FlxG.height);
		white.makeGraphic(FlxG.width * 4, FlxG.height * 4, 0xFFFFFFFF);
		add(white);

		var biden:BGSprite = new BGSprite('backgrounds/presents/biden-bg', -350, 0, 0, 0);
		biden.scale.set(2.8, 1.6);
		biden.updateHitbox();
		add(biden);

		obama = new BGSprite('backgrounds/presents/obama-bg', -150, -100, 0, 0);
		obama.scale.set(5.8, 3.0);
		obama.updateHitbox();
		add(obama);
	}

	override function update(elapsed:Float)
	{
		if (obama != null) {
			if (dad.curCharacter == 'presents-obama') obama.visible = true;
			if (dad.curCharacter == 'presents-joe') obama.visible = false;
		}
	}
}