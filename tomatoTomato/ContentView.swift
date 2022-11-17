//
//  ContentView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 05.07.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresentingNewTaskView = false
    
    func actionForPlusButton() {
        isPresentingNewTaskView = true
    }
    
    @State private var presentingConfirmationDialog: Bool = false
    
    var body: some View {
        NavigationView {
            Text("There will be a list of tasks here later")
            .navigationBarTitle("To do:")
            .toolbar {
                Button(action: actionForPlusButton) {
                    Image(systemName: "plus").imageScale(.large)
                }
                .accessibilityLabel("New Task")
            }
            .sheet(isPresented: $isPresentingNewTaskView) {
                NavigationView {
                    NewTaskView(data: .constant(tomatoTaskDbModel.sampleData[0]))
                        .toolbar {
                            ToolbarItem(placement: .cancellationAction) {
                                Button(role: .cancel, action: {
                                    presentingConfirmationDialog = true
                                }) {
                                    Image(systemName: "arrow.backward").imageScale(.large)
                                }
                            }
                            
                            ToolbarItem(placement: .confirmationAction) {
                                Button("Save") {
                                    print("Save tapped!")
                                }
                            }
                        }
                        .confirmationDialog("", isPresented: $presentingConfirmationDialog) {
                          Button("Discard Changes", role: .destructive, action: {
                              isPresentingNewTaskView = false })
                          Button("Cancel", role: .cancel, action: {
                              isPresentingNewTaskView = true })
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
