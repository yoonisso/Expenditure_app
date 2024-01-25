//
//  Expense.swift
//  Expenditure
//
//  Created by Yoonis on 12.12.23.
//

import Foundation

struct Expense: Hashable, Identifiable, Codable{
    let id: UUID
    
    var name: String
    var price: Double
    var date: Date
    var category: String
    var details: String
    
    init(name: String, price: Double, category: String, date: Date, details: String) {
        self.id = UUID()
        
        self.name = name
        self.price = price
        self.category = category
        self.date = date
        self.details = details
    }
}

struct MockData {
    static let expenses = [
        Expense(name: "Autowäsche", price: 5, category: "Car", date: Date(), details: "DETAILSDETAILSDETAILS"),
        Expense(name: "Autowäsche", price: 5, category: "Car", date: Date(), details: "DETAILSDETAILSDETAILS"),
        Expense(name: "Autowäsche", price: 5, category: "Car", date: Date(), details: "DETAILSDETAILSDETAILS"),
        Expense(name: "Autowäsche", price: 5, category: "Car", date: Date(), details: "DETAILSDETAILSDETAILS"),
        Expense(name: "Autowäsche", price: 5, category: "Car", date: Date(), details: "DETAILSDETAILSDETAILS"),
        Expense(name: "Autowäsche", price: 5, category: "Car", date: Date(), details: "DETAILSDETAILSDETAILS"),
        Expense(name: "Autowäsche", price: 5, category: "Car", date: Date(), details: "DETAILSDETAILSDETAILS")
    ]
}
