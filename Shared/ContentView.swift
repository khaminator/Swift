//
//  ContentView.swift
//  Shared
//
//  Created by Kinzie Hamilton on 5/23/22.
//

import SwiftUI

var myArray = ["Element 1", "Element 2", "Element 3", "Element 4", "Element 5"]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(myArray, id: \.self){
                Name in
                NavigationLink(
                    destination: Text("Destination"),
                    label: {Text(Name)
                })
            }.navigationTitle("List")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
var myArray = ["Element 1", "Element 2", "Element 3", "Element 4", "Element 5"]

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            //Similar to For Each Statement, print off everything in Array. Called a Dynamic List
            List(myArray, id: \.self) {
                name in
                
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text(name)
                    })
            }.navigationBarTitle(Text("List"))
        }
    }
}
*/
