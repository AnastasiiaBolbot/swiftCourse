//
//  ViewController.swift
//  AlertProject
//
//  Created by Анастасия Болбот on 27.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwort2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: Any) {
      
        
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messegesInput: "Username not found")
        } else if passwordText.text == ""{
            makeAlert(titleInput: "Error", messegesInput: "Password not found")
        } else if passwordText.text != passwort2Text.text{
            makeAlert(titleInput: "Error", messegesInput: "Passwords do not match")
        } else {
            makeAlert(titleInput: "Succes", messegesInput: "User OK")
        }
        
            func makeAlert(titleInput: String, messegesInput: String) {
            let alert = UIAlertController(title: titleInput, message: messegesInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
    }
    
}
