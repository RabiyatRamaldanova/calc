//
//  ViewController.swift
//  calculator4
//
//  Created by student on 19.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var clear :Bool = false
    var number1 :Double = 0
    var number2 :Double = 0// s ekrana
    var operation :Int = 0

    @IBOutlet weak var dot: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var equality: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = ""
        dot.isEnabled = false
    }

    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if clear{
            plus.isEnabled = true
            division.isEnabled = true
            minus.isEnabled = true
            multiply.isEnabled = true
            label.text = String(sender.tag)
            clear = false
            dot.isEnabled = true
        } else {
            plus.isEnabled = true
            division.isEnabled = true
            minus.isEnabled = true
            multiply.isEnabled = true
            if (sender.tag != 16){
                label.text = label.text! + String(sender.tag)
                dot.isEnabled = true
            }else {
                label.text = label.text! + "."
                dot.isEnabled = false
            }
            
        }
        
        number2 = Double(label.text!)!
    }
    
    @IBAction func actions(_ sender: UIButton) {
        if (label.text != "" && sender.tag != 14 && sender.tag != 15){
            number1 = Double(label.text!)!
        
        if (sender.tag == 13){
            label.text = "+"
            plus.isEnabled = false
            division.isEnabled = false
            minus.isEnabled = false
            multiply.isEnabled = false
            
        }
        else if (sender.tag == 12){
            label.text = "-"
            plus.isEnabled = false
            division.isEnabled = false
            minus.isEnabled = false
            multiply.isEnabled = false
        }
        else if (sender.tag == 11){
            label.text = "*"
            plus.isEnabled = false
            division.isEnabled = false
            minus.isEnabled = false
            multiply.isEnabled = false
        }
        else if (sender.tag == 10){
            label.text = "/"
            plus.isEnabled = false
            division.isEnabled = false
            minus.isEnabled = false
            multiply.isEnabled = false
        }
            clear = true
            operation = sender.tag
    }
        else if (sender.tag == 14) {
            if (operation == 10) {
                if(number2 != 0) {
                    let number : Double = (round(100000*(number1/number2)))/100000
                    label.text = String(number)
                }
                else {label.text = "error"}
            }
            else if (operation == 11) {
                let number :Double = (round(100000*(number1*number2)))/100000
                label.text = String(number)
            }
            else if (operation == 12) {
                let number :Double = (round(100000*(number1-number2)))/100000
                label.text = String(number)
            }
            else if (operation == 13) {
                let number :Double = (round(100000*(number1+number2)))/100000
                label.text = String(number)
            }
            dot.isEnabled = true
            clear = true
        }
        else if (sender.tag == 15) {
            label.text = ""
            dot.isEnabled = true
        }
}
}




