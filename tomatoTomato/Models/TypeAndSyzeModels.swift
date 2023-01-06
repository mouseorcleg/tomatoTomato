//
//  TypeAndSizeModels.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 17/11/2022.
//

import Foundation

enum TomatoType: String, Codable, CaseIterable, Identifiable {
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
    
    var id: Self { self }
}

enum TomatoSize: String, CaseIterable, Codable, Identifiable {
    case XS
    case S
    case M
    case L
    case XL

    var name: String {
        rawValue
    }
    
    var id: Self { self }
        
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



