import UIKit

class NewMemoViewController: UIViewController {
	//MARK: - Properties
	
	@IBOutlet weak var textView: UITextView!
	
	
	
	//MARK: - Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}

	//MARK: - func

	
	//MARK: - action
	@IBAction func cancelButtonTap(_ sender: UIButton) {
		dismiss(animated: true)
	}
	
	
	@IBAction func saveButtonTap(_ sender: UIButton) {
		guard let newMemo = textView.text, newMemo.count > 0 else {
			return
		}
		
		
	}
}

