//
//  Banner.swift
//  assignment3
//
//  Created by 박주연 on 31/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import Foundation
import UIKit

struct Banner {
    var bannerImg: UIImage?
    
    init(bannerName: String){
        self.bannerImg = UIImage(named: bannerName)
    }
}
