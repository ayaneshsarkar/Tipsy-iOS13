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
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        let userTip = sender.currentTitle!
        
        if (userTip == "0%") {
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
            calculatorBrain.setTipValue(value: 0.0)
        } else if userTip == "10%" {
            tenPctButton.isSelected = true
            zeroPctButton.isSelected = false
            twentyPctButton.isSelected = false
            
            calculatorBrain.setTipValue(value: 10.0)
        } else {
            twentyPctButton.isSelected = true
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            
            calculatorBrain.setTipValue(value: 20.0)
        }
        
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let userSplitInput: Double = sender.value
        calculatorBrain.setSplitNumberValue(value: userSplitInput)
        
        splitNumberLabel.text = String(format: "%.0f", calculatorBrain.getSplitNumber())
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    @IBAction func totalBillChanged(_ sender: UITextField) {
        calculatorBrain.setTotalValue(value: sender.text ?? "")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC: ResultsViewController = segue.destination as! ResultsViewController
            destinationVC.totalValue = calculatorBrain.calculateSplitPct()
            destinationVC.splitNumber = calculatorBrain.getSplitNumberValue()
            destinationVC.tipValue = calculatorBrain.getTipValue()
        }
    }
}

