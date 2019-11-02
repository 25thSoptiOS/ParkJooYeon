//
//  ResponseString.swift
//  SOPT_week2_exercise3
//
//  Created by 박주연 on 02/11/2019.
//  Copyright © 2019 윤동민. All rights reserved.
//

import Foundation

// MARK: - ResponseString
// 성공했을 때 response body
struct ResponseString: Codable {
    let success: Bool
    let message: String
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let userIdx: Int
    let id, password, name, phone: String
}
