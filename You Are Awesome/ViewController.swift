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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🇺🇸 viewDidLoad has run!")
        messageLabel.text = "You Are Fabulous!"
        // Do any additional setup after loading the view.
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("🥳 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
}

