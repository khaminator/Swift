//
//  ContentView.swift
//  Shared
//
//  Created by Kinzie Hamilton on 5/23/22.
//

import SwiftUI

struct ContentView: View {

    @State var myArray = [Int]()
    
    var body: some View {
        VStack{
            List(myArray, id: \.self){
                num in
                Text(String(num))
            }
            Button("Add to List"){
                addRand()
                
            }.padding()
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(Color.white)
            
            Button("Add One"){
                increase()
            }.padding()
            .background(Color.yellow)
            .cornerRadius(10)
            
            Button("Reset"){
                remove()
            }.padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
    }
    
    func addRand() {
        var randNum = 0
        repeat {
            randNum = Int.random(in: 0...10)
            myArray.append(randNum) } while randNum != 7
    }
    func increase() {
        if myArray.count == 0 {
            return
        }
        else {
            for x in 0...myArray.count-1 {
                myArray[x] += 1
            }
        }
        
    }
    func remove(){
        myArray.removeAll()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
