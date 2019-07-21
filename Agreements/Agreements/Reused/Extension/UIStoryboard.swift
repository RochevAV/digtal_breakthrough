//
//  UIStoryboard.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

extension UIStoryboard {
    func initialNavigationViewController() -> UINavigationController {
        guard let navigationController = self.instantiateInitialViewController() as? UINavigationController else {
            fatalError("Can't load NavigationViewController from storyboard, check that controller is initial view controller")
        }
        return navigationController
    }
}
