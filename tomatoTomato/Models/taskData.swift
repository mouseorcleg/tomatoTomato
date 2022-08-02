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
    var type: String
    
    init(id: UUID = UUID(), title: String, size: Int, type: String) {
        self.id = id
        self.title = title
        self.size = size
        self.type = type
    }
}

extension TaskData {
    struct Data {
        var title: String = ""
        var size: Int = 1
        var type: String = ""
    }

    var data: Data {
        Data(title: title, size: Int(size), type: type)
    }
    
    init(data: Data) {
        id = UUID()
        title = data.title
        size = Int(data.size)
        type = data.type
    }
}

extension TaskData {
    static let sampleData: [TaskData] =
    [
        TaskData(title: "", size: 1, type: "Mail"),
        TaskData(title: "Finish your code", size: 5, type: "Develop")
    ]
}
