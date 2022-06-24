//
//  SignUpViewController.swift
//  PieBiden
//
//  Created by BrainX on 16/06/2022.
//

import UIKit

class SignUpViewController: UIViewController {
    // MARK: SignUpViewController Outlets
    @IBOutlet var signUpView: SignUpView!
    
    // MARK: SignUpViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpView.configureShadowsForOutlets()
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    // MARK: SignUpViewController Action Functions
    @IBAction func goToSignInScreen(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
