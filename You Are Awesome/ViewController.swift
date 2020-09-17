//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Jordan Morehead on 9/2/20.
//  Copyright © 2020 Jordan Morehead. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 5
    let totalNumberOfSounds = 4
    var audioPlayer: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func playSound (name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: Could not initialize AVAudtioPlayer object.")
            }
        } else {
            print("ERROR: Could not play audio")
        }
    }

    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        
        repeat {
            //print("We have a repeating value! *** Rerandomizing")
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["Awesome", "Great", "Fantastic", "Fabulous", "Amazing", "Supurb"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        

        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        //print("*** THE NEW SOUND NUMBER IS \(soundNumber)")
        
        playSound(name: "sound\(soundNumber)")
        
        
        
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

