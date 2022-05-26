//
//  RecipeListView.swift
//  RecipeApp
//
//  Created by Kinzie Hamilton on 5/24/22.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the ViewModel
    @ObservedObject var model = RecipeModel() //Listen to this for any publised changes
    
    var body: some View {
        NavigationView {
            List(model.recipes) {
                r in
                NavigationLink(
                    destination: DetailView(recipe:r),
                    label: {
                        HStack(spacing: 20){
                            Image(r.image).resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped() //clips any pieces of image that are outside of the frame
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    })
            }.navigationBarTitle("All Recipes")
        }
    }
}


struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
