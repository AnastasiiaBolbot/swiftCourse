//
//  ViewController.swift
//  ObjetsWithCode
//
//  Created by Анастасия Болбот on 08.11.2023.
//

import UIKit

class ViewController: UIViewController {

    var myLable = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        myLable.text = "Test Label"
        myLable.textAlignment = .center
        myLable.frame = CGRect (x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - height * 0.8 / 2, width: width * 0.8, height: height * 0.8)
        view.addSubview(myLable)
        
        
        let myButton = UIButton ()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.green, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }
    @objc func myAction(){
        myLable.text = "Tapped"
    }

}

