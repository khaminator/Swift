//
//  ContentView.swift
//  Shared
//
//  Created by Kinzie Hamilton on 5/23/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
       
        List(model.recipes) {
            r in
            VStack{
                Text(r.name)
                Text(r.cuisine)
            }
        }
        Button("Add Recipe"){
            model.addRecipe()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
