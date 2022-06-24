//
//  ViewController.swift
//  PieBiden
//
//  Created by BrainX on 16/06/2022.
//

import UIKit

class SignInViewController: UIViewController {
    // MARK: SignInViewController Outlets
    @IBOutlet var signInView: SignInView!
    
    // MARK: SignInViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        signInView.configureShadowOfOutlets()
    }
    
    // MARK: SignInViewController Action Functions
    @IBAction func goToSignUpScreen(_ sender: Any) {
        let signUpViewController =  SignUpViewController.instantiate(from: .main)
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
}

