//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Scott Johnson on 4/23/19.
//  Copyright © 2019 Scott Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomBallNumber = Int.random(in: 0 ... 4)
        
        updateBall()
    }

    @IBAction func askButtonPressed() {
        
    }
    
    func updateBall() {
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

