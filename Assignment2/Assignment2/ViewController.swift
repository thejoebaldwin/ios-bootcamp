//
//  ViewController.swift
//  Assignment2
//
//  Created by Joseph Baldwin on 9/10/14.
//  Copyright (c) 2014 Humboldt Technology Group, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameField: UITextField!
    @IBOutlet weak var LastNameField: UITextField!
    
    @IBOutlet weak var AgeSlider: UISlider!
    @IBOutlet weak var AgeLabel: UILabel!
    @IBOutlet weak var ReadySwitch: UISwitch!
    @IBOutlet weak var SubmitButton: UIButton!
    
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        FirstNameField.resignFirstResponder();
        LastNameField.resignFirstResponder();
    }
    
    
    @IBAction func AgeSliderValueChanged(sender: AnyObject) {
        var age:Float = AgeSlider.value;
        AgeLabel.text = "\(age)";
    }
    
    
    @IBAction func ReadSwitchValueChanged(sender: AnyObject) {
        if ReadySwitch.on {
            SubmitButton.enabled = true;
        }
        else {
            SubmitButton.enabled = false;
        }
    }

    @IBAction func SubmitButtonClicked(sender: AnyObject) {
        
        var firstName:String = FirstNameField.text;
        var lastName:String = LastNameField.text;
        var age:Float = AgeSlider.value;
        var message = "Thanks for your submission \(firstName) \(lastName)";
        
        var alert = UIAlertController(title: "Success", message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

