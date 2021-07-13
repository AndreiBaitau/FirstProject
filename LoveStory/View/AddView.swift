//
//  AddView.swift
//  LoveStory
//
//  Created by Андрей Баитов on 19.03.21.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var expenses: Expenses
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    
    let types = ["Busines","Personal"]
    
    var body: some View {
     
        NavigationView{
            Form{
                TextField("Summury", text: $name)
                Picker("Type", selection: $type){
                    ForEach(self.types, id: \.self){
                        Text($0)
                    }
                }
                TextField("How much money did u spend", text: $amount)
                    .keyboardType(.numberPad)
            }
            .navigationBarTitle("Add")
            .navigationBarItems(trailing: Button("Save"){
                
                if let actualAmount = Int(self.amount){
                    let item = ExpenseItem(name: self.name, type: self.type, amount: actualAmount)
                    self.expenses.items.append(item)
                    self.presentationMode.wrappedValue.dismiss()
                }
                
            })
        }
        .colorScheme(.light)
    }
    
        }

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        
        AddView(expenses: Expenses())
            .colorScheme(.light)
    }
}
