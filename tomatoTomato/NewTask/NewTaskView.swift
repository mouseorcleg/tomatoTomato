//
//  TaskEditView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 05.07.22.
//

import SwiftUI

struct NewTaskView: View {
    @State var viewModel = NewTaskViewModel()
    
    var body: some View {
        HStack{
            Form {
                Section(header: Text("New task", comment: "New task title")) {
                
                    TextField(NSLocalizedString("Title", comment: "Task title hint"), text: $viewModel.title)
                    .padding(3)
                
                    Picker("Size", selection: $viewModel.size) {
                        ForEach(TomatoSize.allCases, id: \.self) { size in
                        Text(size.name).tag(size)
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding(3)

                    Picker("Type", selection: $viewModel.type) {
                        ForEach(TomatoType.allCases, id: \.self) { type in
                        Text(type.name).tag(type)
                        }
                    }
                    .pickerStyle(.menu)
                    .padding(3)
                }
            }
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
