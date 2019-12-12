//
//  ApIConstants.swift
//  SOPT_5th
//
//  Created by 박주연 on 23/11/2019.
//  Copyright © 2019 ns. All rights reserved.
//

struct APIConstants {
    
    // 전역 변수로 사용할 수 있게 APIConstants 선언하여 사용
    static let BaseURL = "http://106.10.59.71:3000/users"
    
    /* 유저(UserInformation) */
    static let UserInfoURL = BaseURL + "/userinfo" // 유저정보
    //static let SignupURL = BaseURL + "/signup" // 회원가입
    
    /* 실시간 인기글 (BoardPopular) */
    static let BoardPopularURL = BaseURL + "/boardpopular"
}
