package;

import flash.text.Font;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the actual gameplay.
 */


@:font("assets/fonts/PressStart2P.ttf") class FpressStart extends Font {}

class PlayState extends FlxState
{

    private var _clock_txt:FlxText;
    private var _desc_txt:FlxText;
    private var _offset:Int;

    private var _now:Date;

    private var _h:String;
    private var _m:String;
    private var _s:String;

// #if js
    private var _pressStart:Font;
// #end


    /**
     * Function that is called up when to state is created to set it up. 
     */
    override public function create():Void
    {
        super.create();

        Font.registerFont(FpressStart);
        // FpressStart = Assets.getFont("assets/fonts/PressStart2P.ttf");

        bgColor = 0xff111111;
        persistentUpdate = true;
        persistentDraw = true;
        FlxG.mouse.useSystemCursor = true;

        // TODO, configurable
        _offset = -9;

        _clock_txt = new FlxText( 0, 12, FlxG.width, "00:00:00" );
        _clock_txt.setFormat( "assets/fonts/PressStart2P.ttf", 32, 0xFFCCCCCC , "center" );
        _clock_txt.setBorderStyle( FlxText.BORDER_SHADOW, 0xFF000000, 4 );

        _desc_txt = new FlxText( 40, 1, FlxG.width, "Time @ SETI Institute");
        _desc_txt.setFormat( "assets/fonts/PressStart2P.ttf", 8, 0xFF999999 , "left" );

        add(_clock_txt);
        add(_desc_txt);



    }
    
    /**
     * Function that is called when this state is destroyed - you might want to 
     * consider setting all objects this state uses to null to help garbage collection.
     */
    override public function destroy():Void
    {
        super.destroy();
    }

    /**
     * Function that is called once every frame.
     */
    override public function update():Void
    {
        super.update();

        _now = Date.now();

        if( _now.getHours()+_offset >= 24 ){
            _h = Std.string( _now.getHours()+_offset-24 );
        }else if( _now.getHours()+_offset < 0 ){
            _h = Std.string( _now.getHours()+_offset+24 );
        }else{
            _h = Std.string( _now.getHours()+_offset );
        }
        _m = Std.string( _now.getMinutes() );
        _s = Std.string( _now.getSeconds() );

        if( _h.length < 2 ) _h = "0"+_h;
        if( _m.length < 2 ) _m = "0"+_m;
        if( _s.length < 2 ) _s = "0"+_s;

        _clock_txt.text = _h + ":" + _m + ":" + _s;

    }


    // override public function onFocusLost():Void
    // {
    //     trace("lostFocus");
    // }

    // override public function onFocus():Void
    // {
    //     trace("gotFocus");
    // }

}
