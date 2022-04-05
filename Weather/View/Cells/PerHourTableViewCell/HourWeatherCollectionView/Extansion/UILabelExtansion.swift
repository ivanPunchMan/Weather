//
//  UILabelExtansion.swift
//  Weather
//
//  Created by Admin on 05.04.2022.
//

import Foundation
import UIKit


extension UILabel {
    convenience init(text: String, fontSize: CGFloat) {
        self.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        adjustsFontSizeToFitWidth = true
        
        let fontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: .body)
        let font = UIFont(descriptor: fontDescriptor, size: fontSize)
        let attributedText = NSMutableAttributedString.init(string: text)
        attributedText.addAttributes([NSAttributedString.Key.font : font], range: NSRange(location: 0, length: attributedText.length))
        
        self.attributedText = attributedText
    }
}
