//
//  QuoteView.swift
//  WrapUp App
//
//  Created by Kinzie Hamilton on 5/25/22.
//

import SwiftUI

struct QuoteView: View {
    
    var quote:Quote
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        QuoteView(quote: model.quotes[0])
    }
}
