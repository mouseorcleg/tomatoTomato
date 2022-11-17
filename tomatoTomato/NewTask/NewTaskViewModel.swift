//
//  NewTaskViewModel.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 17/11/2022.
//

import Foundation

// Data needed by view, when it updates, view updates as well
class NewTaskViewModel: ObservableObject {
    
    @Published var title: String 
    @Published var size: TomatoSize
    @Published var type: TomatoType
    
    init(title: String = "DEFAULT TITLE", size: TomatoSize = TomatoSize.L, type: TomatoType = TomatoType.research) {
        self.title = title
        self.size = size
        self.type = type
    }
}



