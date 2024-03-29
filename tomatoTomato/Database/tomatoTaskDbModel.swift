//
//  tomatoTaskDbModel.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 30.07.22.
//

import Foundation
import GRDB

struct tomatoTaskDbModel: Identifiable, Hashable {
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

// Creates a new task with empty title
extension tomatoTaskDbModel {
    static func new() -> tomatoTaskDbModel {
        tomatoTaskDbModel(id: nil, title: "", size: 2, type: "Mail")
    }
    
    // Creates a new task with random parameters
    static func makeRandom() -> tomatoTaskDbModel {
        tomatoTaskDbModel(id: nil, title: randomTitle(), size: randomSize(), type: randomType())
    }
    
    // returns a random title
    static func randomTitle() -> String {
        titles.randomElement()!
    }
    
    // returns a random size
    
    static func randomSize() -> Int {
        Int.random(in: 1...5)
    }
    
    static func randomType() -> String {
        types.randomElement()!
    }
}

// Random task creation - for debug & demo purpose

extension tomatoTaskDbModel {
    private static let titles = [
        "Take a nap", "Go for a walk", "Try meditation", "Netflix & tea", "Yoga practice", "Make yourself a nice cup of tea", "Plan a weekend in museums", "Meet a friend for coffee", "Hug your favorite person", "Pet a dog", "Compliment some stranger", "Listen to ypur favorite music", "Read a book for 15 min", "Bye a tickets to Opera", "Go for dogwathing"
    ]
    private static let types = [
        "Mail", "Develope", "Launch", "Meet", "Plan", "Research", "Review", "Test"
    ]
}

// Makes tomatoTaskDbModel a Codable Record.

extension tomatoTaskDbModel: Codable, FetchableRecord, MutablePersistableRecord {
    
    fileprivate enum Columns {
        static let title = Column(CodingKeys.title)
        static let size = Column(CodingKeys.size)
        static let type = Column(CodingKeys.type)
    }
    
    mutating func didInsert(_ inserted: InsertionSuccess) {
        id = inserted.rowID
    }
}

// A few queries to the db that we will need in the future

extension DerivableRequest<tomatoTaskDbModel> {
    
    func orderedBySize() -> Self {
        // Sort by descending size of the task
        
        order(
            tomatoTaskDbModel.Columns.size.desc)
    }
}

extension tomatoTaskDbModel {
    static var sampleData: [tomatoTaskDbModel] =
    [
        tomatoTaskDbModel(id: 1, title: "", size: 2, type: "Mail"),
        tomatoTaskDbModel(id: 2, title: "Finish your code", size: 5, type: "Develop")
    ]
}
