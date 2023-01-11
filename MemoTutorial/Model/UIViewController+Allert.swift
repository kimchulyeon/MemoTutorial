import UIKit

extension UIViewController {
	func alert(title: String = "알림", message: String) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
	}
}
