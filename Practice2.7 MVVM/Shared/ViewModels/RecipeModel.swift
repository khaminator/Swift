//
//  RecipeModel.swift
//  Practice2.7 MVVM (iOS)
//
//  Created by Kinzie Hamilton on 5/23/22.
//

import SwiftUI
import Foundation

//Create a class that when create a new instance of RecipeModel, it adds two recipes

class RecipeModel: ObservableObject {
    
    //Contain Data
    @Published var recipes = [Recipe]() //empty array that stores Recipe instances
    
    init() { //this is automatically triggered any time a new instance of the Recipe model is created. Put any code neccessary to set up the instance for use.
        
        //Create some dummy recipe data. Best way to instatiate.
        //recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        
        //recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
        
        
        //JSON
        let pathString = Bundle.main.path(forResource: "data" , ofType: "json")
        
        if let path = pathString /*(pathString != nil */ {
            
            // Create a url object
            let url = URL(fileURLWithPath: path)
            
            // Error Handling
            do {
                //Put the code that potentially throws an error
                
                //Create a data object with the data at the url
                let data = try Data(contentOf: url)
                
                // Parse the data
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data) //Pass in the Model and what variable you want to decode.
                    
                    //Set unique IDs for each instance
                    for r in recipeData {
                        
                        r.id = UUID()
                    }
                    
                    self.recipes = recipeData
                }
                catch {
                    print(error)
                }
            }
            catch {
                //Execution will come here if an error is thrown
                print(error)
            }
            
            //Create a data object with the data at the url
            let data = Data(contentsOf: url)
        }
        
    }
    
    func addRecipe() {
        recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
}


