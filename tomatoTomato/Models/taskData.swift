//
//  taskData.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 30.07.22.
//

import Foundation
import GRDB

struct TaskData: Identifiable, Hashable {
    var id: Int64?
    var title: String
    var size: Int
    var type: String
    
    init(id: Int64?, title: String, size: Int, type: String) {
        self.id = id
        self.title = title
        self.size = size
        self.type = type
    }
}

//Creates a new task
extension TaskData {
    static func new() -> TaskData {
        TaskData(id: nil, title: "", size: 2, type: "Mail")
    }
}

// Makes TaskData a Codable Record.

extension TaskData: Codable, FetchableRecord, MutablePersistableRecord {
    
    fileprivate enum Columns {
        static let title = Column(CodingKeys.title)
        static let size = Column(CodingKeys.size)
        static let type = Column(CodingKeys.type)
    }
    
    mutating func didInsert(_ inserted: InsertionSuccess) {
        id = inserted.rowID
    }
}




extension TaskData {
    static var sampleData: [TaskData] =
    [
        TaskData(id: 1, title: "", size: 1, type: "Mail"),
        TaskData(id: 2, title: "Finish your code", size: 5, type: "Develop")
    ]
}
