//
//  UIImageViewExtension.swift
//  Weather
//
//  Created by Admin on 04.04.2022.
//

import Foundation
import UIKit

extension UIImageView {
    convenience init(imageName: String) {
        self.init(frame: .zero)
        image = UIImage(named: imageName)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
