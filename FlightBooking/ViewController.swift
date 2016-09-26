//
//  ViewController.swift
//  FlightBooking
//
//  Created by Yoo SeungHwan on 2016/09/26.
//  Copyright © 2016年 kotsuya00. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var selectDatePicker: UIDatePicker!
    @IBOutlet var returnDateButton: UIButton!
    @IBOutlet var returnDateLabel: UILabel!
    
    @IBOutlet var departureDateButton: UIButton!
    
    var buttonTag: Int = 1
    
    @IBAction func showReturnDateAction(_ sender: AnyObject) {
//        print(sender.description)
//        if (sender as! UISwitch).isOn {
//            returnDateLabel.isHidden = false
//            returnDateButton.isHidden = false
//        }else{
//            returnDateLabel.isHidden = true
//            returnDateButton.isHidden = true
//        }
        
        returnDateLabel.isHidden = !(sender as! UISwitch).isOn
        returnDateButton.isHidden = !(sender as! UISwitch).isOn
    }
    
    @IBAction func showDatePickerAction(_ sender: AnyObject) {
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true
        }else{
            selectDatePicker.isHidden = false
        }
        
        buttonTag = (sender as! UIButton).tag
    }
    
    @IBAction func selectedDateAction(_ sender: AnyObject) {
        print(sender.description)
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-DD:mma"
        let dateString = formatter.string(from: (sender as! UIDatePicker).date)
        
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControlState.normal)
        }else{
            returnDateButton.setTitle(dateString, for: UIControlState.normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        
        selectDatePicker.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.resignFirstResponder()
        selectDatePicker.isHidden = true
        
    }
}

