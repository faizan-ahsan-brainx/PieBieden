//
//  UITextField.swift
//  PieBiden
//
//  Created by BrainX on 17/06/2022.
//

import Foundation
import UIKit

// MARK: UITextField Extension
extension UITextField {
    // MARK: UITextField Exteneded Functions
    func setIcon(_ image: UIImage) {
        let iconView = UIImageView(frame:
                                    CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame:
                                                CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}
