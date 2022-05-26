//
//  DetailView.swift
//  RecipeApp
//
//  Created by Kinzie Hamilton on 5/24/22.
//

import SwiftUI

struct DetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            
            VStack (alignment: .leading) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    
                //Ingredients
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                        .padding([.leading, .trailing], 5)
                    ForEach(recipe.ingredients, id: \.self){
                        ingred in
                        Text("- \(ingred)")
                            .padding(.bottom, 1)
                            .padding(.horizontal)
                        
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading){
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                        .padding(.horizontal)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) {
                        index in
                        Text("\(String(index+1)).  \(recipe.directions[index])")
                            .padding(.bottom, 2)
                    }
                }
            }
            .navigationBarTitle(recipe.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create a dummy recipe and pass it into the detail view so we can see a preview example
        let model = RecipeModel()
        
        DetailView(recipe: model.recipes[0])
    }
}
