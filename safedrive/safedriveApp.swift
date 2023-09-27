//
//  safedriveApp.swift
//  safedrive
//
//  Created by 澤木柊斗 on 2023/09/16.
//

import SwiftUI

@main
struct safedriveApp: App {
    private let persistence = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            LaunchScreen().environment(\.managedObjectContext, persistence.container.viewContext)

        }
    }
}
