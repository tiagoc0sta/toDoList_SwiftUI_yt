//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Tiago de Freitas Costa on 2024-07-28.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()                
            }
            .environmentObject(listViewModel)
        }
    }
}
