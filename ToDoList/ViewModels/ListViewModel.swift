//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Tiago de Freitas Costa on 2024-07-29.
//

import Foundation

/*
 CRUD FUNCTIONS
 
 Create
 Read
 Update
 Delete 
 
 */

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = [] {
        didSet {
            
        }
    }
    
    
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first title!", isCompleted: false),
            ItemModel(title: "This is the sec title!", isCompleted: true),
            ItemModel(title: "This is the third title!", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
       /* if let index = items.firstIndex { (existingItem) -> Bool in
            return existingItem.id == item.id
        } {
            
        }*/
        
        //same code as above - trailling closure
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompetion()
        }
        
    }
    
    func saveItems(){
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
    
}
