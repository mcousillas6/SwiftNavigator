//
//  RegisterViewController.swift
//  SwiftNavigator_Example
//
//  Created by Mauricio Cousillas on 2/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
  var username: String? {
    didSet {
      usernameField.text = username
    }
  }

  private let usernameField = UITextField()
  private let passwordField = UITextField()
  private let confirmPasswordField = UITextField()
  private let loginButton = UIButton(type: .system)
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
    stackView.addArrangedSubview(loginButton)
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

    confirmPasswordField.placeholder = "Confirm Password"
    confirmPasswordField.backgroundColor = .white
    confirmPasswordField.borderStyle = .roundedRect

    loginButton.setTitle("Back to Login", for: .normal)
    loginButton.addTarget(self, action: #selector(loginTapped), for: .touchDown)

    view.addSubview(stackView)
    NSLayoutConstraint.activate(constraints)
  }

  @objc
  func loginTapped() {
    AppNavigator.sharedInstance.pop()
  }
}
