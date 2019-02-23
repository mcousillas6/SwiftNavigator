//
//  LoginViewController.swift
//  SwiftNavigator
//
//  Created by Mauricio Cousillas on 02/23/2019.
//  Copyright (c) 2019 Mauricio Cousillas. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  var username: String? {
    didSet {
      usernameField.text = username
    }
  }

  private let usernameField = UITextField()
  private let passwordField = UITextField()
  private let registerButton = UIButton(type: .system)
  private let submit = UIButton(type: .system)
  private let stackView = UIStackView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    setupViews()
  }

  private func setupViews() {
    stackView.translatesAutoresizingMaskIntoConstraints = false

    let constraints = [
      stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24),
      stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24),
      stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      usernameField.heightAnchor.constraint(equalToConstant: 44),
      passwordField.heightAnchor.constraint(equalToConstant: 44),
    ]

    stackView.addArrangedSubview(usernameField)
    stackView.addArrangedSubview(passwordField)
    stackView.addArrangedSubview(submit)
    stackView.addArrangedSubview(registerButton)
    stackView.distribution = .equalCentering
    stackView.alignment = .fill
    stackView.axis = .vertical
    stackView.spacing = 16

    usernameField.placeholder = "Username"
    usernameField.backgroundColor = .white
    usernameField.borderStyle = .roundedRect
    passwordField.placeholder = "Password"
    passwordField.backgroundColor = .white
    passwordField.borderStyle = .roundedRect

    submit.setTitle("Submit", for: .normal)
    submit.addTarget(self, action: #selector(submitTapped), for: .touchDown)
    submit.backgroundColor = .white

    registerButton.setTitle("Go to Register", for: .normal)
    registerButton.addTarget(self, action: #selector(registerTapped), for: .touchDown)

    view.addSubview(stackView)
    NSLayoutConstraint.activate(constraints)
  }

  @objc
  func registerTapped() {
    AppNavigator.sharedInstance.navigate(to: AuthRoutes.register, with: .push)
  }

  @objc
  func submitTapped() {
    AppNavigator.sharedInstance.navigate(to: DashboardRoutes.dashboard, with: .changeRoot)
  }
}
