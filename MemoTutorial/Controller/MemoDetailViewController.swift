import UIKit

class MemoDetailViewController: UIViewController {
	//MARK: - Properties

	@IBOutlet weak var detailTableView: UITableView!

	var memo: Memo?
	
	let formatter: DateFormatter = {
		let f = DateFormatter()
		f.dateStyle = .long
		f.timeStyle = .short
		f.locale = Locale(identifier: "Ko_kr")
		return f
	}()



	//MARK: - Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()

		detailTableView.dataSource = self

	}
}


extension MemoDetailViewController: UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 2
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		switch indexPath.row {
		case 0:
			let cell = tableView.dequeueReusableCell(withIdentifier: "memoDetailCell", for: indexPath)
			var content = cell.defaultContentConfiguration()
			content.text = memo?.content
			cell.selectionStyle = .none
			cell.contentConfiguration = content
			return cell
		case 1:
			let cell = tableView.dequeueReusableCell(withIdentifier: "dateCell", for: indexPath)
			var content = cell.defaultContentConfiguration()
			content.text = formatter.string(from: memo?.insertDate ?? Date())
			content.textProperties.font = UIFont(name: "Avenir Next", size: 12)!
			content.textProperties.color = .lightGray
			content.textProperties.alignment = .center
			cell.selectionStyle = .none
			cell.contentConfiguration = content
			return cell
		default:
			return UITableViewCell()
		}
	}

}
