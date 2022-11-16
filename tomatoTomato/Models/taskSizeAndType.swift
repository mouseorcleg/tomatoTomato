//
//  taskSizeAndType.swift
//  tomatoTomato
//
//  Created by Maria Kharybina on 16/11/2022.
//

import Foundation

struct taskSize: Identifiable {
    var id = UUID()
    var size: Int
    var name: String
}

var sizes = [
    taskSize(size: 1, name: "XS"),
    taskSize(size: 2, name: "S"),
    taskSize(size: 3, name: "M"),
    taskSize(size: 4, name: "L"),
    taskSize(size: 5, name: "XL")
]


