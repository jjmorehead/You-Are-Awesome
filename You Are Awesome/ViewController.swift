//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Jordan Morehead on 9/2/20.
//  Copyright © 2020 Jordan Morehead. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let awesomeMessage = "You Are Awesome!"
    let greatMessage = "You Are Great!"
    let daMessage = "You Are Da Bomb!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        
        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "image1")
            
        } else if messageLabel.text == greatMessage{
            messageLabel.text = daMessage
            imageView.image = UIImage(named: "image2")
        } else{
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "image1")
        }
    }
    
}

