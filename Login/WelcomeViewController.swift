//
//  WelcomeViewController.swift
//  Login
//
//  Created by TirthShah on 07/01/25.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var my_lbl_name: UILabel!
    
    var login_name = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        my_lbl_name.text = login_name
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
