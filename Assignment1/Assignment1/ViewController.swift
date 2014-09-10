//
//  ViewController.swift
//  Assignment1
//
//  Created by Joseph Baldwin on 9/10/14.
//  Copyright (c) 2014 Humboldt Technology Group, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var message:String = "I once told an Objective-C joke, but nobody got the message";
        
        messageLabel.text = message;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

