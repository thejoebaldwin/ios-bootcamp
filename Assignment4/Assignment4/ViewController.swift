//
//  ViewController.swift
//  Assignment4
//
//  Created by Joseph Baldwin on 9/10/14.
//  Copyright (c) 2014 Humboldt Technology Group, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        pickerView.dataSource = self;
        pickerView.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AutoButtonClick(sender: AnyObject) {
        
        pickerView.selectRow( 6, inComponent: 0, animated: true)
        pickerView.selectRow( 5, inComponent: 1, animated: true)
        pickerView.selectRow( 4, inComponent: 2, animated: true)
    }
 
    @IBAction func TryButtonClick(sender: AnyObject) {
        var label1 = pickerView.viewForRow(  pickerView.selectedRowInComponent(0), forComponent: 0) as? UILabel;
        var label2 = pickerView.viewForRow(  pickerView.selectedRowInComponent(0), forComponent: 1) as? UILabel;
        var label3 = pickerView.viewForRow(  pickerView.selectedRowInComponent(0), forComponent: 2) as? UILabel;
        
        if label1?.text == "6" && label2?.text == "5" && label3?.text == "4" {
            println("match");
        }
        else {
            println("no match");
        }
    }
}

extension ViewController: UIPickerViewDataSource {

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return 10;
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView
    {
        var tempLabel:UILabel = UILabel();
        
        
        
        tempLabel.text = String(format: "%d", row);
        tempLabel.center = CGPointMake(160, 284)
        tempLabel.textAlignment = NSTextAlignment.Center
        return tempLabel;

    }
    
    
    func pickerView(pickerView: UIPickerView!, widthForComponent component: Int) -> CGFloat
    {
     
        var value:CGFloat = 15;
        return value;
    }
  
}

extension ViewController: UIPickerViewDelegate {



}

