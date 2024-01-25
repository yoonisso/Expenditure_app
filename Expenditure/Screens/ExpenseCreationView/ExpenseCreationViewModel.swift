//
//  ExpenseCreationViewModel.swift
//  Expenditure
//
//  Created by Yoonis on 19.12.23.
//

import SwiftUI

final class ExpenseCreationViewModel: ObservableObject {
    @Published var selectedCategory: Category = .car
    @Published var name = ""
    @Published var price = 0.00
    @Published var details = ""
    @Published var date = Date()
    
}
