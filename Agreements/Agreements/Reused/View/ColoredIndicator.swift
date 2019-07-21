//
//  coloredIndicator.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

class ColoredIndicator: UIView {
    
    // Private Type
    
    private enum Constants {
        static let size = CGSize(width: 20, height: 20)
    }
    
    // MARK: - Public Properties
    
    var status: Agreement.Status = .clear {
        didSet {
            updateColor(for: status)
        }
    }
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = CGRect(origin: frame.origin, size: Constants.size)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.frame = CGRect(origin: frame.origin, size: Constants.size)
        configure()
    }
    
    // MARK: - Private Methods
    
    private func configure() {
        layer.cornerRadius = bounds.height / 2.0
    }

    private func updateColor(for status: Agreement.Status) {
        switch status {
        case .clear:
            backgroundColor = .clear
        case .inWork:
            backgroundColor = .gray
        case .done:
            backgroundColor = .green
        case .warning:
            backgroundColor = .yellow
        }
    }
}
