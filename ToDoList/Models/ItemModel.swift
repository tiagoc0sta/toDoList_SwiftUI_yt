//
//  ItemModel.swift
//  ToDoList
//
//  Created by Tiago de Freitas Costa on 2024-07-29.
//

import Foundation

//Immutable Struc - use let because of that
struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompetion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
