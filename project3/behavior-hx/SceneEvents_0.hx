package scripts;

import com.stencyl.graphics.G;
import com.stencyl.graphics.BitmapWrapper;

import com.stencyl.behavior.Script;
import com.stencyl.behavior.Script.*;
import com.stencyl.behavior.ActorScript;
import com.stencyl.behavior.SceneScript;
import com.stencyl.behavior.TimedTask;

import com.stencyl.models.Actor;
import com.stencyl.models.GameModel;
import com.stencyl.models.actor.Animation;
import com.stencyl.models.actor.ActorType;
import com.stencyl.models.actor.Collision;
import com.stencyl.models.actor.Group;
import com.stencyl.models.Scene;
import com.stencyl.models.Sound;
import com.stencyl.models.Region;
import com.stencyl.models.Font;
import com.stencyl.models.Joystick;

import com.stencyl.Engine;
import com.stencyl.Input;
import com.stencyl.Key;
import com.stencyl.utils.Utils;

import openfl.ui.Mouse;
import openfl.display.Graphics;
import openfl.display.BlendMode;
import openfl.display.BitmapData;
import openfl.display.Bitmap;
import openfl.events.Event;
import openfl.events.KeyboardEvent;
import openfl.events.TouchEvent;
import openfl.net.URLLoader;

import box2D.common.math.B2Vec2;
import box2D.dynamics.B2Body;
import box2D.dynamics.B2Fixture;
import box2D.dynamics.joints.B2Joint;
import box2D.collision.shapes.B2Shape;

import motion.Actuate;
import motion.easing.Back;
import motion.easing.Cubic;
import motion.easing.Elastic;
import motion.easing.Expo;
import motion.easing.Linear;
import motion.easing.Quad;
import motion.easing.Quart;
import motion.easing.Quint;
import motion.easing.Sine;

import com.stencyl.graphics.shaders.BasicShader;
import com.stencyl.graphics.shaders.GrayscaleShader;
import com.stencyl.graphics.shaders.SepiaShader;
import com.stencyl.graphics.shaders.InvertShader;
import com.stencyl.graphics.shaders.GrainShader;
import com.stencyl.graphics.shaders.ExternalShader;
import com.stencyl.graphics.shaders.InlineShader;
import com.stencyl.graphics.shaders.BlurShader;
import com.stencyl.graphics.shaders.SharpenShader;
import com.stencyl.graphics.shaders.ScanlineShader;
import com.stencyl.graphics.shaders.CSBShader;
import com.stencyl.graphics.shaders.HueShader;
import com.stencyl.graphics.shaders.TintShader;
import com.stencyl.graphics.shaders.BloomShader;



class SceneEvents_0 extends SceneScript
{
	public var _blurRadius:Float;
	public var _s:Dynamic;
	
	
	public function new(dummy:Int, dummy2:Engine)
	{
		super();
		nameMap.set("blurRadius", "_blurRadius");
		_blurRadius = 0.0;
		nameMap.set("s", "_s");
		
	}
	
	override public function init()
	{
		
		/* ======================== When Creating ========================= */
		/* This prevents the Hero from freezing if
he exits the screen. */
		getActor(1).makeAlwaysSimulate();
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(2) == event.otherActor))
			{
				recycleActor(getActor(2));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") + 1));
			}
		});
		
		/* ========================= When Drawing ========================= */
		addWhenDrawingListener(null, function(g:G, x:Float, y:Float, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled)
			{
				g.drawString("" + Engine.engine.getGameAttribute("score"), 62, 47);
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(3) == event.otherActor))
			{
				recycleActor(getActor(3));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") + 1));
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(4) == event.otherActor))
			{
				recycleActor(getActor(4));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") + 1));
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(5) == event.otherActor))
			{
				recycleActor(getActor(5));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") + 1));
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(6) == event.otherActor))
			{
				recycleActor(getActor(6));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") + 1));
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(7) == event.otherActor))
			{
				recycleActor(getActor(7));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") + 1));
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(8) == event.otherActor))
			{
				recycleActor(getActor(8));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") - 1));
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(9) == event.otherActor))
			{
				recycleActor(getActor(9));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") - 1));
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(10) == event.otherActor))
			{
				recycleActor(getActor(10));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") - 1));
			}
		});
		
		/* ======================== Specific Actor ======================== */
		addCollisionListener(getActor(1), function(event:Collision, list:Array<Dynamic>):Void
		{
			if(wrapper.enabled && (getActor(11) == event.otherActor))
			{
				getLastCreatedActor().setFilter([createTintFilter(Utils.getColorRGB(255,0,0), 30/100)]);
				recycleActor(getActor(11));
				playSound(getSound(47));
				Engine.engine.setGameAttribute("score", (Engine.engine.getGameAttribute("score") - 1));
			}
		});
		
	}
	
	override public function forwardMessage(msg:String)
	{
		
	}
}