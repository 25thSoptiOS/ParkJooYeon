//
//  SignupService.swift
//  SOPT_week2_exercise3
//
//  Created by 박주연 on 02/11/2019.
//  Copyright © 2019 박주연. All rights reserved.
//

import Foundation
import Alamofire

class SignupService {
    
    static let shared = SignupService()
    
    func signup(_ id: String, _ pwd: String, _ name: String, _ phone: String, completion: @escaping (NetworkResult<Any>) -> Void) {
        
        let header: HTTPHeaders = [
            "Content-Type" : "application/json"
        ]
        
        let body: Parameters = [
            "id": id,
            "pwd": pwd,
            "name": name,
            "phone": phone
        ]
        
        Alamofire.request(APIConstants.LoginURL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
            .responseData { response in
                
                //                print("request", response.request)
                //                print("response", response.response)
                //                print("data", response.data)
                //                print("result", response.result)
                
                switch response.result {
                    
                case .success:
                    if let value = response.result.value {
                        
                        if let status = response.response?.statusCode {
                            switch status {
                            case 200:
                                do {
                                    let decoder = JSONDecoder()
                                    print("value", value)
                                    let result = try decoder.decode(ResponseString.self, from: value)
                                    
                                    // ResponseString에 있는 success로 분기 처리
                                    switch result.success {
                                        
                                    case true:
                                        print("success")
                                        completion(.success(result.data))
                                    case false:
                                        completion(.requestErr(result.message))
                                    }
                                }
                                catch {
                                    completion(.pathErr)
                                    print(error.localizedDescription)
                                    print(APIConstants.LoginURL)
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
                    
                // 네트워크 통신 실패
                case .failure(let err):
                    print(err.localizedDescription)
                    completion(.networkFail)
                    // .networkFail이라는 반환 값이 넘어감
                    break
                } // response.result switch
        } // alamofire.request
} // func login
} // struct
