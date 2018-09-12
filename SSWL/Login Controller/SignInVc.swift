//
//  SignInVc.swift
//  SSWL
//
//  Created by Ahmed on 9/7/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit
import Alamofire

class SignInVc: UIViewController {

    @IBOutlet var LblAlert: UILabel!
    @IBOutlet var TxPassword: UITextField!
    @IBOutlet var TxEmail: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func LogInBu(_ sender: UIButton) {
        guard let email = TxEmail.text, !email.isEmpty   else {
       return LblAlert.text = " insert your email"
        }
        guard let password = TxPassword.text, !password.isEmpty else {
            return LblAlert.text = "insert your password"
        }
        Api.LogIn(email: email, password: password) { (error:Error?, success:Bool) in
            if success {
                // ro7 ll home
            }else {
                // print error 
            }
        }
    }
    

}
