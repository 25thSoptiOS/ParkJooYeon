//
//  Response.swift
//  SOPT_week2_exercise3
//
//  Created by 박주연 on 02/11/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import Foundation

import Foundation

// MARK: - Response
// 성공했을 때 response body
struct Response: Codable {
    let success: Bool
    let message: String
    let data: Int
}

