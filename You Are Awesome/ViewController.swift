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
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNumberOfImages = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["Awesome", "Great", "Fantastic", "Fabulous", "Amazing", "Supurb"]
        
        
        var newMessageNumber: Int
        
        repeat {
            print("We have a repeating value! *** Rerandomizing")
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            print("You have a repeating image! *** Rerandomizing")
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        
        
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

