//
//  ViewController.swift
//  semi2_첫 번째 실습
//
//  Created by 박주연 on 17/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var pinkBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
        
    }

}

