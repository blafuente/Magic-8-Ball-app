//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Brian Lafuente on 7/25/19.
//  Copyright © 2019 Brian Lafuente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Array of ball images/answers
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    // set variable to zero
    var randomBallNumber = 0
    //Linking ball image to code
    @IBOutlet weak var magic8Ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateBallAnswer()
        // onload, ball image will be random from function
    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        // generate an answer when ask button is pressed
        updateBallAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        // generate an answer when phone is shaken
        updateBallAnswer()
    }
    
    // function to update the ball image/answer
    func updateBallAnswer() {
        randomBallNumber = Int.random(in: 0 ... 4)
        magic8Ball.image = UIImage(named: ballArray[randomBallNumber])
    }
}

