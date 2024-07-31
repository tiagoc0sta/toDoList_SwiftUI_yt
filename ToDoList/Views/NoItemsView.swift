//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Tiago de Freitas Costa on 2024-07-31.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    
    var body: some View {
        ScrollView {
            VStack (spacing : 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button adn add a bunch of items to your todo list!")
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add something 🥳")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(animate ? Color.red : Color.accentColor)
                            .cornerRadius(10)
                        
                    })
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
            withAnimation(.easeInOut){
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView()
            .navigationTitle("Title")
    }
}


