//
//  ViewController.swift
//  Magic8Ball
//
//  Created by zero on 9/6/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Images Array
    var images = [
        "ball1",
        "ball2",
        "ball3",
        "ball4",
        "ball5",
    ]
    
    // Random Property
    var randomBall = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askButton(self)
    }
    
    // Shake to change Image
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        askButton(self)
    }
    
    // Conections
    @IBOutlet weak var imageOfAnswers: UIImageView!
    
    @IBAction func askButton(_ sender: Any) {
        randomBall = Int(arc4random_uniform(5))
        imageOfAnswers.image = UIImage(named: images[randomBall])
    }
    

}

