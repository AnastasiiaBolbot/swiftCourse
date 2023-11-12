//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Анастасия Болбот on 11.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = " Birthday: \(newBirthday)"
        }
    }


    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")
        UserDefaults.standard.synchronize()
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birtday: \(birthdayTextField.text!)"
        
    }
    
    
    @IBAction func deletclicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String != nil){
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name:"
            UserDefaults.standard.synchronize()
        }
        if (storedBirthday as? String != nil) {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday:"
            UserDefaults.standard.synchronize()
        }
    }
    
}

