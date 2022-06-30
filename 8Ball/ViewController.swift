//
//  ViewController.swift
//  8Ball
//
//  Created by SyedSaad on 01/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var Array = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomDice :Int = 0
    
    @IBOutlet weak var ballImage1: UIImageView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    updateBall()
    
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
    
    func updateBall() {
        
        randomDice = Int.random(in: 0...4)
        
        ballImage1.image = UIImage(named: Array[randomDice])
    }
}

