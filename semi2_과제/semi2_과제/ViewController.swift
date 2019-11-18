//
//  ViewController.swift
//  semi2_과제
//
//  Created by 박주연 on 25/10/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel! //!를 붙여주면 값을 암묵적으로 추출해서 누구든 자유롭게 쓸수 있게 하겠다는 뜻, 만약 nil이면 앱이 멈춘다.
    
    //스위프트에서는 모든 변수가 초기값을 가져야 한다!
    var userIsInTheMiddleOfTyping: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //숫자 눌렀을 때
    @IBAction func clickBtn(_ sender: UIButton) {
        
        let digit = sender.currentTitle! //!를 붙여줘서 옵셔널 -> stirng 타입으로 바꿈.

        
        if(userIsInTheMiddleOfTyping){
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }
        else{
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
        
    }
}

