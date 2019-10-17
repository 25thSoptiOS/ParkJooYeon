//
//  ViewController.swift
//  helloWorld
//
//  Created by 박주연 on 28/09/2019.
//  Copyright © 2019 박주연. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goNext(_ sender: Any) {
        self.Label.text = "SOPT!"
        
    }
}

