//
//  RecipeApp.swift
//  RecipeApp
//
//  Created by Kinzie Hamilton on 5/24/22.
//

import SwiftUI

@main
struct RecipeApp: App {
    var body: some Scene {
        WindowGroup {
            Tabs() //When the app starts, it coreates an instance of RecipeListView
        }
    }
}
