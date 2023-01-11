import UIKit

class MemoTableViewController: UITableViewController {
	//MARK: - Properties
	
	//MARK: - Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
}



//MARK: - delegate
extension MemoTableViewController {
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return Memo.dummyMemoList.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "memoCell", for: indexPath) as? MemoTableViewCell else { return UITableViewCell() }
		cell.configure(Memo.dummyMemoList[indexPath.row])
		cell.selectionStyle = .none
		return cell
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print(Memo.dummyMemoList[indexPath.row].content)
	}
}

