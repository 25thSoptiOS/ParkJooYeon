//
//  ViewController.swift
//  semi2_세번째 실습
//
//  Created by 박주연 on 12/10/2019.
//  Copyright © 2019 박주연. All rights reserved.


// 아이폰8+ 기준으로 만듬.
// 아이폰 11로 돌리면 키보드 자판이 보이지 않음.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signBtn: UIButton!
    @IBOutlet weak var stackviewcenterY: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            addKeyboardObserver()
            id.delegate = self
            password.delegate = self
        
        loginBtn.layer.borderWidth = 1
        loginBtn.layer.borderColor = UIColor.white.cgColor
        loginBtn.layer.cornerRadius =  17;
        }
    }

     extension ViewController:
     UITextFieldDelegate{
        private func addKeyboardObserver(){
            NotificationCenter.default.addObserver(self, selector:#selector(upKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
            
            NotificationCenter.default.addObserver(self, selector:#selector(downKeyboard), name: UIResponder.keyboardDidHideNotification, object: nil)
        }
        
           @objc func upKeyboard() {
               self.view.frame.origin.y = -150
           }
           
           @objc func downKeyboard() {
               self.view.frame.origin.y = 0
           }
           
           override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
               self.view.endEditing(true)
           }
        
    }
