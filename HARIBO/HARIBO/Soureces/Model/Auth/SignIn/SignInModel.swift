//
//  SignInModel.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/21.
//

import Foundation

struct SignInModel: Codable {
    let data: SignInResponse
}

struct SignInResponse: Codable {
    let accessToken: String
    let refreshToken: String
    let accessTokenExp: String
    let refreshTokenExp: String
    let authority: String
}
