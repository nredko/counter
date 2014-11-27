//
//  ViewController.swift
//  Counter
//
//  Created by Nikolay Redko on 26.11.14.
//  Copyright (c) 2014 Nikolay Redko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var first: UIPickerView!
    
    var numbers:[String] = ["0", "1", "2",  "3", "4", "5", "6", "7", "8", "9"]
    override func viewDidLoad() {
        super.viewDidLoad()
        first.selectRow(NSUserDefaults.standardUserDefaults().integerForKey("counter0"), inComponent: 0, animated: true)
        first.selectRow(NSUserDefaults.standardUserDefaults().integerForKey("counter1"), inComponent: 1, animated: true)
        first.selectRow(NSUserDefaults.standardUserDefaults().integerForKey("counter2"), inComponent: 2, animated: true)
        first.selectRow(NSUserDefaults.standardUserDefaults().integerForKey("counter3"), inComponent: 3, animated: true)
        first.selectRow(NSUserDefaults.standardUserDefaults().integerForKey("counter4"), inComponent: 4, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: numbers[row % 10])
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 5
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 16000
    }
 
    @IBAction func onResetButton(sender: UIButton) {
        NSUserDefaults.standardUserDefaults().setInteger(8500, forKey: "counter0")
        NSUserDefaults.standardUserDefaults().setInteger(8500, forKey: "counter1")
        NSUserDefaults.standardUserDefaults().setInteger(8500, forKey: "counter2")
        NSUserDefaults.standardUserDefaults().setInteger(8500, forKey: "counter3")
        NSUserDefaults.standardUserDefaults().setInteger(8500, forKey: "counter4")
        viewDidLoad()
    }

}

