//
//  Persistance.swift
//  tomatoTomato
//
//  Thanks GRDB for clear instructions!
//  Created by Maria Kharybina on 31/10/2022.
//

import Foundation
import GRDB

extension AppDatabase {
    
    static let shared = makeShared()
    
    private static func makeShared() -> AppDatabase {
        do {
            let fileManager = FileManager()
            let folderURL = try fileManager
                .url(for: .applicationSupportDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                .appendingPathComponent("database", isDirectory: true)
            try fileManager.createDirectory(at: folderURL, withIntermediateDirectories: true)
            
            let dbURL = folderURL.appendingPathComponent("db.sqlite")
            let dbQueue = try DatabaseQueue(path: dbURL.path)
            
            // Create the AppDatabase
            let appDatabase = try AppDatabase(dbQueue)
            
            // Populate the database if it is empty, for better demo purpose - not yet sure if I need it
            // try appDatabase.createRandomPlayersIfEmpty()
            
            return appDatabase
        } catch {
            // Get back here when you start working on error handling

            fatalError("Unresolved error \(error)")
        }
    }
}
