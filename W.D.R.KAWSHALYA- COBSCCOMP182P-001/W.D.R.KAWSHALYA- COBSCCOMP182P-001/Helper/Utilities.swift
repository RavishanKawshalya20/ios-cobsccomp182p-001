//
//  Utilities.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 01/03/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import Foundation
import UIKit


class Utilities{
    
    static func styleTextField(_ textfield:UITextField){
        
        // bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0 , y: textfield.frame.height - 2, width: textfield.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green:  173/255, blue:  99/255, alpha: 1).cgColor
        
        //remove borders
        textfield.borderStyle = .none
        
        // add line to textfield
        textfield.layer.addSublayer(bottomLine)
        
    }
    
    static func styleFilledButton(_ button:UIButton){
        
        // filled rouned corner style
        button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue:  99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
    }
    
    static func styleHellowButton(_ button:UIButton){
        
        // filled rouned corner style
        //button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue:  99/255, alpha: 1)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
    }

    static func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
         return passwordTest.evaluate(with: password)
     }

}
