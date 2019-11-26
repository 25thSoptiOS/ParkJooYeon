//
//   ResponseStringBoardPopular.swift
//  SOPT_5th
//
//  Created by 박주연 on 23/11/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation

struct ResponseStringBoardPopular: Codable {
    let status: Int
    let success: Bool
    let message: String
    let data: [BoardPopular]
}

// MARK: - Datum
struct BoardPopular: Codable {
    let boardCategory, boardID, boardContent: String
    let boardLikeCount, boardCommentCount: Int
    let boardDate: String

    enum CodingKeys: String, CodingKey {
        case boardCategory = "board_category"
        case boardID = "board_id"
        case boardContent = "board_content"
        case boardLikeCount = "board_like_count"
        case boardCommentCount = "board_comment_count"
        case boardDate = "board_date"
    }
}
