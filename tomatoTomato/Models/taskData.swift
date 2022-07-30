//
//  taskData.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 30.07.22.
//

import Foundation

struct TaskData: Identifiable, Codable {
    let id: UUID
    var title: String
    
    init(id: UUID = UUID(), title: String) {
        self.id = id
        self.title = title
    }
}

extension TaskData {
    static let sampleData: [TaskData] =
    [
        TaskData(title: "Finish your code")
    ]
}
