//
//  qoute.swift
//  WrapUp App
//
//  Created by Kinzie Hamilton on 5/25/22.
//

import Foundation

class Quote: Identifiable, Decodable {
    
    var id:UUID!
    var author:String
    var quote:String
    var image:String
    
}
