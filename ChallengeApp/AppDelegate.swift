//
//  AppDelegate.swift
//  ChallengeApp
//
//  Created by Matias on 01/07/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        let initialController = BaseNavigationController(rootViewController: MainViewController())
        let initialview = initialController
        
        window.rootViewController = initialview
        window.overrideUserInterfaceStyle = .light
        window.makeKeyAndVisible()
        
        return true
    }

}
