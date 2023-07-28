package states.stages.presents;

#if desktop
import flixel.input.keyboard.FlxKey;
#end

class Park extends BaseStage
{
	var boppingObjects:Array<BGSprite> = [];
	var sleepyJoe:BGSprite = null;

	override function create()
	{
		var stageback:BGSprite = new BGSprite('backgrounds/presents/park', -1600, -1700, 0.9, 0.9);
		stageback.scale.set(1.7, 1.7);
		stageback.updateHitbox();
		add(stageback);

		var bgObama:BGSprite = new BGSprite('characters/Obam', 1050, 350, 0.9, 0.9, ['Idle'], false);
		bgObama.scale.set(1.5, 1.5);
		boppingObjects.push(bgObama);

		var bgTrump:BGSprite = new BGSprite('characters/Trump', 250, 330, 0.9, 0.9, ['Idle'], false);
		bgTrump.scale.set(0.9, 0.9);
		boppingObjects.push(bgTrump);

		var bgBiden:BGSprite = new BGSprite('characters/bidon', -150, 350, 0.9, 0.9, ['Idle'], false);
		bgBiden.scale.set(1.5, 1.5);
		boppingObjects.push(bgBiden);

		for (i in 0...boppingObjects.length) {
			boppingObjects[i].updateHitbox();
			boppingObjects[i].visible = false;
			add(boppingObjects[i]);
		}

		sleepyJoe = new BGSprite('characters/bidon', -150, 250, 0.9, 0.9);
		sleepyJoe.frames = Paths.getSparrowAtlas('characters/bidon');
		sleepyJoe.animation.addByPrefix('Amimir', 'Amimir', 12, true);
		sleepyJoe.scrollFactor.set(0.9, 0.9);
		sleepyJoe.scale.set(1.7, 1.7);
		sleepyJoe.visible = false;
		add(sleepyJoe);
	}

	override function update(elapsed:Float)
	{
		boppingObjects[0].visible = (dad.curCharacter != 'obama'); // Obama
		boppingObjects[1].visible = (dad.curCharacter != 'trump'); // Trump
		boppingObjects[2].visible = (dad.curCharacter != 'joe' && !sleepyJoe.visible); // Biden (normal)
		sleepyJoe.visible = (dad.curCharacter == 'obama'); // Biden (sleepy)
	}

	override function beatHit()
	{
		for (bopObj in boppingObjects)
			if (bopObj != null)
				bopObj.dance(true);
	}
}