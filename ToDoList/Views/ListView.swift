//
//  ListView.swift
//  ToDoList
//
//  Created by Tiago de Freitas Costa on 2024-07-28.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListRowView()
        }
        .navigationTitle("Todo List 📝")
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}

