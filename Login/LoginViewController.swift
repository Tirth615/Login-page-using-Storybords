//
//  LoginViewController.swift
//  Login
//
//  Created by TirthShah on 07/01/25.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var my_lbl: UILabel!
    @IBOutlet weak var txt_email: UITextField!
    @IBOutlet weak var txt_password: UITextField!
    
    //data Provide to ViewController
    var Registration_email = String()
    var Registration_password = String()
    
    
    
    
    @IBAction func btn_login(_ sender: Any) {
        //Value Store To the Text Filed
        let email = txt_email.text
        let password = txt_password.text
        
        //call Next Screen
        let main = UIStoryboard(name: "Main", bundle: nil)
        let WelcomeVC = main.instantiateViewController(withIdentifier: "WelcomeVC") as! WelcomeViewController
        
        //check Email and Password and Move To Next Page
        if Registration_email == email && Registration_password == password{
            WelcomeVC.login_name = email!
            self.present(WelcomeVC, animated: true)
        }else{
            my_lbl.isHidden = false
            my_lbl.textColor = .red
            my_lbl.text = "Wrong Email or Password"
            print("Wrong Password")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        my_lbl.isHidden = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
