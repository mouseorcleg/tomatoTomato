//
//  ContentView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 05.07.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresentingNewTaskView = false
    
    var body: some View {
        NavigationView {
            Text("There will be a list of tasks here later")

            .navigationBarTitle("To do:")
            
            .toolbar {
                Button(action: {
                    isPresentingNewTaskView = true
                }) {
                    Image(systemName: "plus").imageScale(.large)
                }
                .accessibilityLabel("New Task")
            }
            .sheet(isPresented: $isPresentingNewTaskView) {
                NavigationView {
                    NewTaskView()
                        .toolbar {
                            ToolbarItem(placement: .cancellationAction) {
                                Button(action: {
                                    isPresentingNewTaskView = false
                                }) {
                                    Image(systemName: "arrow.backward").imageScale(.large)
                                }
                            }
                        }
                }
            }
        }
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
