package {

import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFieldAutoSize;
import flash.text.TextFormat;

[SWF(width='800', height='600', backgroundColor='#cccccc', frameRate='30')]

	public class HelloFlash extends Sprite
	{
		public function HelloFlash()
		{
			var format:TextFormat = new TextFormat();
			format.font = "Arial";
			format.size = 20;
			format.color = 0x0000;

			var textField:TextField = new TextField();
			textField.defaultTextFormat = format;

			textField.border = false;
			textField.autoSize = TextFieldAutoSize.LEFT;
			textField.selectable = false;

			textField.text = "Hello World";
			addChild(textField);


		}
	}
}
