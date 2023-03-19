//
//  ViewController.swift
//  test 180323
//
//  Created by merim kasenova on 19/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var forgotButton: UIButton!
    @IBOutlet weak var logonButton: UIButton!
    @IBOutlet weak var createNowButton: UIButton!
    @IBOutlet weak var eyeButton: UIButton!
    
    
    func colorTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.red.cgColor
        textField.placeholder = "Введите данные!"
    }
    
    override func viewDidLoad() {
           super.viewDidLoad()
       }
    
      
        @IBAction func forgoPasswordButton(_ sender: Any) {
        }
        
        @IBAction func loginButton(_ sender: Any) {
            if emailTF.text!.isEmpty && passwordTF.text!.isEmpty {
                colorTextField(emailTF)
                colorTextField(passwordTF)
            } else {
                emailTF.layer.borderWidth = 0
                passwordTF.layer.borderWidth = 0
            }
        }
        
        @IBAction func createNowButton(_ sender: Any) {
        }
    
    @IBAction func eyeButton(_ sender: Any) {
    }
    
    }


