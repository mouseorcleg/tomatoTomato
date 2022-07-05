//
//  TaskEditView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 05.07.22.
//

import SwiftUI

struct NewTaskView: View {
    
    var body: some View {
        Form {
            Section(header: Text("Name your field")) {
            Text("Fields under constraction")
            }
            .navigationTitle(Text("New task"))

        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
