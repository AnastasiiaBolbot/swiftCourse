//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Анастасия Болбот on 04.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ledZeppelin: UILabel!
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeClicker(_ sender: Any) {
        ImageView.image = UIImage(named: "led-zeppelin2")
    }
    
}

