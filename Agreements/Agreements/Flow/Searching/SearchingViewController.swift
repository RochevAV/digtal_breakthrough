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
    
    mutating func toggle() {
        switch self {
        case .agreement:
            self = .users
        case .users:
            self = .agreement
        }
    }
}

class SearchingViewController: UIViewController {

    // MARK: - Internal Properties
    
    var mode: SearchingMode = .agreement {
        didSet {
            if mode == .agreement {
                items = AgreementsDataSource.agreements()
            } else {
                items = UsersDataSource.users()
            }
            
        }
    }
    
    // MARK: - Private Properties
    
    var items = [Any]() {
        didSet {
            if let tableView = tableView {
                tableView.reloadData()
            }
        }
    }
    
    @IBOutlet private weak var tableView: UITableView!
    private var segmentControl: UISegmentedControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureNavigationBar()        
    }
    
    // MARK: - Private Methods
    
    private func configureTableView() {
        tableView.estimatedRowHeight = 200
        tableView.rowHeight = UITableView.automaticDimension
    }
    
    func configureNavigationBar() {
        let segmentControl = UISegmentedControl(items: ["Поиск соглашений", "Поиск пользователей"])
        segmentControl.selectedSegmentIndex = mode == .agreement ? 0 : 1
        segmentControl.tintColor = UIColor.Main.blueBackround
        segmentControl.addTarget(self, action: #selector(togleSearchMode(sender:)), for: .valueChanged)
        self.segmentControl = segmentControl
        navigationItem.titleView = segmentControl
    }
    
    // MARK: - Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == String.Main.Segue.detailAgreements, let detailViewController = segue.destination as? SearchDetailViewController, let index = tableView.indexPathForSelectedRow?.row {
            if let agreement = items[index] as? Agreement {
                detailViewController.agreement = agreement
            }
        }
        if segue.identifier == String.Main.Segue.detailUser, let detailViewController = segue.destination as? UserDetailViewController, let index = tableView.indexPathForSelectedRow?.row {
            if let user = items[index] as? User {
                detailViewController.user = user
            }
        }
    }
    
    // MARK: - Private Methods
    
    @objc
    private func togleSearchMode(sender: UISegmentedControl) {
        mode.toggle()
    }
}

extension SearchingViewController: UISearchBarDelegate {
    
}

extension SearchingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch mode {
        case .agreement:
            let cell = tableView.dequeueReusableCell(withIdentifier: String.Main.Cell.agreementCell, for: indexPath)
            if  let cell = cell as? AgreementTableViewCell {
                if let agreement = items[indexPath.row] as? Agreement {
                    cell.agreement = agreement
                }
            }
            return cell

        case .users:
            let cell = UITableViewCell()
                if let user = items[indexPath.row] as? User {
                    cell.textLabel?.text = "\(user.firstName) \(user.lastName)"
                }
            return cell
        }
    }
}


extension SearchingViewController: UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch mode {
        case .agreement:
            performSegue(withIdentifier: String.Main.Segue.detailAgreements, sender: self)
        case .users:
            performSegue(withIdentifier: String.Main.Segue.detailUser, sender: self)            
        }
    }
}
