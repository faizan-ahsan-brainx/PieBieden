//
//  ViewController.swift
//  PieBiden
//
//  Created by BrainX on 16/06/2022.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet var signInView: SignInView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signInView.configureOutlets()
        // Do any additional setup after loading the view.
    }
    @IBAction func goToSignUpScreen(_ sender: Any) {
        let signUpViewController =  SignUpViewController.instantiate(from: .main)
        navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
}

