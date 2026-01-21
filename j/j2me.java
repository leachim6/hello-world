import javax.microedition.lcdui.*;
import javax.microedition.midlet.*;

public class HelloMIDlet extends MIDlet {
	private Display display;
	private Form helloFrm;

	public HelloMIDlet() {
		helloFrm = new Form("Hello world");
	}

	protected void startApp() {
		display = Display.getDisplay(this);
		display.setCurrent(helloFrm);
	}

	protected void pauseApp() {
	}

	protected void destroyApp(boolean unconditional) {
	}
}
