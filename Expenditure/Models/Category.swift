//
//  Category.swift
//  Expenditure
//
//  Created by Yoonis on 19.12.23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    case car
    case food
    case hardware
    case software
    case clothes
    
    var id: Self { self }
}
