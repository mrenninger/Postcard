//
//  ViewController.swift
//  Postcard
//
//  Created by Michael Renninger on 10/13/14.
//  Copyright (c) 2014 Michael Renninger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTF: UITextField!
    @IBOutlet weak var enterMsgTF: UITextField!
    @IBOutlet weak var mailBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailBtnPressed(sender: UIButton) {
        // Add a comment her to test commits
        messageLabel.hidden = false;
        messageLabel.text = enterMsgTF.text;
        messageLabel.textColor = UIColor.redColor();
        enterMsgTF.text = "";
        enterMsgTF.resignFirstResponder();
        
        nameLabel.hidden = false;
        nameLabel.text = enterNameTF.text;
        nameLabel.textColor = UIColor.blueColor();
        enterNameTF.text = "";
        enterNameTF.resignFirstResponder();
        
        mailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

