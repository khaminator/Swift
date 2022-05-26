//
//  Pizza.swift
//  Module2.7 MVVM
//
//  Created by Kinzie Hamilton on 5/23/22.
//

import Foundation

class Pizza: Identifiable, Decodable {
    //The id property is for the Identifiable protocol
    /*var id = UUID()
    var name:String = ""
    var top1:String = ""
    var top2:String = ""
    var top3:String = ""*/
    
    var id:UUID? //Set an optional
    
    //Properties map to the properties in the JSON
    var name:String
    var toppings:[String]
    var image:String
}
