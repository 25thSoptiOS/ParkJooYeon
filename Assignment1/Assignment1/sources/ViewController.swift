//
//  ViewController.swift
//  Assignment1
//
//  Created by 박주연 on 02/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickbtn: UIButton!
    @IBOutlet weak var label1: UILabel!
 
    var btn : Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickButton(_ sender: Any) {
        
        if btn == false{
        let image = UIImage(named: "빨강하트.png")
        clickbtn.setImage(image, for: .normal)
        label1.text = "sopt.iOS.Lover 님이 좋아합니다"
            btn = true
        }
            
        else{
            let image = UIImage(named: "검정하트.png")
            clickbtn.setImage(image, for: .normal)
            label1.text = "                      "
            btn = false
        }
        
    }
    
}

