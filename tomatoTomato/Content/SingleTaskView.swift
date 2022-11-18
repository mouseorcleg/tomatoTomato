//
//  SingleTaskView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 18/11/2022.
//

import SwiftUI

struct SingleTaskView: View {
    
    var body: some View {
        VStack {
            HStack{
                Text("Task title")
                    .font(.title)
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.mint)
                    Text("XXL")
                        .font(.title2)
                        .padding(7)
                }
                .fixedSize(horizontal: true, vertical: true)
            }
            Label("Task type", systemImage: "bookmark")
                .font(.title2)
            }
        .padding(3)
        .background(.thickMaterial)
        }

        
    }


struct SingleTaskView_Previews: PreviewProvider {
    static var previews: some View {
        SingleTaskView()
    }
}
