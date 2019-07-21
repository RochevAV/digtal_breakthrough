//
//  StatusTableViewCell.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

class StatusTableViewCell: UITableViewCell {

    // MARK: Public Properties
    
    var status = Agreement.Status.clear {
        didSet {
            if let indicator = indicator {
                indicator.status = status
            }
        }
    }
    
    // MARK: Private Properties
    
    @IBOutlet private weak var indicator: ColoredIndicator!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    // MARK: Private Methods
    
    private func configure() {
//        indicator.status = status
    }
}
