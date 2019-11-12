//
//  seg2ViewController.swift
//  semi1.5
//
//  Created by 박주연 on 03/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class seg2ViewController: UIViewController {

    
    var info: String!
    var selectedSegmentIndex: Int!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var seg2: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contentString = info
        {
            label2.text = contentString
        }
        
        if let whichSelect = selectedSegmentIndex{
           seg2.selectedSegmentIndex = whichSelect
        }

       
    }
    

   
}
