//
//  Recipe.swift
//  RecipeApp
//
//  Created by Kinzie Hamilton on 5/24/22.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID? //optional property
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
}
