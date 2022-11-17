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
//                Picker(selection: $sizeSelection, label: Text("Size of the task")) {
//                    ForEach(TomatoSize.allCases) { i in
//                        Text($TomatoSize.name), systemImage: "mark")
//                            .padding(4)
//                    }
//                }
//                .pickerStyle(.segmented)
//            Picker(selection: viewModel.type, label: Text("Task type")){
//
//            }
//            .pickerStyle(.menu)
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
