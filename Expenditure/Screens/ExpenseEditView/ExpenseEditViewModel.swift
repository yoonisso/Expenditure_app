//
//  ExpenseEditViewModel.swift
//  Expenditure
//
//  Created by Yoonis on 13.01.24.
//

import Foundation

final class ExpenseEditViewModel: ObservableObject {
    
    //needs to get the right place of storage
    /*init(selectedCategory: Category, name: String = "", price: Double = 0.00, details: String = "", date: Date = Date()) {
        self.selectedCategory = selectedCategory
        self.name = name
        self.price = price
        self.details = details
        self.date = date
    }*/
    
    @Published var selectedCategory: Category = .car
    @Published var name = ""
    @Published var price = 0.00
    @Published var details = ""
    @Published var date = Date()
    
}
