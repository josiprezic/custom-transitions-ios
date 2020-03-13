//
//  AppDelegate.swift
//  custom-transitions-ios
//
//  Created by Josip Rezic on 13/03/2020.
//  Copyright © 2020 Josip Rezic. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    //
    // MARK: - Properties
    //
    
    var window: UIWindow?
    
    //
    // MARK: - Methods
    //

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        let viewController = ViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

