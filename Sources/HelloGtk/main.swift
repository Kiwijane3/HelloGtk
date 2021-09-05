import Foundation
import Gtk
import GtkKit

Application.run() { (app) in
	let presenter = MainWindowController(application: Application(app))
	let controller = MainController()
	presenter.install(controller: controller)
	presenter.beginPresentation()
}
