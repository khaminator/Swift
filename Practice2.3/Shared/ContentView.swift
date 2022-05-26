//
//  ContentView.swift
//  Shared
//
//  Created by Kinzie Hamilton on 5/23/22.
//

import SwiftUI


struct ContentView: View {
    
    @State var message = String("")
    
    var myArray = ["Dogs", "Cats", "Horses", "Pigs", "Birds"]
    
    @State var newArray = [String]() //Messed up on this, be aware of how to set an empty new Array
    
    var body: some View {
        VStack{
            Spacer()
            Text(message)
            List(newArray, id: \.self){ //Messed up and put . before the \, watch this
                Animal in
                Text(Animal)
            }
            Spacer()
            Button("Push Me"){
                doSomething()
            }
            Spacer()
            }
        }
    
    func doSomething() {
        message = "Your Animals"
        var word = myArray[Int.random(in: 0 ... myArray.count-1)]
        newArray.append(word)
        
        if newArray.count > 10 {
            newArray.removeAll()
        }
        
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
