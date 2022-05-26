//
//  DataService.swift
//  RecipeApp
//
//  Created by Kinzie Hamilton on 5/24/22.
//

import Foundation

class DataService {
    
    //Where you put the json parsing info
    static func getLocalData() -> [Recipe] { //by adding Static you don't have to make an instance of DataService() to call the function, just use the type DataService.
        
        //Parse local JSON file
        
        //Get a url path to the JSON file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        //Check if pathstring is not nil, otherwise
        guard pathString != nil else {
            return [Recipe]() //return an empty Recipe list
        }
        
        //Create a URL object
        let url = URL(fileURLWithPath: pathString!) //Have to unwrap because checked above to see if it was nil
        
        do{
            //Create a Data Object if the url is good
            let data = try Data(contentsOf: url)
            
            //Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data) //it will decode the data into a self type of Recipe array.
                for r in recipeData {
                    r.id = UUID()
                }
                
                return recipeData
            }
            catch {
                print(error)
            }
         
            //Add the unique IDs
            
            //Return the recipes
        }
        catch {
            //error with getting data
            print(error)
        }
        return [Recipe]()
        
      
        
        //Decode the data with a JSON decoder
        
       
    }
}
