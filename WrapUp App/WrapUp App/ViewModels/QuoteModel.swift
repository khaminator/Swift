//
//  QuoteModel.swift
//  WrapUp App
//
//  Created by Kinzie Hamilton on 5/25/22.
//

import Foundation

class QuoteModel: ObservableObject { //Observable Object so it can change
    //Create your empty Model variable
    @Published var quotes = [Quote]()
    
    
    
    init(){ // what things need to happen autoomatically?
    
        //Make a pathstring variable
        let pathstring = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        //If pathstring is valid build it out
        if pathstring != nil {
            //make a url variable
            var url = URL(fileURLWithPath: pathstring!)
        
            //Do the following and error if not able to
            do {
                //make a data variable
                let data = try Data(contentsOf: url)
        
                //<make the decoder variable
                let decoder = JSONDecoder()
                
                do {
                    var jsonQuotes = try decoder.decode([Quote].self, from:data)
                    
                    for index in 0..<jsonQuotes.count {
                        jsonQuotes[index].id = UUID()
                    }
                    
                    self.quotes = jsonQuotes
                }
                catch {
                    print("Unable to parse Quote")
                }
            }
            catch {
                print("Couldn't create object")
            }
            
        }
        
    }
        
}
