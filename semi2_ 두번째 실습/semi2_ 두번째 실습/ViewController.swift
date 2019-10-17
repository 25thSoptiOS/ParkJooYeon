//
//  ViewController.swift
//  semi2_ 두번째 실습
//
//  Created by 박주연 on 17/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      @IBOutlet weak var emailTF: UITextField!
      @IBOutlet weak var autoChangeLabel: UILabel!
      @IBOutlet weak var autoChangeSwitch: UISwitch!
      @IBOutlet weak var autoChangeMinuteLabel: UILabel!
      @IBOutlet weak var autoChangeMinuteStepper: UIStepper!
      
      var updateBool = true
      var intervalTime = 0
      
      override func viewDidLoad() {
          super.viewDidLoad()
      
          
      }
      
  @IBAction func upgradeClick(_ sender: Any) {
      if autoChangeSwitch.isOn {
          self.autoChangeLabel.text = "자동갱신 켜짐"
          updateBool = true
     } else {
          self.autoChangeLabel.text = "자동갱신 꺼짐"
          updateBool = false
     }
  }
      
      @IBAction func stepper(_ sender: UIStepper) {
          intervalTime = Int(sender.value)
          autoChangeMinuteLabel.text = String(intervalTime) + " 분 마다"
          
      }
      
      @IBAction func summitBtnTouch(_ sender: Any) {
          guard let view = self.storyboard?.instantiateViewController(identifier: "ViewController2") as? ViewController2 else {
              return
          }
          
          view.paramEmail = self.emailTF.text!
          view.paramUpdate = self.autoChangeSwitch.isOn
          view.paramInterval = self.autoChangeMinuteStepper.value
          
          self.present(view, animated: true)
      }
      
  }


