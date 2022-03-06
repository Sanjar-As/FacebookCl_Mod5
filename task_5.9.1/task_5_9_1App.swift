//
//  task_5_9_1App.swift
//  task_5.9.1
//
//  Created by Sanjar Aslonov on 03/03/22.
//

import SwiftUI

@main
struct task_5_9_1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
