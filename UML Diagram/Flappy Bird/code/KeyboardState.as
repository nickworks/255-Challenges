package code {
	import flash.events.KeyboardEvent;
	import flash.display.Stage;
	
	public class KeyboardState {

		public static var keySpace:Boolean = false;
		public static var keySpacePrev:Boolean = false;
		
		
		public static function setup(stage:Stage) {
			stage.addEventListener(KeyboardEvent.KEY_DOWN, handleKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, handleKeyUp);
		}
		public static function update():void {
			keySpacePrev = keySpace;
		}
		private static function changeKey(keyCode:uint, isDown:Boolean):void {
			if(keyCode == 32) keySpace = isDown;
		}
		private static function handleKeyDown(e:KeyboardEvent):void {
			changeKey(e.keyCode, true);
		}
		private static function handleKeyUp(e:KeyboardEvent):void {
			changeKey(e.keyCode, false);
		}

	}
	
}
