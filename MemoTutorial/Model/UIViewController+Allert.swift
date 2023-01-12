import UIKit

extension UIViewController {
	
	/// 경고창 띄우는 메소드
	/// - Parameters:
	///   - title: 경고창 제목
	///   - message: 경고창 내용
	func alert(title: String = "Notice", message: String) {
		
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		
		let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
		
		alert.addAction(okAction)
		
		present(alert, animated: true)
		
	}
}
