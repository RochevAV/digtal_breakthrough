//
//  UIColor+Main.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

extension UIColor {

    struct Main { }
}

extension UIColor.Main {
    
    static var blueBackround: UIColor {
        return UIColor(hex: "#2762ACFF") ?? .red
    }
}
