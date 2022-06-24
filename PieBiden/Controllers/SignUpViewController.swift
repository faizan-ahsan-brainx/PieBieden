//
//  SignUpViewController.swift
//  PieBiden
//
//  Created by BrainX on 16/06/2022.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var signUpView: SignUpView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpView.configureOutlets()
        navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
    }
    @IBAction func goToSignInScreen(_ sender: Any) {
    
        navigationController?.popToRootViewController(animated: true)

    }
}
