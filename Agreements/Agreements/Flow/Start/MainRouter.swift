//
//  MainRouter.swift
//  Agreements
//
//  Created by Aleksey Rochev on 21.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit

protocol MainRouting {
    func showAuthFlow()
    func showStartFlow()
}

final class MainRouter: UIViewController {
    
    override var storyboard: UIStoryboard {
        return UIStoryboard(name: String.Main.Storyboard.main,
                            bundle: Bundle.main)
    }

    func refreshNavigation() {
        let navigationController = storyboard.initialNavigationViewController()
        view.window?.rootViewController = navigationController
    }
}

// MARK: - MainRouting

extension MainRouter: MainRouting {
    func showAuthFlow() {
        refreshNavigation()
        
    }
    
    func showStartFlow() {
        refreshNavigation()
        
    }
}
