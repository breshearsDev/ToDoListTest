//
//  ContentView.swift
//  ToDoListTest
//
//  Created by Breshears, Rob - CTC on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(TodoListManager.self) var manager
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(manager.items) { item in
                    NavigationLink {
                        TodoDetailView(item: item)
                    } label: {
                        HStack {
                            Image(systemName: item.isComplete ? "checkmark.circle.fill" : "circle")
                            Text(item.title)
                                .strikethrough(item.isComplete, pattern: .solid, color: .secondary)
                        }
                    }
                }
                .onDelete(perform: manager.deleteItem)
            }
            .navigationTitle(Text("To-Do List"))
            .toolbar {
                EditButton()
                Button("Add") {
                    manager.addItem(title: "New Item")
                }
            }
        }
    }
}

#Preview {
    let mockManager = TodoListManager()
    
    return NavigationStack {
        ContentView()
    }
        .environment(mockManager)
}
