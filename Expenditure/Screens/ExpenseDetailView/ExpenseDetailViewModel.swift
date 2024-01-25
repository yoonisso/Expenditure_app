//
//  ExpenseDetailViewModel.swift
//  Expenditure
//
//  Created by Yoonis on 14.12.23.
//
import Foundation
import SwiftUI

final class ExpenseDetailViewModel {
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter
    }()
}
