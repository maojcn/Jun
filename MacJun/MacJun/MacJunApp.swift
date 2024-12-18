//
//  MacJunApp.swift
//  MacJun
//
//  Created by Jiacheng Mao on 2024/10/24.
//

import SwiftUI
import SwiftData

@main
struct MacJunApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            WhisperModel.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
