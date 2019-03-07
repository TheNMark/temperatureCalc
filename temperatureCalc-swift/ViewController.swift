//
//  ViewController.swift
//  temperatureCalc-swift
//
//  Created by Mark on 13/10/2018.
//  Copyright © 2018 NMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var segOutlet: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        outputLabel.text = ""
        
    }

    @IBAction func calculate(_ sender: Any) {
        
        if segOutlet.selectedSegmentIndex == 0 {
            
            let Fahrenheit = Double(textField.text!)
            let Celsius = (Fahrenheit! - 32) / 1.8
            
            let result = String(format: "%4.1f Celsius", Celsius)
            
            outputLabel.text = result
            
            
            
            if Celsius >= 120 {
                
                imageView.image = UIImage(named: "Temp9")
                
            } else if Celsius >= 100 {
                
                imageView.image = UIImage(named: "Temp8")
                
            } else if Celsius >= 80 {
                
                imageView.image = UIImage(named: "Temp7")
                
            } else if Celsius >= 60 {
                
                imageView.image = UIImage(named: "Temp6")
                
            } else if Celsius >= 40 {
                
                imageView.image = UIImage(named: "Temp5")
                
            } else if Celsius >= 20 {
                
                imageView.image = UIImage(named: "Temp4")
                
            } else if Celsius > 0 {
                
                imageView.image = UIImage(named: "Temp3")
                
            } else if Celsius >= -20 {
                
                imageView.image = UIImage(named: "Temp2")
                
            } else if Celsius >= -40 {
                
                imageView.image = UIImage(named: "Temp1")
                
            }
            
            
            
        }
        
        if segOutlet.selectedSegmentIndex == 1 {
            
            let Celsius = Double(textField.text!)
            let Fahrenheit = Celsius! * 1.8 + 32
            
            let result = String(format: "%4.1f Fahrenheit", Fahrenheit)
            
            outputLabel.text = result
            
            if Fahrenheit >= 248 {
                
                imageView.image = UIImage(named: "Temp9")
                
            } else if Fahrenheit >= 212 {
                
                imageView.image = UIImage(named: "Temp8")
                
            } else if Fahrenheit >= 176 {
                
                imageView.image = UIImage(named: "Temp7")
                
            } else if Fahrenheit >= 140 {
                
                imageView.image = UIImage(named: "Temp6")
                
            } else if Fahrenheit >= 104 {
                
                imageView.image = UIImage(named: "Temp5")
                
            } else if Fahrenheit >= 68 {
                
                imageView.image = UIImage(named: "Temp4")
                
            } else if Fahrenheit > 32 {
                
                imageView.image = UIImage(named: "Temp3")
                
            } else if Fahrenheit >= -4 {
                
                imageView.image = UIImage(named: "Temp2")
                
            } else if Fahrenheit >= -40 {
                
                imageView.image = UIImage(named: "Temp1")
                
            }
            
            
            
        }
        
    }
    
    @IBAction func chooseTemp(_ sender: Any) {
        
        if segOutlet.selectedSegmentIndex == 0 {
            
            enterLabel.text = "Enter Fahrenheit"
            textField.text = ""
            outputLabel.text = "0 Celsius"
            
        } else {
            
            enterLabel.text = "Enter Celsius"
            textField.text = ""
            outputLabel.text = "0 Fahrenheit"
            
        }
        
    }
    
}

