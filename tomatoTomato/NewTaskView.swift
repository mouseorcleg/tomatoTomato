//
//  TaskEditView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 05.07.22.
//

import SwiftUI

struct NewTaskView: View {
    @Binding var data: TaskData
    
    var body: some View {
        Form {
            Section(header: Text("New task", comment: "New task title")) {
                TextField(NSLocalizedString("Title", comment: "Task title hint"), text: $data.title)
            }
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(data: .constant(TaskData.sampleData[0]))
    }
}
