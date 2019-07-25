//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Brian Lafuente on 7/25/19.
//  Copyright © 2019 Brian Lafuente. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0
    
    @IBOutlet weak var magic8Ball: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateBallAnswer()
    }

    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallAnswer()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallAnswer()
    }
    
    func updateBallAnswer() {
        randomBallNumber = Int.random(in: 0 ... 4)
        magic8Ball.image = UIImage(named: ballArray[randomBallNumber])
    }
}

