
package ;

import flixel.FlxGame;

class TheGame extends FlxGame
{

    override private function onFocus(_):Void
    {
        // #if flash
        // if (!_lostFocus) 
        // {
        //     return; // Don't run this function twice (bug in standalone flash player)
        // }
        // #end
        
        // #if desktop
        // // make sure the on focus event doesn't fire on startup 
        // if (!_onFocusFiredOnce)
        // {
        //     _onFocusFiredOnce = true;
        //     return;
        // }
        // #end
        
        // _lostFocus = false;
        // FlxG.signals.focusGained.dispatch();
        
        // if (!FlxG.autoPause) 
        // {
        //     _state.onFocus();
        //     return;
        // }
        
        // #if !FLX_NO_FOCUS_LOST_SCREEN
        // if (_focusLostScreen != null)
        // {
        //     _focusLostScreen.visible = false;
        // }
        // #end 
        
        // #if !FLX_NO_DEBUG
        // debugger.stats.onFocus();
        // #end
        
        // stage.frameRate = FlxG.drawFramerate;
        // #if !FLX_NO_SOUND_SYSTEM
        // FlxG.sound.onFocus();
        // #end
        // FlxG.inputs.onFocus();
    }
    
    override private function onFocusLost(_):Void
    {
        // #if flash
        // if (_lostFocus) 
        // {
        //     return; // Don't run this function twice (bug in standalone flash player)
        // }
        // #end
        
        // _lostFocus = true;
        // FlxG.signals.focusLost.dispatch();
        
        // if (!FlxG.autoPause) 
        // {
        //     _state.onFocusLost();
        //     return;
        // }
        
        // #if !FLX_NO_FOCUS_LOST_SCREEN
        // if (_focusLostScreen != null)
        // {
        //     _focusLostScreen.visible = true;
        // }
        // #end 
        
        // #if !FLX_NO_DEBUG
        // debugger.stats.onFocusLost();
        // #end
        
        // stage.frameRate = focusLostFramerate;
        // #if !FLX_NO_SOUND_SYSTEM
        // FlxG.sound.onFocusLost();
        // #end
        // FlxG.inputs.onFocusLost();
    }

}