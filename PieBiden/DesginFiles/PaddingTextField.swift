//
//  PaddingTextField.swift
//  PieBiden
//
//  Created by BrainX on 16/06/2022.
//

import Foundation
import UIKit
class TextFieldWithPadding: UITextField {
    var textPadding = UIEdgeInsets(
        top: 15,
        left: 10,
        bottom: 15,
        right: 10
    )

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
}
