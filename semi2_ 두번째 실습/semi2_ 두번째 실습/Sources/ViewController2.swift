//
//  ViewController2.swift
//  semi2_ 두번째 실습
//
//  Created by 박주연 on 18/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

       @IBOutlet weak var resultEmail: UILabel!
       @IBOutlet weak var resultUpdate: UILabel!
       @IBOutlet weak var resultInterval: UILabel!
       
          var paramEmail: String = ""
          var paramUpdate: Bool = false
          var paramInterval: Double = 0

       override func viewDidLoad() {
           super.viewDidLoad()
           
           self.resultEmail.text = paramEmail
           self.resultUpdate.text = (self.paramUpdate == true ? "자동갱신" : "자동갱신안함")
           self.resultInterval.text = "\(Int(paramInterval)) 분 마다 갱신"

         
       }
       
       @IBAction func backBtn(_ sender: Any) {
            self.presentingViewController?.dismiss(animated: true, completion: nil)
       }
       
       

   }
