//
//  Tabs.swift
//  RecipeApp
//
//  Created by Kinzie Hamilton on 5/26/22.
//

import SwiftUI

struct Tabs: View {
    
    @State var tabIndex = 1
    
    var body: some View {
        
        TabView (selection: $tabIndex){ //selection means what will it default to. Use the .tag() notation to add a number that will match with the variable state up top.
            Text("Featured")
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }.tag(0)
            RecipeListView()
                .tabItem{
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }.tag(1)
        }
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
