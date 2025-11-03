//
//  TodoItemModel.swift
//  ToDoListTest
//
//  Created by Breshears, Rob - CTC on 11/3/25.
//

import SwiftUI

@Observable
final class TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var isComplete: Bool
    
    init(title: String, isComplete: Bool = false) {
        self.title = title
        self.isComplete = isComplete
    }
}
