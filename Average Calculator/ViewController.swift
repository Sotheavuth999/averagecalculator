//
//  ViewController.swift
//  Average Calculator
//
//  Created by SOTHEAVUTH NGUON on 10/7/16.
//  Copyright © 2016 SOTHEAVUTH NGUON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTitleLabelOUTLET: UILabel!
    @IBOutlet weak var txtInputTextOUTLET: UITextField!
    @IBOutlet weak var btnCalculateOUTLET: UIButton!
    @IBOutlet weak var lblDisplayAverageOUTLET: UILabel!
    @IBOutlet weak var btnResetOUTLET: UIButton!
    
    var average : Double = 0
    var total : Double = 0
    var count : Double = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressCalculateButton(_ sender: AnyObject) {
        if (!((txtInputTextOUTLET.text?.isEmpty)!)) {
            let input = Double(txtInputTextOUTLET.text!)
            count += 1
            calculateAverage(inputNumber: input!)
            displayAverage()
            txtInputTextOUTLET.text?.removeAll()
        } else {
            txtInputTextOUTLET.text = "Please, enter a number!!!"
        }
    }
    
    @IBAction func pressResetButton(_ sender: AnyObject) {
        resetValues()
    }
    
    func calculateAverage(inputNumber : Double) {
        total += inputNumber
        average = total / count
    }
    
    func displayAverage() {
        lblDisplayAverageOUTLET.text = String(average)
    }
    
    func resetValues() {
        average = 0
        total = 0
        count = 0
        lblDisplayAverageOUTLET.text = "Display Average"
    }

}

