package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class PsychForeverSettingsSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Psych Forever Settings';
		rpcTitle = 'Psych Forever Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Memory',
		'If checked, The game will display the memory (FPS Counter must be enabled)',
		'memorylevel',
		'bool',
		true);
		addOption(option);

		var option:Option = new Option('Late Damage',
		'If checked, Getting bads and shits will hurt you\nAs well shits making you miss\n(Not Reccomended for some songs)',
		'lateDamage',
		'bool',
		false);
		addOption(option);

		var option:Option = new Option('Anti-Mash',
		'If checked, Mashing will make you miss\n(Not Reccomended for some songs)',
		'lateDamage',
		'bool',
		false);
		addOption(option);

	/*	var option:Option = new Option('Reduced Movements',
		'If checked, The screen will have less movements. This can reduce motion sickness or increase performance.\n(VERY UNFINISHED)',
		'reducedmovements',
		'bool',
		false);
		addOption(option);*/

		var option:Option = new Option('Song Watermarks',
		'If checked, It will show the song info on the bottom right, as well with credits.',
		'watermarks',
		'bool',
		true);
		addOption(option);

		var option:Option = new Option('Long Note Healing',
		'If checked, long notes will heal you.',
		'longnoteheal',
		'bool',
		true);
		addOption(option);

		var option:Option = new Option('Opponent Note Splashes',
		'If checked, opponent will have note splashes.\n(Note Splashes must be enabled for this to work!)',
		'opponentsplash',
		'bool',
		true);
		addOption(option);
		
	/*	var option:Option = new Option('Debug Mode',
		'If checked, You are able to use chart editor and stuff like that. Not Reccomended for Normal Gameplay',
		'debugmode',
		'bool',
		false);
		addOption(option);
	*/

		super();
	}
}