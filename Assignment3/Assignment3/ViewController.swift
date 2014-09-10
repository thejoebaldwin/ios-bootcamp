//
//  ViewController.swift
//  Assignment3
//
//  Created by Joseph Baldwin on 9/10/14.
//  Copyright (c) 2014 Humboldt Technology Group, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var GradeField1: UITextField!
    @IBOutlet weak var GradeField2: UITextField!
    @IBOutlet weak var GradeField3: UITextField!
    @IBOutlet weak var GradeField4: UITextField!
    @IBOutlet weak var GradeField5: UITextField!

    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBAction func SubmitButtonClick(sender: AnyObject) {
        
        var letterGrade = "F";
        var grade1:Float = (GradeField1.text as NSString).floatValue;
        var grade2:Float = (GradeField2.text as NSString).floatValue;
        var grade3:Float = (GradeField3.text as NSString).floatValue;
        var grade4:Float = (GradeField4.text as NSString).floatValue;
        var grade5:Float = (GradeField5.text as NSString).floatValue;

        var average = (grade1 + grade2 + grade3 + grade4 + grade5) / 5.0;
        
        switch average {

        case 95...100:
                letterGrade = "A";
        case 92...95:
                letterGrade = "A-";
        case 90...92:
                letterGrade = "B+";
        case 88...90:
            letterGrade = "B";
        case 86...87:
            letterGrade = "B-";
        case 83...86:
            letterGrade = "C+";
        case 80...83:
            letterGrade = "C";
        case 77...80:
            letterGrade = "C-";
        case 75...66:
            letterGrade = "D+";
        case 72...75:
            letterGrade = "D";
        case 70...72:
            letterGrade = "D-";

        default:
            letterGrade = "F";
        }
        
        var averageFormatted:String = String(format: "%.2f", average);
        
        var message:String = "With and average score of \(averageFormatted) you earned a \(letterGrade)";
        MessageLabel.text = message;
        
        
        println(letterGrade);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MessageLabel.text = "";
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

