//
//  ViewController.swift
//  SuperSimpleCalculator
//
//  Created by Анастасия Болбот on 25.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextNumber: UITextField!
    @IBOutlet weak var secondTextNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstTextNumber.text!) {
            if  let secondNumber = Int(secondTextNumber.text!) {
                
               let result = firstNumber + secondNumber
               resultLabel.text = String(result)
            } else {resultLabel.text = "Give me a NUMBER"}
        } else {resultLabel.text = "Give me a NUMBER"}
        
        
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstTextNumber.text!) {
            if  let secondNumber = Int(secondTextNumber.text!) {
                
               let result = firstNumber - secondNumber
               resultLabel.text = String(result)
            } else {resultLabel.text = "Give me a NUMBER"}
        } else {resultLabel.text = "Give me a NUMBER"}
         
        
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstTextNumber.text!) {
            if  let secondNumber = Int(secondTextNumber.text!) {
                
               let result = firstNumber * secondNumber
               resultLabel.text = String(result)
            } else {resultLabel.text = "Give me a NUMBER"}
        } else {resultLabel.text = "Give me a NUMBER"}
        
        
    }
    
    @IBAction func divideClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstTextNumber.text!) {
            if  let secondNumber = Int(secondTextNumber.text!) {
                
               let result = firstNumber / secondNumber
               resultLabel.text = String(result)
            } else {resultLabel.text = "Give me a NUMBER"}
        } else {resultLabel.text = "Give me a NUMBER"}
        
        
    }
    
    
}

