//
//  AgreementTableViewCell.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

struct AgreementCell {
    let description: String
    let subtext: String
    let status: ColoredIndicator.Status
}

class AgreementTableViewCell: UITableViewCell {

    // MARK: - Public Properties
    
    var model: AgreementCell? {
        didSet {
            configure()
        }
    }
    
    // MARK: - Private Properties
    
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var subtextLabel: UILabel!
    @IBOutlet private weak var indicator: ColoredIndicator!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    // MARK: - Private Methods
    
    private func configure() {
        guard let model = model else {
            return
        }
        descriptionLabel.text = model.description
//        subtextLabel.text = model.subtext
//        indicator.status = model.status
    }

}
