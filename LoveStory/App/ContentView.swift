//
//  ContentView.swift
//  LoveStory
//
//  Created by Андрей Баитов on 19.03.21.
//

import SwiftUI



struct secondsreen: View{
    var body: some View{
         Text("Love u")
    }
}

struct ExpenseItem:Identifiable, Codable {
    let name: String
    let id = UUID()
    let type: String
    let amount: Int
}



/*struct ContentView: View {
    
    var body: some View{
        ZStack(){
            
        NavigationView{
            
            VStack(alignment: .center){
                
                Text("That is my little present, which i was making the whole day")
                    .multilineTextAlignment(.center)
                    
                Spacer()
                    .frame(height:20)
                 NavigationLink(destination: pre())
                     {
                    
                    Text("Tap to see")
                        
                }
                
                    
            }
        
            .background(Color.pink.opacity(0.2).ignoresSafeArea().frame(minWidth: 1000, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: 1000, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
            
        }
    
                
        }
        
        
        .colorScheme(.light)
        
    }
    
}*/
class Expenses: ObservableObject {
    @Published var items = [ExpenseItem](){
    didSet {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(items){
        UserDefaults.standard.set(encoded, forKey: "Items")
        }}}
        init() {
            if let items = UserDefaults.standard.data(forKey: "Items"){
                let decoder = JSONDecoder()
                if let decoded = try? decoder.decode([ExpenseItem].self, from: items) {
                    self.items = decoded
                    
                }
                return
            }
        }}
    

struct pre: View {
    
    @State private var showingAddExpense = false
    @ObservedObject var expenses = Expenses()
    @State private var wakeUp = Date()
   
    let calendar = Calendar.autoupdatingCurrent
    let olddate2 = Date.init(timeIntervalSinceReferenceDate: 564440401)
    let date2 = Date.init(timeInterval: 0, since: Date())

    var components = DateComponents()
   
    var body: some View {
        let timeInterval = date2.timeIntervalSince(olddate2)
        let timeInterval2 = timeInterval/60
        let timeInterval3 = timeInterval2/60
        let timeInterval4 = timeInterval3/24
        var someNumber = 1
        let application = UIApplication.shared
        
      
        ZStack(){
            
           
       /*     let date = Date()
            let calendar = Calendar.current
            let hour = calendar.component(.hour, from: olddate2)
            let minute = calendar.component(.minute, from: olddate2)
            let second = calendar.component(.second, from: olddate2)
            let day = calendar.component(.day, from: olddate2)
            let month = calendar.component(.month, from: olddate2)
            let year = calendar.component(.year, from: olddate2)
            Text("Текущее время: \(hour):\(minute):\(second),\(day),\(month),\(year)")
            */
            
            VStack(){
            
          
        Text("Love you so much")
            .font(.largeTitle)
            .padding(.top, 90.0)
            
            Image(systemName: "personalhotspot")
                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            

                Spacer()
            }
            .padding(.top, 100.0)
            VStack{
                Text("How long we are together:")
                    .font(.title2)
                .lineLimit(1)
                
               
                    .padding(.top, 70.0)
                    .padding(.vertical)
                    Text("Seconds: \(timeInterval,specifier: "%.0f")")
                    Text("Minutes: \(timeInterval2,specifier: "%.0f")")
                    Text("Hours: \(timeInterval3,specifier: "%.0f")")
                       
                Text("Days: \(timeInterval4,specifier: "%.0f")")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding(.leading, 50.0)
                    .padding(.vertical)
                    .padding(.vertical)
                    
                    
                    
                Spacer()
                    .frame(height: 350)
              
        }
            .padding(.top, 270.0)
            .padding(.leading, 100)
        
            
        
        }
        .colorScheme(.light)
        .background(Image("love")
                        .resizable()
                        .scaledToFill()
                        .frame(width:500, height: 1000, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .opacity(0.7))
           

    }
    
    
    
    
        
 }


    




struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
    
        Group {
            
            pre()
                .colorScheme(.light)
            
            
            
        }
        
       // ContentView()
            
        .colorScheme(.light)
        
    }
}
