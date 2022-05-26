//
//  Recipe.swift
//  Practice2.7 MVVM (iOS)
//
//  Created by Kinzie Hamilton on 5/23/22.
//  MODEL = This is the model of the data for the app

import Foundation

class Recipe: Identifiable, Decodable {
    var id:UUID? //UUID is a unique identifier, it will generate for you. Needed to use the list in the View.
    var name = ""
    var cuisine = ""
}
