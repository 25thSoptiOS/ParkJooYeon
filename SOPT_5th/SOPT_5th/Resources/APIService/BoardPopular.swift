//
//  BoardPopular.swift
//  SOPT_5th
//
//  Created by 박주연 on 23/11/2019.
//  Copyright © 2019 ns. All rights reserved.
//

import Foundation
import Alamofire

class BoardPopular {
    private init() {}
   
    static let shared = BoardPopular()
    
    //escaping closure 서버로부터 반환이 된 다음에 실행이 된다.
    func boardpopular( completion: @escaping (NetworkResult<Any>) -> Void) {
        
        //_ status: Int, _ success: Bool, _ message: String, _ data : Array<Any>,  completion:
        
        let header: HTTPHeaders = [
            "Content-Type" : "application/json"
        ]

        //        let body: Parameters = [
        //            "status":status,
        //            "success": success,
//            "message": message,
//            "data": data
//        ]
        // 아래 method상태가 get이므로 body가 필요없다.
        // 만약 method상태가 post라면 아래 코드_encoding전에 parameter: body를 추가해야한다.
        
        let url = APIConstants.BoardPopularURL
        
        Alamofire.request(url).responseJSON{
        response in
                
                //                print("request", response.request)
                //                print("response", response.response)
                //                print("data", response.data)
                //                print("result", response.result)
                // parameter 위치
                switch response.result {
                    
                // 통신 성공 - 네트워크 연결
                case .success:
                    if let value = response.result.value {
                        
                        if let status = response.response?.statusCode {
                            switch status {
                            case 200:
                                do {
                                    let decoder = JSONDecoder()
                                    print("value", value)
                                    let result = try decoder.decode(ResponseStringBoardPopular.self, from: value as! Data)
                                    
                                    // ResponseString에 있는 success로 분기 처리
                                    completion(.success(result))
                                    }
                                
                                catch {
                                    completion(.pathErr)
                                    print(error.localizedDescription)
                                    print(APIConstants.BoardPopularURL)
                                }
                            case 400:
                                completion(.pathErr)
                            case 500:
                                completion(.serverErr)
                            default:
                                break
                            }// switch
                        }// iflet
                    }
                    break
                    
                // 통신 실패 - 네트워크 연결
                case .failure(let err):
                    print(err.localizedDescription)
                    completion(.networkFail)
                    // .networkFail이라는 반환 값이 넘어감
                    break
                } // response.result switch
        } // alamofire.request
    } // func login
} // struct
