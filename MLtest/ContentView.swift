//
//  ContentView.swift
//  MLtest
//
//  Created by Hasanen B on 2023-10-19.
//

import SwiftUI

struct ContentView: View {
    let model = Model()
    let goldFish = "goldfish"
    let greenLizard = "greenLizard"
   @State var result = ""
    @State var theImage = ""
    
    var body: some View {
        VStack {
            
            HStack{
                Button(action: {
                    result = model.getImage(theImage: goldFish)!
                    theImage = goldFish
                }, label: {
                    Text(goldFish)
                        .font(.title)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.646, saturation: 0.728, brightness: 0.969)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    result = model.getImage(theImage: greenLizard)!
                    theImage = greenLizard
                }, label: {
                    Text(greenLizard)
                        .font(.title)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.646, saturation: 0.728, brightness: 0.969)/*@END_MENU_TOKEN@*/)
                        .cornerRadius(10)
                })
            }
            
            Spacer()
            Image(theImage)
            Spacer()
            
            Text(result)
                .font(.title2)
                .padding()
           
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
