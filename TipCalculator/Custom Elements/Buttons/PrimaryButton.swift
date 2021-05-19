//
//  PrimaryButton.swift
//  TipCalculator
//
//  Created by Tiffany Sakaguchi on 5/17/21.
//

import UIKit


class PrimaryButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupButton()
    }
    
    func setupButton() {
        updateFontTo(font: FontNames.trebuchetBold)
        setTitleColor(.white, for: .normal)
        self.backgroundColor = Colors.buttonTeal
        self.addCornerRadius()
        
    }
    
    func updateFontTo(font: String) {
        guard let size = self.titleLabel?.font.pointSize else { return }
        self.titleLabel?.font = UIFont(name: font, size: size)
    }
}
