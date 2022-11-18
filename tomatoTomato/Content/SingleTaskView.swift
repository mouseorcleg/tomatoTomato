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
                    .padding(8)
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.mint)
                    Text("XXL")
                        .font(.title2)
                        .padding(8)
                        .foregroundColor(.white)
                }
                .fixedSize(horizontal: true, vertical: true)
            }
            Label("Task type", systemImage: "bookmark")
                .font(.title2)
                .foregroundColor(.gray)
                .padding(3)
            }
        .padding(3)
        .background(.thickMaterial)
        .fixedSize(horizontal: false, vertical: true)
        }

        
    }


struct SingleTaskView_Previews: PreviewProvider {
    static var previews: some View {
        SingleTaskView()
    }
}
