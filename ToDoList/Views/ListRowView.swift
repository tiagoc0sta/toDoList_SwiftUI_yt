//
//  ListRowView.swift
//  ToDoList
//
//  Created by Tiago de Freitas Costa on 2024-07-28.
//

import SwiftUI

struct ListRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("This is the first item!")
            Spacer()
        }
    }
}


#Preview {
    ListRowView()
}
