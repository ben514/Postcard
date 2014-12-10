//
//  ViewController.swift
//  Supercar Postcard
//
//  Created by Ben Choi on 2014. 12. 8..
//  Copyright (c) 2014년 Jamin Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Actions for the message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        //Actions for the name label
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        //Resetting the message text field value to zero and closing down the keyboard
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        //Resetting the name text field value to zero and closing down the keyborrd
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        //Chainging the message on the button
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

    
}

