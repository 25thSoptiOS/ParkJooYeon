//
//  ResponseString.swift
//  SOPT_5th
//
//  Created by 박주연 on 23/11/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

// MARK: - ResponseString
// 성공했을 때 response body
struct ResponseStringUserInfo: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: UserInfo
}

// MARK: - UserInfo
struct UserInfo: Codable {
    let userName, userUniv: String
    let postingCount, commentCount, scrapCount: Int
    let userImage: String

    enum CodingKeys: String, CodingKey {
        case userName = "user_name"
        case userUniv = "user_univ"
        case postingCount = "posting_count"
        case commentCount = "comment_count"
        case scrapCount = "scrap_count"
        case userImage = "user_image"
    }
}



