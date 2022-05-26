//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Kinzie Hamilton on 5/24/22.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        //Create an instance of DataService and get the data
        //let service = DataService()
        //self.recipes = DataService().getLocalData() //The way to use it if there is no static in front of DataService class
        self.recipes = DataService.getLocalData()
    }
}
