//
//  AppDatabase.swift
//  tomatoTomato
//
//  Hugely inspared by GRDB sample app: https://github.com/groue/GRDB.swift/blob/master/Documentation/DemoApps/GRDBDemoiOS/GRDBDemoiOS/
//
//  Created by Maria Kharybina on 31/10/2022.
//

import GRDB

final class AppDatabase {
    
    init(_ dbWriter: any DatabaseWriter) throws {
        self.dbWriter = dbWriter
        try migrator.migrate(dbWriter)
    }
    
    private let dbWriter: any DatabaseWriter
    
    
    private var migrator: DatabaseMigrator {
        var migrator = DatabaseMigrator()
        
        #if DEBUG
        
        migrator.eraseDatabaseOnSchemaChange = true
        
        #endif
        
        // Create a table
        migrator.registerMigration("createTasks") { db in
            
            try db.create(table: "tomatoTask") { t in
                t.autoIncrementedPrimaryKey("id")
                t.column("title", .text).notNull()
                t.column("size", .integer).defaults(to: "2")
                t.column("type", .text).defaults(to: "Mail")
                
            }
        }
        
        return migrator
    }
}

// write into db

extension AppDatabase {
    
    func saveTask(_ tomatoTask: inout tomatoTaskDbModel) throws {
        try dbWriter.write { db in
            try tomatoTask.save(db)
        }
    }
    
    
    func deleteTasks(ids: [Int64]) throws {
        try dbWriter.write { db in
            _ = try tomatoTask.deleteAll(db, ids: ids)
        }
    }
    
    
    func deleteAllTaska() throws {
        try dbWriter.write { db in
            _ = try tomatoTask.deleteAll(db)
        }
    }
    
    
    func createRandomTasksIfEmpty() throws {
        try dbWriter.write { db in
            if try tomatoTask.all().isEmpty(db) {
                try createRandomTasks(db)
            }
        }
    }
    
    
    private func createRandomTasks(_ db: Database) throws {
        for _ in 0..<8 {
            _ = try tomatoTask.makeRandom().inserted(db) // insert but ignore inserted id
        }
    }
}

// Reading without editing for db
extension AppDatabase {
    
    var databaseReader: DatabaseReader {
        dbWriter
    }
}
