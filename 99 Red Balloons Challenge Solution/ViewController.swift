//
//  ViewController.swift
//  99 Red Balloons Challenge Solution
//
//  Created by Cory Chambers on 9/18/14.
//  Copyright (c) 2014 NA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonNumberTextField: UILabel!
    
    @IBOutlet weak var balloonImage: UIImageView!
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       createBalloon()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
        let balloon = balloonsArray[currentIndex]
        
        if balloon.number == 1 {
            balloonNumberTextField.text = "\(balloon.number) Balloon"
        } else {
            balloonNumberTextField.text = "\(balloon.number) Balloons"
        }
            
            
            
        balloonImage.image = balloon.image
        currentIndex++
    }
    
    var balloonsArray:[Balloon] = []
    
    func createBalloon() {
        
        for var i = 0; i < 99; i++ {
            var balloon = Balloon()
            balloon.number = i + 1
            let randomNumber = Int(arc4random_uniform(UInt32(3)))
            
            switch randomNumber {
            case 0:
                balloon.image = UIImage(named: "RedBalloon1.jpg")
            case 1:
                balloon.image = UIImage (named: "RedBalloon2.jpg")
            case 2:
                balloon.image = UIImage(named: "RedBalloon3.jpg")
            default:
                balloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            
            balloonsArray.append(balloon)
        }
    }
}

