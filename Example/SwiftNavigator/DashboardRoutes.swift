//
//  DashboardRoutes.swift
//  SwiftNavigator_Example
//
//  Created by Mauricio Cousillas on 2/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import SwiftNavigator

enum DashboardRoutes: Route {
  case dashboard

  var screen: UIViewController {
    switch self {
    case .dashboard:
      let vc = DashboardViewController()
      return vc
    }
  }
}
