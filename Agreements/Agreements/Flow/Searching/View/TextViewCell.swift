//
//  TextViewCell.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

class TextViewCell: UITableViewCell {

    // MARK: Public Properties
    
    var agreement: String? {
        didSet {
            if let textView = textView {
                textView.text = agreement
            }
        }
    }
    
    // MARK: Private Properties
    
    @IBOutlet private weak var textView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }

    // MARK: Private Methods
    
    private func configure() {
        textView.text = agreement
    }

}
