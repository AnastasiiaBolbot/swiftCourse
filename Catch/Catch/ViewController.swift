//
//  ViewController.swift
//  Catch
//
//  Created by Анастасия Болбот on 11.12.2023.
//

import UIKit

class ViewController: UIViewController {

    //Variables
    var score = 0
    var timer = Timer()
    var counter = 0
    var mabelArray = [UIImageView]()
    var hideTimer = Timer()
    //Views
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var mabel1: UIImageView!
    @IBOutlet weak var mabel2: UIImageView!
    @IBOutlet weak var mabel3: UIImageView!
    @IBOutlet weak var mabel4: UIImageView!
    @IBOutlet weak var mabel5: UIImageView!
    @IBOutlet weak var mabel6: UIImageView!
    @IBOutlet weak var mabel7: UIImageView!
    @IBOutlet weak var mabel8: UIImageView!
    @IBOutlet weak var mabel9: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Timer
        counter = 20
        timeLabel.text = "Time:\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
        hideTimer = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(hideMabel), userInfo: nil, repeats: true)
        
        scoreLabel.text = "Score: \(score)"
        
        //Images
        mabel1.isUserInteractionEnabled = true
        mabel2.isUserInteractionEnabled = true
        mabel3.isUserInteractionEnabled = true
        mabel4.isUserInteractionEnabled = true
        mabel5.isUserInteractionEnabled = true
        mabel6.isUserInteractionEnabled = true
        mabel7.isUserInteractionEnabled = true
        mabel8.isUserInteractionEnabled = true
        mabel9.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        mabel1.addGestureRecognizer(recognizer1)
        mabel2.addGestureRecognizer(recognizer2)
        mabel3.addGestureRecognizer(recognizer3)
        mabel4.addGestureRecognizer(recognizer4)
        mabel5.addGestureRecognizer(recognizer5)
        mabel6.addGestureRecognizer(recognizer6)
        mabel7.addGestureRecognizer(recognizer7)
        mabel8.addGestureRecognizer(recognizer8)
        mabel9.addGestureRecognizer(recognizer9)
        
        mabelArray = [mabel1, mabel2, mabel3, mabel4, mabel5, mabel6, mabel7, mabel8, mabel9]
        hideMabel()
    }

    @objc func timerFunction () {
        timeLabel.text = "Time:\(counter)"
        counter = counter - 1
        
        if counter == -1 {
            timer.invalidate()
            timeLabel.text = "Time is over"
            hideTimer.invalidate()
            
            //Alert
            let alert = UIAlertController(title: "time is over", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) {
                (UIAlertAction) in
                //replay function
                
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func increaseScore() {
        score = score + 1
        scoreLabel.text = "Score: \(score)"
        
        
    }
    
    @objc func hideMabel(){
        for mabel in mabelArray {
            mabel.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(mabelArray.count - 1)))
        mabelArray[random].isHidden = false
        
    }
    
    }
    
    
    


