//
//  ContentView.swift
//  Challenge2.9
//
//  Created by Kinzie Hamilton on 5/24/22.
//

import SwiftUI

struct ContentView: View {
    @State var optString:[String]! //How you declare an array in optionals
    
    var body: some View {
        HStack{
            Button("Set"){
                optString = nil
            }
            Button("Add"){
                optString = [String]() //How you create an empty array
                optString = ["Hello", "Mom", "Dad"]
            }
            if optString != nil {
                List(optString, id: \.self){
                    o in
                    Text(o)
                }
            }
            else {
                Text("Please press add Button")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
