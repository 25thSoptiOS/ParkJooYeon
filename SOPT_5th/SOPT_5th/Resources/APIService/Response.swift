//
//  Response.swift
//  SOPT_5th
//
//  Created by 박주연 on 23/11/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation


// MARK: - Response
// 성공했을 때 response body
struct Response: Codable {
    let success: Bool
    let message: String
    let data: Int
}
