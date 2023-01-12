import UIKit

class NewMemoViewController: UIViewController {
	//MARK: - Properties

	@IBOutlet weak var textView: UITextView!

	//MARK: - Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		textView.backgroundColor = .lightGray
	}

	//MARK: - func
	
	//MARK: - action
	@IBAction func cancelButtonTap(_ sender: UIButton) {
		dismiss(animated: true)
	}


	@IBAction func saveButtonTap(_ sender: UIButton) {

		guard let newMemo = textView.text, newMemo.count > 0 else {
			alert(title: "Cannot save empty memo", message: "Please fill some memo and try again")
			return
		}

		let new = Memo(content: newMemo)

		Memo.dummyMemoList.append(new) // 배열에 새로운 데이터를 넣어도 테이블뷰 업데이트를 자동으로 해주지 않는다.

		NotificationCenter.default.post(name: NewMemoViewController.newMemoDidInsert, object: nil)

		dismiss(animated: true)

	}
}


extension NewMemoViewController {
	static let newMemoDidInsert = Notification.Name("newMemoInsert")
}

