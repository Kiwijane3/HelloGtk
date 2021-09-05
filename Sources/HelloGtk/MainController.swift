import Foundation
import GtkKit

class MainController: WidgetController {
	
	public override var bundle: Bundle {
		return Bundle.module
	}
	
	public override var widgetName: String? {
		return "main"
	}
	
	public override func widgetDidLoad() {
		print(Bundle.main.path(forResource: "ui", ofType: ".glade"))
	}
	
}
