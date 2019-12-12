//
//  ViewController.swift
//  semi7_SocialLogin
//
//  Created by 박주연 on 07/12/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let loginBtn = FBLoginButton()
        loginBtn.permissions = ["email"]
        loginBtn.center = view.center
        view.addSubview(loginBtn)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(animated)
        getAccessToken()
    }
    
    func getAccessToken() {
    guard let token = AccessToken.current else {return}
        print("### AccessToken ####")
        print(token)
        print("### AccessToken ####")
    }

}

