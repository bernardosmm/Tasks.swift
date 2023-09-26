//
//  ListView.swift
//  Tasks.swift
//
//  Created by User on 22/09/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
    "Tarefa 1",
    "Tarefa 2",
    "Tarefa 3"
    
    ]
    
    var body: some View {
        List {
            
            
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
            .onDelete{indexSet in
                items.remove(atOffsets: indexSet)
        }
       
        }
        
        .listStyle(PlainListStyle())
        .navigationTitle("Tarefas")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
            )
            
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}

