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
    @Published var size: String
    @Published var type: String
    
    init(title: String, size: String, type: String) {
        var model = tomatoTaskModel(id: nil, title: "", size: TomatoSize.L, type: TomatoType.research)
        
        self.title = model.title
        self.size = model.size.name
        self.type = model.type.name
    
    }
    
//    func createNewTask() {
//
//        do {
//            var model = tomatoTaskModel(id: nil, title: "", size: TomatoSize.S, type: TomatoType.research)
//
//            DispatchQueue.main.async {
//                self.title = model.title
//                self.size = model.size.name
//                self.type = model.type.name
//            }
//
//        } catch {
//            print("Can't create NewTaskViewModel")
//            return
//        }
//    }
}



