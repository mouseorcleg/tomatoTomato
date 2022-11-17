//
//  TaskEditView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 05.07.22.
//

import SwiftUI

struct NewTaskView: View {
    @Binding var data: tomatoTaskDbModel
    
    var body: some View {
        HStack{
        Form {
            Section(header: Text("New task", comment: "New task title")) {
                TextField(NSLocalizedString("Title", comment: "Task title hint"), text: $data.title)
                Picker(selection: $data.size, label: Text("Size of the task")) {
                    Text("XS").tag(1)
                    Text("S").tag(2)
                    Text("M").tag(3)
                    Text("L").tag(4)
                    Text("XL").tag(5)
                }
                .pickerStyle(.segmented)
            Picker(selection: $data.type, label: Text("Task type")){
                Text("Mail")
                Text("Develope")
                Text("Launch")
                Text("Meet")
                Text("Plan")
                Text("Research")
                Text("Review")
                Text("Test")
            }
            .pickerStyle(.menu)
            }
        }
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(data: .constant(tomatoTaskDbModel.sampleData[0]))
    }
}
