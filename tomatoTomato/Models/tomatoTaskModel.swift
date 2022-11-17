//
//  tomatoTaskModel.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 17/11/2022.
//

import Foundation

struct tomatoTaskModel: Codable {
    let id: Int64?
    let title: String
    let size: TomatoSize
    let type: TomatoType
}

enum TomatoType: String, Codable {
    case mail
    case develop
    case launch
    case meet
    case plan
    case research
    case review
    case test
    
    var name: String {
           rawValue.capitalized
       }
}

enum TomatoSize: String, Codable {
    case XS
    case S
    case M
    case L
    case XL

    var name: String {
        rawValue
    }
        
    func countTomatos() -> Int {
        switch self {
        case .XS:
            return 1
        case .S:
            return 2
        case .M:
            return 3
        case .L:
            return 4
        case .XL:
            return 5
        }
    }
}



