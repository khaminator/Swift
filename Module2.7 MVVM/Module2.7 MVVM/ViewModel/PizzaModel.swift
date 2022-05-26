//
//  PizzaModel.swift
//  Module2.7 MVVM
//
//  Created by Kinzie Hamilton on 5/23/22.
//

import Foundation

class PizzaModel: ObservableObject {

    @Published var Pizzas = [Pizza]()

    init(){
        /*
        Pizzas.append(Pizza(name:"Big Papa", top1: "Mushroom", top2: "Sausage", top3: "Meatballs"))
        Pizzas.append(Pizza(name:"Strawberry King", top1: "Strawberry", top2: "Balsamic", top3: "Feta"))
        Pizzas.append(Pizza(name:"Hawaii", top1: "Pineapple", top2: "Sausage", top3: "Mushrooms"))
        */
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json") //map it to the json file with the type "data". Idk why this works but it does. 
        
        if pathString != nil {
            
            //Create an URL object with the string path to our local JSON file
            let url = URL(fileURLWithPath: pathString!)
            
            do {
                //Create a data object, pointing it to the local JSON file
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    //Try to decode the json data into instances of Pizza
                    var jsonPizzas = try decoder.decode([Pizza].self, from: data)
                    
                    // Loop through pizzas and add Ids
                    for index in 0..<jsonPizzas.count {
                        jsonPizzas[index].id = UUID()
                    }
                    
                    //Assign to pizzas property
                    self.Pizzas = jsonPizzas
                }
                catch {
                    print("Couldn't parse Pizzas")
                }
            }
            catch {
                print("Couldn't create Data object")
            }
        }
    }
}
