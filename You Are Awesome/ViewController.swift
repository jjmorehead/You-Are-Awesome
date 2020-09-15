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
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["Awesome", "Great", "Fantastic", "Fabulous", "Amazing", "Supurb"]
        
        
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        
        while messageLabel.text == newMessage {
            print("We have a repeating value! *** Rerandomizing")
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        messageLabel.text = newMessage
        
        
        imageView.image = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        
        
        
/*        messageLabel.text = messages[messageNumber]
        messageNumber += 1
        if messageNumber == messages.count {
            messageNumber = 0
            
        }
        
        // let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        
        if imageNumber == 5 {
            imageNumber = 0
        }
        
*/
//        let awesomeMessage = "You Are Awesome!"
//        let greatMessage = "You Are Great!"
//        let daMessage = "You Are Da Bomb!"
//
//        if messageLabel.text == awesomeMessage {
//            messageLabel.text = greatMessage
//            imageView.image = UIImage(named: "image1")
//
//        } else if messageLabel.text == greatMessage{
//            messageLabel.text = daMessage
//            imageView.image = UIImage(named: "image3")
//        } else{
//            messageLabel.text = awesomeMessage
//            imageView.image = UIImage(named: "image4")
//        }
    }
    
}

