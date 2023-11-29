//
//  ViewController.swift
//  GeustureRecognizerApp
//
//  Created by Анастасия Болбот on 29.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    var isMabel = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic(){
       
        if isMabel == true {
            imageView.image = UIImage(named: "dipper")
            myLabel.text = "Dipper"
            isMabel = false
        } else{
            imageView.image = UIImage(named: "mabel")
            myLabel.text = "Mabel"
            isMabel = true
        }
        
       
    }
    
}

