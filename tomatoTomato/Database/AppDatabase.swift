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
            
            try db.create(table: "Tasks") { t in
                t.autoIncrementedPrimaryKey("id")
                t.column("title", .text).notNull()
                t.column("size", .integer).defaults(to: "2")
                t.column("type", .text).defaults(to: "Mail")
                
            }
        }
        
        return migrator
    }
}
