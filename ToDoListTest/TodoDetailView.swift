//
//  TodoDetailView.swift
//  ToDoListTest
//
//  Created by Breshears, Rob - CTC on 11/3/25.
//

import SwiftUI

struct TodoDetailView: View {
    var item: TodoItem
    
    var body: some View {
        Form {
            @Bindable var item = item
            
            TextField("Task Name", text: $item.title)
                .font(.headline)
            
            Toggle("Complete", isOn: $item.isComplete)
        }
        .padding()
        .navigationTitle(item.title)
    }
}

#Preview {
    let mockItem = TodoItem(title: "preview Task", isComplete: false)
    return NavigationStack {
        TodoDetailView(item: mockItem)
    }
    
}
