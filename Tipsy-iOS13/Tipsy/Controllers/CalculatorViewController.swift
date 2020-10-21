//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    var tipAmount = 0.1
    var currentPeople = 2
    var finalResult = "0.0"
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        let tip = sender.currentTitle!
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let tipWithoutPerc = String(tip.dropLast())
        
        let tipDouble = Double(tipWithoutPerc)!
        
        tipAmount = tipDouble / 100
        
        
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        currentPeople = Int(sender.value)
        
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        //print(tipAmount)
        //print(currentPeople)
        let billString = billTextField.text!
        
        if billString != "" {
            let billDouble = Double(billString)!
            let personalBill = (billDouble * (1 + tipAmount)) / Double(currentPeople)
            finalResult = String(format: "%.2f", personalBill)
        }
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
             
            let destinationVC = segue.destination as! ResultsViewController
            
            destinationVC.totalPay = finalResult
            
            destinationVC.people = currentPeople
            
            destinationVC.tipPerc = Int(tipAmount * 100)
            
        }
        
    }
    
    
}






