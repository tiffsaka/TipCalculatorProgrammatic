//
//  TipCalculatorViewController.swift
//  TipCalculator
//
//  Created by Tiffany Sakaguchi on 5/18/21.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    //MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        addAllSubviews()
        constrainTitleLabel()
        constrainCalculatorImage()
        setupBillStackView()
        constrainTipSegmentedView()
        setupPersonsStackView()
        setupTipStackView()
        setupTotalStackView()
        setupTipPerPersonStackView()
        setupTotalPerPersonStackView()
        constrainCalculateButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }
    
    //MARK: - Properties
    
    var safeArea: UILayoutGuide {
        return self.view.safeAreaLayoutGuide
    }
    
    
    //MARK: - addAllSubviews
    
    func addAllSubviews() {
        self.view.addSubview(titleLabel)
        self.view.addSubview(calculatorImage)
        self.view.addSubview(billLabel)
        self.view.addSubview(billTextField)
        self.view.addSubview(billStackView)
        self.view.addSubview(tipSegmentedView)
        self.view.addSubview(personsLabel)
        self.view.addSubview(numberPersonsSlider)
        self.view.addSubview(numberPersonsLabel)
        self.view.addSubview(personsStackView)
        self.view.addSubview(tipLabel)
        self.view.addSubview(amountTipLabel)
        self.view.addSubview(tipStackView)
        self.view.addSubview(totalLabel)
        self.view.addSubview(amountTotalLabel)
        self.view.addSubview(totalStackView)
        self.view.addSubview(tipPerPersonLabel)
        self.view.addSubview(amountTipPerPersonLabel)
        self.view.addSubview(tipPerPersonStackView)
        self.view.addSubview(totalPerPersonLabel)
        self.view.addSubview(amountTotalPerPersonLabel)
        self.view.addSubview(totalPerPersonStackView)
        self.view.addSubview(calculateButton)
    }
    
    
    //MARK: - Views
    
    func constrainTitleLabel() {
        titleLabel.anchor(top: safeArea.topAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: 10, paddingBottom: 0, paddingLeft: 0, paddingRight: 0)
    }
    
    func constrainCalculatorImage() {
        calculatorImage.anchor(top: titleLabel.bottomAnchor, bottom: nil, leading: nil, trailing: nil, paddingTop: 0, paddingBottom: 0, paddingLeft: 0, paddingRight: 0, width: 125, height: 125)
        calculatorImage.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
    }
       
    func setupBillStackView() {
        billStackView.addArrangedSubview(billLabel)
        billStackView.addArrangedSubview(billTextField)
        
        billStackView.anchor(top: calculatorImage.bottomAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: SpacingConstants.topBottomPadding, paddingBottom: SpacingConstants.topBottomPadding, paddingLeft: SpacingConstants.rightLeftPadding, paddingRight: SpacingConstants.rightLeftPadding)
    }
    
    func constrainTipSegmentedView() {
        tipSegmentedView.anchor(top: billStackView.bottomAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: SpacingConstants.topBottomPadding, paddingBottom: SpacingConstants.topBottomPadding, paddingLeft: SpacingConstants.rightLeftPadding, paddingRight: SpacingConstants.rightLeftPadding)
    }
    
    func setupPersonsStackView() {
        personsStackView.addArrangedSubview(personsLabel)
        personsStackView.addArrangedSubview(numberPersonsSlider)
        personsStackView.addArrangedSubview(numberPersonsLabel)
        
        personsStackView.anchor(top: tipSegmentedView.bottomAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: SpacingConstants.topBottomPadding, paddingBottom: SpacingConstants.topBottomPadding, paddingLeft: SpacingConstants.rightLeftPadding, paddingRight: SpacingConstants.rightLeftPadding)
    }
    
    func setupTipStackView() {
        tipStackView.addArrangedSubview(tipLabel)
        tipStackView.addArrangedSubview(amountTipLabel)
        
        tipStackView.anchor(top: personsStackView.bottomAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: SpacingConstants.topBottomPadding * 2, paddingBottom: SpacingConstants.topBottomPadding, paddingLeft: SpacingConstants.rightLeftPadding, paddingRight: SpacingConstants.rightLeftPadding)
    }
    
    func setupTotalStackView() {
        totalStackView.addArrangedSubview(totalLabel)
        totalStackView.addArrangedSubview(amountTotalLabel)
        
        totalStackView.anchor(top: tipStackView.bottomAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: SpacingConstants.topBottomPadding, paddingBottom: SpacingConstants.topBottomPadding, paddingLeft: SpacingConstants.rightLeftPadding, paddingRight: SpacingConstants.rightLeftPadding)
    }
    
    func setupTipPerPersonStackView() {
        tipPerPersonStackView.addArrangedSubview(tipPerPersonLabel)
        tipPerPersonStackView.addArrangedSubview(amountTipPerPersonLabel)
        
        tipPerPersonStackView.anchor(top: totalStackView.bottomAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: SpacingConstants.topBottomPadding, paddingBottom: SpacingConstants.topBottomPadding, paddingLeft: SpacingConstants.rightLeftPadding, paddingRight: SpacingConstants.rightLeftPadding)
    }
    
    func setupTotalPerPersonStackView() {
        totalPerPersonStackView.addArrangedSubview(totalPerPersonLabel)
        totalPerPersonStackView.addArrangedSubview(amountTotalPerPersonLabel)
        
        totalPerPersonStackView.anchor(top: tipPerPersonStackView.bottomAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: SpacingConstants.topBottomPadding, paddingBottom: SpacingConstants.topBottomPadding, paddingLeft: SpacingConstants.rightLeftPadding, paddingRight: SpacingConstants.rightLeftPadding)
    }
    
    func constrainCalculateButton() {
        calculateButton.anchor(top: totalPerPersonStackView.bottomAnchor, bottom: nil, leading: nil, trailing: nil, paddingTop: SpacingConstants.topBottomPadding, paddingBottom: SpacingConstants.topBottomPadding, paddingLeft: 0, paddingRight: 0, width: 290, height: 44)
        calculateButton.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
    }
    
    

    //MARK: - Buttons, Labels, Images
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Tip Calculator"
        label.textAlignment = .center
        label.font = .preferredFont(forTextStyle: .title1)
        return label
    }()
    
    let calculatorImage: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "calculator")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let tipSegmentedView: UISegmentedControl = {
        let segmentedControl = UISegmentedControl()
        let segmentItems = ["15%", "18%", "20%"]
        let control = UISegmentedControl(items: segmentItems)
        segmentedControl.backgroundColor = #colorLiteral(red: 0, green: 0.6163903061, blue: 0.6053624575, alpha: 0.4286268626)
        //control.selectedSegmentIndex = 0
        //control.frame = CGRect(x: 10, y: 250, width: 400, height: 50)
        //control.addTarget(self, action: #selector(segmentControl(_:)), for: .valueChanged)
        //control.selectedSegmentIndex = 2
        //view.addSubview(control)
        return segmentedControl
    }()
    
//    @objc func segmentControl(_ segmentedControl: UISegmentedControl) {
//       switch (segmentedControl.selectedSegmentIndex) {
//          case 0:
//          break
//          case 1:
//          break
//          case 2:
//          break
//          default:
//          break
//       }
//    }
    
    let numberPersonsSlider: UISlider = {
        let slider = UISlider()
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 10
        slider.contentHorizontalAlignment = .center
        return slider
    }()
    
    let billTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "$0.00"
        textField.textAlignment = .right
        textField.keyboardType = .decimalPad
        return textField
    }()
    
    let billLabel: UILabel = {
        let label = UILabel()
        label.text = "Bill"
        return label
    }()
    
    let personsLabel: UILabel = {
        let label = UILabel()
        label.text = "Persons"
        return label
    }()
    
    let numberPersonsLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        return label
    }()
    
    let tipLabel: UILabel = {
        let label = UILabel()
        label.text = "Tip"
        return label
    }()
    
    let totalLabel: UILabel = {
        let label = UILabel()
        label.text = "Total"
        return label
    }()
    
    let tipPerPersonLabel: UILabel = {
        let label = UILabel()
        label.text = "Tip Per Person"
        return label
    }()
    
    let totalPerPersonLabel: UILabel = {
        let label = UILabel()
        label.text = "Total Per Person"
        return label
    }()
    
    let amountTipLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "$0.00"
        return label
    }()
    
    let amountTotalLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "$0.00"
        return label
    }()
    
    let amountTipPerPersonLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "$0.00"
        return label
    }()
    
    let amountTotalPerPersonLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "$0.00"
        return label
    }()
    
    let calculateButton: UIButton = {
        let button = UIButton()
        button.setTitle("CALCULATE", for: .normal)
        button.backgroundColor = Colors.buttonTeal
        button.contentHorizontalAlignment = .center
        return button
    }()

    
    
    //MARK: - Stack Views
    
    let billStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 120
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let personsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 13
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let tipStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 183
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let totalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 170
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let tipPerPersonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 96
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let totalPerPersonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 83
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let topHalfStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 30
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let bottomHalfStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 27
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let entireStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 30
        stackView.contentMode = .scaleToFill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    //TIFFSAKA - entireStackView
    
}//End of class
