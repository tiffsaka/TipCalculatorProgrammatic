//
//  StyleGuide.swift
//  TipCalculator
//
//  Created by Tiffany Sakaguchi on 5/17/21.
//

import UIKit

extension UIView {

    func addCornerRadius(_ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
    }
}

struct Colors {
    static let buttonTeal = UIColor(named: "buttonTeal")
}

struct FontNames {
    static let trebuchetBold = "TrebuchetMS-Bold"
}
