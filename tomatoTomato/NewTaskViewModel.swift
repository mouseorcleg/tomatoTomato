//
//  NewTaskViewModel.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 17/11/2022.
//

import Foundation

// Data needed by view, when it updates, view updates as well
class NewTaskViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var size: Int = 3
    @Published var type: String
}



