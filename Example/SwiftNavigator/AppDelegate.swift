//
//  AppDelegate.swift
//  SwiftNavigator
//
//  Created by Mauricio Cousillas on 02/23/2019.
//  Copyright (c) 2019 Mauricio Cousillas. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  static let usernameKey = "com.swiftnavigator.example.username"
  var window: UIWindow?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    let rootVC = AppNavigator.sharedInstance.rootViewController
    window?.rootViewController = rootVC
    window?.makeKeyAndVisible()
    return true
  }

  static func getUserNameFromDefaults() -> String? {
    return UserDefaults.standard.string(forKey: AppDelegate.usernameKey) ?? "John@sample.com"
  }

  static func saveUserNameOnDefaults(username: String) {
    UserDefaults.standard.set(username, forKey: usernameKey)
  }
}
