//
//  ContentView.swift
//  WrapUp App
//
//  Created by Kinzie Hamilton on 5/25/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView{
            List(model.quotes){
                q in
                NavigationLink(destination: QuoteView(quote:q), label: {
                        Text(q.author)
                })
            }.navigationBarTitle("Quotes")
            
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
