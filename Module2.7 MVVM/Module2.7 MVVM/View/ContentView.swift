//
//  ContentView.swift
//  Module2.7 MVVM
//
//  Created by Kinzie Hamilton on 5/23/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                ForEach(model.Pizzas) {
                        pie in
                  
                    PizzaView(pizza: pie)
                        }
                    }
                }
            }
        }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
