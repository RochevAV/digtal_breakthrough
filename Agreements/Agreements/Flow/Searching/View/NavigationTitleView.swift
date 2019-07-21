//
//  NavigationTitleView.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

class NavigationTitleView: UIView {

    //MARK: - Private Properties
    
    // FIXME: Надо использовать модели
    
    private var title: String = ""
    private var status: Agreement.Status = .clear
    
    // MARK: Lyfecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - Private Methods
    
    private func configure() {

    }
}
