//
//  ViewController.swift
//  StackViewProject
//
//  Created by MAC on 8/24/20.
//  Copyright © 2020 PaulRenfrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let usernameLabel = UILabel()
    usernameLabel.text = "Username"
    let passwordLabel = UILabel()
    passwordLabel.text = "Password"
    let usernameTextField = UITextField()
    usernameTextField.borderStyle = .roundedRect
    let passwordTextField = UITextField()
    passwordTextField.borderStyle = .roundedRect
    let loginButton = UIButton()
    loginButton.setTitle("Login", for: .normal)
    loginButton.setTitleColor(.blue, for: .normal)
    
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .vertical
    stackView.spacing = 40
    self.view.addSubview(stackView)
    stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    
    let usernameStackView = UIStackView()
    usernameStackView.axis = .horizontal
    usernameStackView.spacing = 20
    usernameStackView.addArrangedSubview(usernameLabel)
    usernameStackView.addArrangedSubview(usernameTextField)
    
    stackView.addArrangedSubview(usernameStackView)
    
    let passwordStackView = UIStackView()
    passwordStackView.axis = .horizontal
    passwordStackView.spacing = 20
    passwordStackView.addArrangedSubview(passwordLabel)
    passwordStackView.addArrangedSubview(passwordTextField)
    
    stackView.addArrangedSubview(passwordStackView)
    
    stackView.addArrangedSubview(loginButton)
    
    usernameTextField.widthAnchor.constraint(equalToConstant: 150).isActive = true
    passwordTextField.widthAnchor.constraint(equalToConstant: 150).isActive = true
  }
}

