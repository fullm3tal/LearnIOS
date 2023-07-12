//
//  ContentView.swift
//  LearnIOS
//
//  Created by Bheem on 12/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!").padding(100)
            Text("My name is Fullm3tal")
            Button("Show Alert") {
                showingAlert = true
            }.alert(isPresented: $showingAlert){
                Alert(title: Text("Important Message"), message: Text("Wear a toast")
                      , dismissButton: .default(Text("Got it!")))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
