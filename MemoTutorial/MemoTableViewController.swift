import UIKit

class MemoTableViewController: UITableViewController {
	//MARK: - Properties
	
	var token: NSObjectProtocol?
	
	deinit {
		if let token = token {
			NotificationCenter.default.removeObserver(token)
		}
	}
	
	//MARK: - Lifecycle
	override func viewDidLoad() {
		super.viewDidLoad()
		
		token = NotificationCenter.default.addObserver(forName: NewMemoViewController.newMemoDidInsert, object: nil, queue: OperationQueue.main) { [weak self] notification in
			self?.tableView.reloadData()
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) {
			if let vc = segue.destination as? MemoDetailViewController {
				vc.memo = Memo.dummyMemoList[indexPath.row]
			}
		}
	}
	
	// 화면에 표시되기 직전에 실행 : 목록 업데이트
	// override func viewWillAppear(_ animated: Bool) {
		// super.viewWillAppear(animated)
		
		// tableView.reloadData() // full screen segue일 때 사용 가능
	// }
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
	
//	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//		print(Memo.dummyMemoList[indexPath.row].content)
//	}
}


