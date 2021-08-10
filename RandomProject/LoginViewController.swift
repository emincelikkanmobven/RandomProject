//
//  LoginViewController.swift
//  RandomProject
//
//  Created by Emin Çelikkan on 10.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var welcomeLBL: UILabel!
    @IBOutlet weak var mobvenImage: UIImageView!
    @IBOutlet weak var userNameLBL: UILabel!
    
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var passwordLBL: UILabel!
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var loginBTN: UIButton!
    @IBOutlet weak var signUpBTN: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        print("Login Button Clicked")
        loginBTN.isEnabled = false
    }
    
    @IBAction func signUpButtonClicked(_ sender: Any) {
        print("Sign Up Button Clicked")

    }
    

}
