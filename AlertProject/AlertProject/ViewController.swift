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
        /*
         1
         let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { UIAlertAction in
         print("button clicked")
         }
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         */
        
         
         if usernameText.text == "" {
         let alert = UIAlertController(title: "Error", message: "Username not Found", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         } else if passwordText.text == ""{
         let alert = UIAlertController(title: "Error", message: "Password not Found", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         
         } else if passwordText.text != passwort2Text.text{
         let alert = UIAlertController(title: "Error", message: "Password do not match", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         } else {
         let alert = UIAlertController(title: "Success", message: "User OK", preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
         alert.addAction(okButton)
         self.present(alert, animated: true, completion: nil)
         }
         
         }
        
        
        
        
    }
    

