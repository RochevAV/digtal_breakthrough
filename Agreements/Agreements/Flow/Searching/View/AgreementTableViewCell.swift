//
//  AgreementTableViewCell.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

class AgreementTableViewCell: UITableViewCell {

    // MARK: - Public Properties
    
    var agreement: Agreement? {
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
    }

    // MARK: - Private Methods
    
    private func configure() {
        guard let agreement = agreement,
            let descriptionLabel = descriptionLabel,
        let subtextLabel = subtextLabel,
        let indicator = indicator else {
            return
        }
        descriptionLabel.text = agreement.description
        descriptionLabel.sizeToFit()
        subtextLabel.text = agreement.subtext
        indicator.status = agreement.status
    }

}
