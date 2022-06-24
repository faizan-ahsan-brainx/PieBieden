//
//  SignUpView.swift
//  PieBiden
//
//  Created by BrainX on 16/06/2022.
//

import UIKit

class SignUpView: UIView {
    
    // MARK: SignUpView Outlets
    @IBOutlet weak var signUpLabel: UILabel!
    @IBOutlet weak var termsAndPlolicyLabel: UILabel!
    @IBOutlet weak var signUpAppleButton: UIButton!
    @IBOutlet weak var signUpFacebookButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var alreadyMemberLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var phoneView: UIView!
    
    // MARK: SignUpView Functions
    func configureShadowsForOutlets() {
        signUpAppleButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15).cgColor
        signUpAppleButton.layer.shadowOffset = CGSize(width: 10.0, height: 6.0)
        signUpAppleButton.layer.shadowOpacity = 1.0
        signUpAppleButton.layer.shadowRadius = 5.0
        signUpAppleButton.layer.masksToBounds = false

        signUpFacebookButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15).cgColor
        signUpFacebookButton.layer.shadowOffset = CGSize(width: 10.0, height: 6.0)
        signUpFacebookButton.layer.shadowOpacity = 1.0
        signUpFacebookButton.layer.shadowRadius = 5.0
        signUpFacebookButton.layer.masksToBounds = false
        configureFontsForOutlets()
        configureTermsAndPolicyLabel()
        configureBordersForOutlets()
    }
    
    func configureFontsForOutlets() {
        signUpLabel.font = .systemFont(ofSize: 24, weight: .medium)
        signUpAppleButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
        signUpFacebookButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        alreadyMemberLabel.font = .systemFont(ofSize: 16, weight: .medium)
        signInButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        signInButton.tintColor = UIColor(rgb: 0x4146D6)
        phoneView.frame.inset(by: UIEdgeInsets(top: 30.0, left: 5.0, bottom: 30.0, right: 5.0))
    }
    
    func configureTermsAndPolicyLabel() {
        let fullText = "By clicking Sign up, Continue with Facebook or Continue with Apple, you agree to our Terms and Conditions and Privacy Policy."
        let changeText1 = "Terms and Conditions"
        let changeText2 = "Privacy Policy."
        
        let strNumber: NSString = fullText as NSString
        var range = (strNumber).range(of: changeText1)
        var attribute = NSMutableAttributedString.init(string: fullText)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(rgb: 0xFC7941) , range: range)
        range = (strNumber).range(of: changeText2)
        attribute = NSMutableAttributedString.init(string: attribute.string)
        attribute.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(rgb: 0xFC7941), range: range)
        termsAndPlolicyLabel.attributedText = attribute
        termsAndPlolicyLabel.font = UIFont.systemFont(ofSize: 11)
    }
    
    func configureBordersForOutlets() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: 7.0, width: 1.0, height: phoneTextField.frame.height)
        bottomLine.backgroundColor = UIColor(rgb: 0xCCCCCC).cgColor
        phoneTextField.layer.addSublayer(bottomLine)
        phoneTextField.borderStyle = UITextField.BorderStyle.none
        phoneView.layer.borderWidth = 1
        phoneView.layer.borderColor = UIColor(rgb: 0xCCCCCC).cgColor
        phoneView.layer.cornerRadius = 5
    }
}
