//
//  LoginViewController.swift
//  Login
//
//  Created by TirthShah on 07/01/25.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    
    //data Provide to ViewController
    var Registration_email = String()
    var Registration_password = String()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - Button Action
    @IBAction func btnRegister(_ sender: Any) {
        print("sdfsd")
        guard let RegisterVC = storyboard?.instantiateViewController(withIdentifier: "RegisterVC") as? RegisterVC else {
            return
        }
        self.navigationController?.pushViewController(RegisterVC, animated: true)
    }
    @IBAction func btn_login(_ sender: Any) {
        FirebaseAuth.Auth.auth().signIn(withEmail: txt_email.text!, password: txt_password.text!) { (authresult, error) in
            guard let result = authresult , error == nil else {
                    print("Error",error)
                return
                }
            let user = result.user
            print("User Email : \(user.email ?? "")")
        }
    }
}

