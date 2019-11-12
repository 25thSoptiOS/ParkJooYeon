//
//  NewViewController.swift
//  semi1.5
//
//  Created by 박주연 on 03/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   @IBAction func updateColor(_ sender: UISlider) {
   self.view.backgroundColor = UIColor.init(red: CGFloat(self.sliderRed.value),
       green: CGFloat(self.sliderGreen.value),
       blue: CGFloat(self.sliderBlue.value),
       alpha: 1.0)
    
}

}
