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
        migrator.registerMigration("createTask") { db in
            
            try db.create(table: "task") { t in
                t.autoIncrementedPrimaryKey("id")
                t.column("title", .text).notNull()
                t.column("size", .text).defaults(to: "S")
                t.column("type", .text).defaults(to: "Mail")
                
            }
        }
        
        return migrator
    }
}

