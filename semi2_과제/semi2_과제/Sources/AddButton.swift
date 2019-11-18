//
//  AddButton.swift
//  semi2_과제
//
//  Created by 박주연 on 13/11/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

@IBDesignable
class AddButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
}
    


