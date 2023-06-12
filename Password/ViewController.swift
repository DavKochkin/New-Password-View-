//
//  ViewController.swift
//  Password
//
//  Created by David Kochkin on 09.06.2023.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    let newPasswordTextField = PasswordTextField(placeHolder: "New password")
    let stackView = UIStackView()
    let criteriaView = PasswordCriteriaView(text: "uppercase letter (A-Z)")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}


extension OnboardingViewController {
    func style() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20

        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        criteriaView.translatesAutoresizingMaskIntoConstraints = false
       
    }
    
    func layout() {
        //stackView.addArrangedSubview(newPasswordTextField)
        stackView.addArrangedSubview(criteriaView)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
        ])
    }
}

