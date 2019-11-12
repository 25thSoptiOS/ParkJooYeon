//
//  ViewController.swift
//  semi1.5
//
//  Created by 박주연 on 03/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    let onImg = UIImage(named: "candle-on.jpg")
    let offImg = UIImage(named: "candle-off.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func isOn(_ sender: UISwitch) {
        if sender.isOn {
            label.text = "Candle is On"
            image.image = onImg
        }
        else{
            label.text = "Candle is Off"
            image.image = offImg
              
        }
    }

}

