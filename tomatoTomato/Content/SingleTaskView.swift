//
//  SingleTaskView.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 18/11/2022.
//

import SwiftUI

struct SingleTaskView: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.thinMaterial)
            HStack{
                //this needs to be a button
                Image(systemName: "square")
                    .font(.title2)
                
                //title from db
                Text("Task title")
                    .font(.title2)
                    
                    .padding(5)
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.mint)
                    
                    // size from db
                    Text("XXL")
                        .fontWeight(.semibold)
                        .padding(4)
                        .foregroundColor(.white)
                }
                .fixedSize(horizontal: true, vertical: true)
            }
        }
        .padding(3)
        .fixedSize(horizontal: false, vertical: true)
        
        
        }
    }


struct SingleTaskView_Previews: PreviewProvider {
    static var previews: some View {
        SingleTaskView()
    }
}
