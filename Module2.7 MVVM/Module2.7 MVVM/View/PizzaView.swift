//
//  PizzaView.swift
//  Module2.7 MVVM
//
//  Created by Kinzie Hamilton on 5/25/22.
//

import SwiftUI

struct PizzaView: View {
    var pizza:Pizza
    
    var body: some View {
        HStack{
                Image(pizza.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(5)
                    .clipped()
                
            }
            VStack(alignment: .leading){
                Text(pizza.name)
                    .font(.headline)
                
                HStack{
                    //Use a For Loop. It's just a List but with ForEach instead of List keyword
                    ForEach(pizza.toppings, id: \.self){
                        p in
                        Text(p)
                    }
                    /*
                    Text(pie.toppings[0])
                    Text(pie.toppings[1])
                    Text(pie.toppings[2])
                    */

                    }.font(.caption)
                }
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaView(pizza: Pizza(from: Decoder, id: UUID(), name: "meatlovers"))
    }
}

