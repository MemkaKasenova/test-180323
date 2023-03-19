//
//  SecondViewController.swift
//  test 180323
//
//  Created by merim kasenova on 19/3/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    var emailValue: String?
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var mobileNumberTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var eyeButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    func colorTextField(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.red.cgColor
        textField.placeholder = "Введите данные!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SecondViewController
        else {return}
        vc.emailValue = emailTF.text //"textfield is empty"
    }

        

    @IBAction func eyeButton(_ sender: Any) {
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if usernameTF.text!.isEmpty && emailTF.text!.isEmpty && mobileNumberTF.text!.isEmpty && passwordTF.text!.isEmpty {
            colorTextField(usernameTF)
            colorTextField(emailTF)
            colorTextField(mobileNumberTF)
            colorTextField(passwordTF)
        } else if usernameTF.text!.isEmpty {
            colorTextField(usernameTF)
            emailTF.layer.borderWidth = 0
        } else if emailTF.text!.isEmpty {
            colorTextField(emailTF)
            mobileNumberTF.layer.borderWidth = 0
        } else if mobileNumberTF.text!.isEmpty {
            colorTextField(mobileNumberTF)
            passwordTF.layer.borderWidth = 0
        } else if passwordTF.text!.isEmpty {
            colorTextField(passwordTF)
        } else {
            let threeVC = storyboard?.instantiateViewController(withIdentifier: "threeVC") as! ThreeViewController
            navigationController?.pushViewController(threeVC, animated: true)
            usernameTF.layer.borderWidth = 0
            emailTF.layer.borderWidth = 0
            mobileNumberTF.layer.borderWidth = 0
            passwordTF.layer.borderWidth = 0
            
        }
    }
    }


