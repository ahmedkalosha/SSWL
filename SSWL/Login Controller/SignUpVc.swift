//
//  SignUpVc.swift
//  SSWL
//
//  Created by Ahmed on 9/7/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class SignUpVc: UIViewController {

    @IBOutlet var lBlAlert: UILabel!
    @IBOutlet var TxName: UITextField!
    @IBOutlet var TxEmail: UITextField!
    @IBOutlet var TxPassword: UITextField!
    @IBOutlet var TxConfirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func SignUpBu(_ sender: UIButton) {
       
       
        guard let name = TxName.text?.trammid, !name.isEmpty, let email = TxEmail.text?.trammid, !email.isEmpty, let pass = TxPassword.text, !pass.isEmpty , let confirmPass = TxConfirmPassword.text, !confirmPass.isEmpty else {
            return lBlAlert.text = "insert All Field"
        }
        guard pass == confirmPass else {
            return lBlAlert.text = "password Not Matched"
        }
    }
    
}
