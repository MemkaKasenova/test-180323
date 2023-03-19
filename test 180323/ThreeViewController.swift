//
//  ThreeViewController.swift
//  test 180323
//
//  Created by merim kasenova on 19/3/23.
//

import UIKit

class ThreeViewController: UIViewController {
    
    var emailValue: String?

       @IBOutlet weak var emailTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if !(emailValue?.isEmpty ?? true) {
            emailTF.text = emailValue ?? ""
        } else {
            emailTF.text = "empty"
        }
        
    }
    
    @IBAction func sendOTPButton(_ sender: Any) {
    }
    
    @IBAction func needHelpButton(_ sender: Any) {
    }
}
