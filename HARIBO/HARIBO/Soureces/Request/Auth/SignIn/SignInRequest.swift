//
//  Request.swift
//  HARIBO
//
//  Created by 김주은 on 2023/06/21.
//

import Foundation

struct SignInRequest: Codable {
    let code: String
    
    init(code: String) {
        self.code = code
    }
}
