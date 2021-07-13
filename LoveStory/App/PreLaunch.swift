//
//  PreLaunch.swift
//  LoveStory
//
//  Created by Андрей Баитов on 19.03.21.
//

import SwiftUI

struct PreLaunch: View {
    @State private var showMainView = false
    var body: some View {
        Group{
        if showMainView{
            MainView()}else{
                
            
        
        ZStack(){
             Color("Background")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Image(systemName: "suit.heart")
                .resizable()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            
            
        }
        }
        }
        .onAppear(){ withAnimation(.easeOut(duration: 4)){
        showMainView = true
        }
        }
            
        }
        
    }


struct PreLaunch_Previews: PreviewProvider {
    static var previews: some View {
        PreLaunch()
        
    }
}
