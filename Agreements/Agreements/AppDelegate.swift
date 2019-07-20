//
//  AppDelegate.swift
//  Agreements
//
//  Created by Aleksey Rochev on 20.07.2019.
//  Copyright © 2019 Rochev Studio. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }

}

