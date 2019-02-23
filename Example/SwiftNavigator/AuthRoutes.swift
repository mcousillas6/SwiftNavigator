//
//  AuthRoutes.swift
//  SwiftNavigator_Example
//
//  Created by Mauricio Cousillas on 2/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import SwiftNavigator

enum AuthRoutes: Route {
  case login(username: String?)
  case register

  var screen: UIViewController {
    /**
     Here you should put all the setup necessary for your viewcontrollers.
     Think of it as a prepareForSegue function.
     */
    switch self {
    case .login(let username):
      let vc = LoginViewController()
      /**
       We are creating an instance of a navcontroller
       because we want to configure it ourselves.
       Otherwise we could let the framework create one for us.
      */
      let navigationController = UINavigationController(rootViewController: vc)
      vc.username = username
      return navigationController
    case .register:
      return RegisterViewController()
    }
  }
}
