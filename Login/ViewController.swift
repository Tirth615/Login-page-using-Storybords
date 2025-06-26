//
//  ViewController.swift
//  Login
//
//  Created by TirthShah on 07/01/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Txt_Name: UITextField!
    @IBOutlet weak var Txt_Email: UITextField!
    @IBOutlet weak var Txt_Number: UITextField!
    @IBOutlet weak var Txt_Password: UITextField!
    @IBOutlet weak var Txt_Address: UITextField!
    @IBAction func Btn_VC2(_ sender: Any) {
        
        //Store The Value In Variable
        let name = Txt_Name.text
        let email = Txt_Email.text
        let number = Txt_Number.text
        let password = Txt_Password.text
        let address = Txt_Address.text
        
        
        //Call Next Screen
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = main.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        
        //Send The Data To The LoginViewController
        loginVC.Registration_email = email!
        loginVC.Registration_password = password!
        
        self.present(loginVC, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

