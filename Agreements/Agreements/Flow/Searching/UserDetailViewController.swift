//
//  UserDetailViewController.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {

    // MARK: - Internal Properties
    
    var user: User? {
        didSet {
            configure()
        }
    }
    
    // MARK: - Private Properties
    
    @IBOutlet private weak var firsNameLabel: UILabel!
    @IBOutlet private weak var lastNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        if let firsNameLabel = firsNameLabel, let lastNameLabel = lastNameLabel {
            firsNameLabel.text = user?.firstName
            lastNameLabel.text = user?.lastName
        }
    }

}
