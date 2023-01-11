import UIKit

class MemoTableViewCell: UITableViewCell {
	//MARK: - properties
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var subtitleLabel: UILabel!
	
	let formatter: DateFormatter = {
		let f = DateFormatter()
		f.dateStyle = .long
		f.timeStyle = .short
		f.locale = Locale(identifier: "Ko_kr")
		return f
	}()
	
	//MARK: - func
	func configure(_ memo: Memo) {
		titleLabel.text = memo.content
		subtitleLabel.text = formatter.string(from: memo.insertDate)
	}
}
