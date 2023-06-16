//
//  TodoAppApp.swift
//  TodoApp
//
//  Created by Sae Sakamoto on 2023/06/12.
//

import SwiftUI

@main
struct TodoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(UserData())
        }
    }
}
