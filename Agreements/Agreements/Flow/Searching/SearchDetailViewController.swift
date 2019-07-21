//
//  SearchDetailViewController.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit


class SearchDetailViewController: UIViewController {

    private enum Constants {
        static let numberFields = 3
    }
    
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
    private var titleView: UIView?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureNavigationController()
    }
    
    private func configureNavigationController() {
    }
    
    private func configureTableView() {
        tableView.estimatedRowHeight = 200
        tableView.rowHeight = UITableView.automaticDimension
    }
    
}

extension SearchDetailViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Статус"
        case 1:
            return "Параметры"
        default:
            return "Критерии"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return Constants.numberFields
        default:
            return agreement?.agreements.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String.Main.Cell.statusViewCell, for: indexPath)
            if let cell = cell as? StatusTableViewCell {
                cell.status = agreement?.status ?? .clear
            }
            return cell
        } else
        if indexPath.section == 1 {
            if row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: String.Main.Cell.textViewCell, for: indexPath)
                if let cell = cell as? TextViewCell {
                    cell.agreement = agreement?.description
                }
                return cell
            }
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell")
            if row == 1 {
                cell.textLabel?.text = String(format: "%@ - %@", agreement?.beginDate ?? "", agreement?.endDate ?? "")
                cell.detailTextLabel?.text = "Предварительные данные"
            } else if row == 2 {
                cell.textLabel?.text = String(format: "%@ - %@", agreement?.beginDate ?? "", agreement?.endDate ?? "")
                cell.detailTextLabel?.text = "Фактическая дата подписи"
            }
            return cell
        }
        let cell = UITableViewCell()
        cell.textLabel?.text = agreement?.agreements[indexPath.row].description ?? ""
        return cell
    }
    
}

extension SearchDetailViewController: UITableViewDelegate {
    
}


