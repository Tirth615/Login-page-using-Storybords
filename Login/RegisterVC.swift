//
//  ViewController.swift
//  Login
//
//  Created by TirthShah on 07/01/25.
//

import UIKit
import FirebaseAuth

class RegisterVC: UIViewController {
    
    
    //MARK: - IBOutlet
    @IBOutlet weak var Txt_Name: UITextField!
    @IBOutlet weak var Txt_Email: UITextField!
    @IBOutlet weak var Txt_Number: UITextField!
    @IBOutlet weak var Txt_Password: UITextField!
    @IBOutlet weak var Txt_Address: UITextField!
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Button Action
    @IBAction func btnsubmit(_ sender: Any) {
        
        //Store The Value In Variable
        let name = Txt_Name.text
        let email = Txt_Email.text
        let number = Txt_Number.text
        let password = Txt_Password.text
        let address = Txt_Address.text
        
        
        FirebaseAuth.Auth.auth().createUser(withEmail: Txt_Email.text!, password: Txt_Password.text!, completion: {authresult , error in
        guard let result = authresult , error == nil else {
                print("Error")
            return
            }
            let user = result.user
            print("Crete User Successfully \(user)")
        })
        
    }
}

