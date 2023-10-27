import UIKit

class RowsView: BaseView {
    private let tableView = UITableView()
    private var rows: [RowsCellData] = []


    required init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white
        tableSetup()
    }

    private func tableSetup() {
        tableView.dataSource = self
        tableView.rowHeight = 50
        tableView.register(RowsCellView.self, forCellReuseIdentifier: RowsCellView.identifier)
        tableView.allowsSelection = false

        tableView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
        ])
    }

    func set(rows: [RowsCellData]) {
        self.rows = rows
        tableView.reloadData()
    }

}


extension RowsView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        rows.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RowsCellView.identifier, for: indexPath) as? RowsCellView else {
            return UITableViewCell()
        }
        let row = rows[indexPath.row]
        cell.configure(row)

        return cell
    }
}
