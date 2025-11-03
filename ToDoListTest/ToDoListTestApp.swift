//
//  ToDoListTestApp.swift
//  ToDoListTest
//
//  Created by Breshears, Rob - CTC on 11/3/25.
//

import SwiftUI

@main
struct ToDoListTestApp: App {
    @State private var manager = TodoListManager()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(manager)
        }
    }
}
