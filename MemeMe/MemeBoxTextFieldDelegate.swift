//
//  MemeBoxTextFieldDelegate.swift
//  MemeMe
//
//  Created by Fai Wu on 8/31/17.
//  Copyright © 2017 Fai Wu. All rights reserved.
//

import UIKit
// MARK: MemeBoxTextFieldDelegate: NSObject, UITextFieldDelegate 
class MemeBoxTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == "TOP" || textField.text == "BOTTTOM" {
            textField.text = ""
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
