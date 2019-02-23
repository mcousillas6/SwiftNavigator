//
//  DashboardViewController.swift
//  SwiftNavigator_Example
//
//  Created by Mauricio Cousillas on 2/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {
  private let titleLabel = UILabel()
  private let logout = UIButton(type: .system)

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    setupViews()
  }

  private func setupViews() {
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    logout.translatesAutoresizingMaskIntoConstraints = false

    let constraints = [
      titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24),
      titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24),
      titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      logout.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
      logout.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor),
    ]

    titleLabel.text = "Dashboard"
    titleLabel.textAlignment = .center
    titleLabel.font = UIFont.boldSystemFont(ofSize: UIFont.buttonFontSize)
    titleLabel.textColor = .red

    logout.addTarget(self, action: #selector(logoutTapped), for: .touchDown)
    logout.setTitle("Logout", for: .normal)

    view.addSubview(titleLabel)
    view.addSubview(logout)
    NSLayoutConstraint.activate(constraints)
  }

  @objc
  func logoutTapped() {
    AppNavigator.sharedInstance.navigate(to: AuthRoutes.login(username: AppDelegate.getUserNameFromDefaults()), with: .changeRoot)
  }
}
