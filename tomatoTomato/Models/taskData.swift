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
    var size: Int
    
    init(id: UUID = UUID(), title: String, size: Int) {
        self.id = id
        self.title = title
        self.size = size
    }
}

extension TaskData {
    static let sampleData: [TaskData] =
    [
        TaskData(title: "", size: 1),
        TaskData(title: "Finish your code", size: 5)
    ]
}
