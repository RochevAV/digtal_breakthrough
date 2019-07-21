//
//  SearchingViewController.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

enum SearchingMode {
    case agreement
    case users
}

class SearchingViewController: UIViewController {

    // MARK: - Internal Properties
    
    var mode: SearchingMode = .agreement
    
    // MARK: - Private Properties
    
    var items = [AgreementCell(description: "Соглашение между участниками хакатона не грубить!",
                               subtext: "Участники хакатона", status: .done),
                 AgreementCell(description: "Соглашение между участниками хакатона о взаимовыручке!",
                               subtext: "Участники хакатона", status: .done),
                 AgreementCell(description: "Соглашение между участниками хакатона победить",
                               subtext: "Участники хакатона", status: .inWork),
                 AgreementCell(description: "Соглашение между участниками хакатона не грубить!",
                               subtext: "Участники хакатона", status: .done),
                 AgreementCell(description: "Соглашение между участниками хакатона о взаимовыручке!",
                               subtext: "Участники хакатона", status: .done),
                 AgreementCell(description: "Соглашение между участниками хакатона победить",
                               subtext: "Участники хакатона", status: .inWork)]
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureTableView()
    }

    // MARK: - Private Methods
    
    private func configureTableView() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200
    }
}

extension SearchingViewController: UISearchBarDelegate {
    
}

extension SearchingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String.Main.Cell.agreementCell, for: indexPath)
        if  let cell = cell as? AgreementTableViewCell {
            cell.model = items[indexPath.row]
        }
    
        return cell
    }
}


extension SearchingViewController: UITableViewDelegate {
    
}
