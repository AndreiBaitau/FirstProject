//
//  MainView.swift
//  LoveStory
//
//  Created by Андрей Баитов on 20.06.21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
                pre()
                    .tabItem { Image(systemName: "clock")
                        Text("Time together")
                    }
            NotesView()
                .tabItem { Image(systemName: "heart")
                Text("Notes")
                }
            
        }
        .ignoresSafeArea(edges: .bottom)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
