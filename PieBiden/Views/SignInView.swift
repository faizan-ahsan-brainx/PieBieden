//
//  SignInView.swift
//  PieBiden
//
//  Created by BrainX on 16/06/2022.
//

import UIKit

class SignInView: UIView {

    // MARK: SignInView Outlets
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var signInApple: UIButton!
    @IBOutlet weak var signInFacebook: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var forgetPassword: UILabel!
    @IBOutlet weak var notMemberLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    // MARK: SignInView Functions
    func configureShadowOfOutlets() {
        signInApple.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15).cgColor
        signInApple.layer.shadowOffset = CGSize(width: 10.0, height: 6.0)
        signInApple.layer.shadowOpacity = 1.0
        signInApple.layer.shadowRadius = 5.0
        signInApple.layer.masksToBounds = false

        signInFacebook.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15).cgColor
        signInFacebook.layer.shadowOffset = CGSize(width: 10.0, height: 6.0)
        signInFacebook.layer.shadowOpacity = 1.0
        signInFacebook.layer.shadowRadius = 5.0
        signInFacebook.layer.masksToBounds = false
        configureFontsOfOutlets()
    }
    
    func configureFontsOfOutlets() {
        signInLabel.font = .systemFont(ofSize: 24, weight: .medium)
        signInApple.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
        signInFacebook.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
        forgetPassword.font = .systemFont(ofSize: 15, weight: .medium)
        signInButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        notMemberLabel.font = .systemFont(ofSize: 16, weight: .medium)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        signUpButton.tintColor = UIColor(rgb: 0x4146D6)
    }
}
