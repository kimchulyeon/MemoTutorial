import Foundation

class Memo {
	var content: String
	var insertDate: Date
	
	init(content: String) {
		self.content = content
		self.insertDate = Date()
	}
	
	static var dummyMemoList = [
		Memo(content: "Lorem Ipsum"),
		Memo(content: "IpsumLorem Ipsum1"),
		Memo(content: "Zoutm Ipsum Lorem Ipsum2"),
		Memo(content: "Buz IpsumIpsumLorem Ipsum3"),
		Memo(content: "Powen LoremIpsumIpsum Ipsum4"),
	]
}
