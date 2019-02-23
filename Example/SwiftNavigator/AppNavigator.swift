//
//  AppNavigator.swift
//  SwiftNavigator_Example
//
//  Created by Mauricio Cousillas on 2/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import SwiftNavigator

class AppNavigator: BaseNavigator {
  static let sharedInstance = AppNavigator() // We keep a singleton reference so we don't lose our only pointer to the whole nav stack.

  init() {
    let initialRoute: Route = AuthRoutes.login(username: AppDelegate.getUserNameFromDefaults())
    super.init(with: initialRoute)
  }

  required init(with route: Route) {
    super.init(with: route)
  }
}
