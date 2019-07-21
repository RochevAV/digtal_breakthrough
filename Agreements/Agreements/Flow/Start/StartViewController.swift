//
//  ViewController.swift
//  Agreements
//
//  Created by Aleksey Rochev on 20.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    //MARK - Public Properties
    
    //MARK - Private Properties
    
    @IBOutlet private weak var agreementsSearchButton: ImageButton!
    @IBOutlet private weak var usersSearchButton: ImageButton!
    
    //MARK - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let searchingViewController = segue.destination as? SearchingViewController {
            if segue.identifier == String.Main.Segue.searchAgreements {
                searchingViewController.mode = .agreement
            }
            else {
                searchingViewController.mode = .users
            }
        }
    }
    
    //MARK - Private Methods
    
    private func configure() {
        agreementsSearchButton.addTarget(self, action: #selector(showAgreementsSearching), for: .touchUpInside)
        usersSearchButton.addTarget(self, action: #selector(showUsersSearching), for: .touchUpInside)
    }
    
    @objc
    private func showAgreementsSearching() {
        performSegue(withIdentifier: String.Main.Segue.searchAgreements, sender: self)
    }
    
    @objc
    private func showUsersSearching() {
        performSegue(withIdentifier: String.Main.Segue.searchUsers, sender: self)
    }

}

