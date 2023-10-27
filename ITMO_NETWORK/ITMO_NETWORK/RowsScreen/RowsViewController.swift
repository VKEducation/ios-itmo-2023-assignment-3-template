import UIKit

class RowsViewController: BaseViewController<RowsView> {

    override func viewDidLoad() {
        super.viewDidLoad()

        customView.set(rows: [
            RowsCellData(text: "1asdasdasd"),
            RowsCellData(text: "2asdasdasd"),
            RowsCellData(text: "3asdasdasd"),
            RowsCellData(text: "4asdasdasd"),
            RowsCellData(text: "5asdasdasd"),
            RowsCellData(text: "6asdasdasdj adskjhf jkasdhf jkhasdjkfh kjasdhf jkhasd jkfhasdkjhfjkasdh fkjhadsjk"),
        ])
        
    }


}
