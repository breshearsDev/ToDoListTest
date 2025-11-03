//
//  TodoListManager.swift
//  ToDoListTest
//
//  Created by Breshears, Rob - CTC on 11/3/25.
//

import SwiftUI

@Observable
final class TodoListManager {
    var items: [TodoItem] = [
        TodoItem(title: "Buy milk"),
        TodoItem(title: "Walk the Dog", isComplete: true),
        TodoItem(title: "Finish SwiftUI Project")
    ]
    
    func addItem(title: String) {
        items.append(TodoItem(title: title))
    }
    
    func deleteItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
