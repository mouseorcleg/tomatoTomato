//
//  ContentView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 05.07.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("There will be a list of tasks here later")

            .navigationBarTitle("To do:")
            .navigationBarItems(trailing:
                Button(action: {
                    print("You pressed the add button. Yeee!")
                }) {
                    Image(systemName: "plus").imageScale(.large)
                }
                .accessibilityLabel("New Task")
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
