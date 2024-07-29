//
//  ItemModel.swift
//  ToDoList
//
//  Created by Tiago de Freitas Costa on 2024-07-29.
//

import Foundation


struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
