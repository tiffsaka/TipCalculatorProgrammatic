//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Tiffany Sakaguchi on 5/17/21.
//

import UIKit

class TipCalculatorViewControllerOLD: UIViewController {

    
    //MARK: - Outlets
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var numberOfPersonsLabel: UILabel!
    @IBOutlet weak var numberOfPersonsSlider: UISlider!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var tipPerPersonAmountLabel: UILabel!
    @IBOutlet weak var totalPerPersonAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercentSegmentedControl: UISegmentedControl!
    
    
    //MARK: - Properties
    //var billAmount
    var billAmount: Double = 0
    var personsInteger = 1
    var tipDollars: Double = 0
    var totalDollars: Double = 0
    var tipPerPerson: Double = 0
    var totalPerPerson: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
     
    //MARK: - Actions
    
    @IBAction func numberOfPersonsSliderMoved(_ sender: UISlider) {
        personsInteger = Int(sender.value)
        numberOfPersonsLabel.text = String(personsInteger)
    }
    
    @IBAction func calculateButtonTapped(_ sender: Any) {
        calculateTip()
        updateViews()
    }
    
    //MARK: - Functions
    
    func calculateTip() {
        guard let billAmountString = billTextField.text,
              !billAmountString.isEmpty,
              let billAmountDouble = Double(billAmountString) else { return }
        billAmount = billAmountDouble
        var tipPercent = 0.0
        switch tipPercentSegmentedControl.selectedSegmentIndex {
            case 0: tipPercent = 0.15;
            case 1: tipPercent = 0.18;
            case 2: tipPercent = 0.2
            default: break
        }
        tipDollars = billAmount * tipPercent
        totalDollars = billAmount + tipDollars
        tipPerPerson = tipDollars / Double(personsInteger)
        totalPerPerson = (billAmount / Double(personsInteger)) + tipPerPerson
    }
    
    func setupViews() {
        tipAmountLabel.text = "$0.00"
        totalAmountLabel.text = "$0.00"
        tipPerPersonAmountLabel.text = "$0.00"
        totalPerPersonAmountLabel.text = "$0.00"
        numberOfPersonsLabel.text = String(1)
    }
    
    func updateViews() {
        tipAmountLabel.text = "$\(String(format: "%.2f", tipDollars))"
        totalAmountLabel.text = "$\(String(format: "%.2f", totalDollars))"
        tipPerPersonAmountLabel.text = "$\(String(format: "%.2f", tipPerPerson))"
        totalPerPersonAmountLabel.text = "$\(String(format: "%.2f", totalPerPerson))"
        totalPerPersonAmountLabel.text = "$\(String(format: "%.2f", totalPerPerson))"
        billTextField.text = String(format: "%.2f", billAmount)
    }
}
