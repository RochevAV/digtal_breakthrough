//
//  SearchDetailViewController.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit


class SearchDetailViewController: UIViewController {

    // MARK: - Internal Properties
    
    var agreement: Agreement? {
        didSet {
            if let tableView = tableView {
                tableView.reloadData()
            }
        }
    }
    
    // MARK: - Private Properties
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureNavigationController() {
        
//        navigationItem.titleView = segmentControl
    }
    
    private func configureTableView() {
        tableView.estimatedRowHeight = 200
        tableView.rowHeight = UITableView.automaticDimension
    }
    
}

extension SearchDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        if row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String.Main.Cell.textViewCell, for: indexPath)
            if let cell = cell as? TextViewCell {
                cell.agreement = agreement?.description
            }
            return cell
        }
        let cell = UITableViewCell()
        if row == 1 {
            cell.textLabel?.text = String(format: "Плановые даты: %@ - %@", agreement?.beginDate ?? "", agreement?.endDate ?? "")
        } else if row == 2 {
            cell.textLabel?.text = String(format: "Фактическая дата подписи: %@ - %@", agreement?.beginDate ?? "", agreement?.endDate ?? "")
        }
        
        return cell
    }
    
}

extension SearchDetailViewController: UITableViewDelegate {
    
}


