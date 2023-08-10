//
//  ViewController.swift
//  calculator
//
//  Created by Khushboo on 21/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber : Double = 0
    var secondNumber : Double = 0
    var perfomMaths = false
    var operation = 0
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton)
    {
        
        if perfomMaths == true
        {
            label.text = String(sender.tag-1)
            firstNumber = Double(label.text!)!
            perfomMaths = false
        }
        else{
            label.text = label.text! + String(sender.tag-1)
            firstNumber = Double(label.text!)!
        }
        
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            secondNumber = Double(label.text!)!
            
            if sender.tag == 12 {
                label.text = "/"
            }
            else if sender.tag == 13 {
                label.text = "*"
            }
            else if sender.tag == 14 {
                label.text = "-"
            }
            else if sender.tag == 15 {
                label.text = "+"
            }
           
            operation = sender.tag
            perfomMaths = true
            
        }
        else if sender.tag == 16{
             if operation == 12
            {
                 label.text = String(secondNumber / firstNumber)
             }
            else if operation == 13
            {
                 label.text = String(secondNumber * firstNumber)
             }
            else if operation == 14
            {
                 label.text = String(secondNumber - firstNumber)
             }
            else if operation == 15
            {
                 label.text = String(secondNumber + firstNumber)
             }
            
        } else if sender.tag == 11
        {
            label.text = ""
            firstNumber = 0
            secondNumber = 0
            operation = 0
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

