//
//  NotesView.swift
//  LoveStory
//
//  Created by Андрей Баитов on 20.06.21.
//

import SwiftUI



struct NotesView: View {
    
    @State private var showingAddExpense = false
    @ObservedObject var expenses = Expenses()
    @State private var wakeUp = Date()
    
    
    var body: some View {
      
        NavigationView{
       
            List{
            ForEach(expenses.items) {  item in
                HStack(){
                    VStack(alignment:.leading){
                        Text(item.name)
                            .font(.headline)
                        Text(item.type)
                    }
                    Spacer()
                    Text("$\(item.amount)")
                }
            }
            .onDelete(perform: removeitems)
            }
            .navigationTitle("Fill what happened")
            
            .navigationBarItems(trailing:
                Button(action: {
                    self.showingAddExpense = true
           } ){
        Image(systemName: "heart")
            .sheet(isPresented: $showingAddExpense){
                AddView(expenses: self.expenses)
            }
       }          )
    
            .colorScheme(.light)
            
            
        }
        .colorScheme(.light)
    }
    
    func removeitems(as offsets: IndexSet)  {
        expenses.items.remove(atOffsets: offsets)
        
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
