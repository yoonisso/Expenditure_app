//
//  ExpenseView.swift
//  Expenditure
//
//  Created by Yoonis on 04.12.23.
//

import SwiftUI

struct ExpenseView: View {
    let viewModel: ExpenseViewModel
    
    var body: some View {
        HStack(){
            VStack(){
                Text("Title")
                    .fontWeight(.bold)
                Text(viewModel.expense.name)
            }
            .padding()
            
            VStack(){
                Text("Price")
                    .fontWeight(.bold)
                Text(String(viewModel.expense.price))
            }
            .padding()
            
            VStack(){
                Text("Category")
                    .fontWeight(.bold)
                Text(viewModel.expense.category.description)
            }
            .padding()
        }
        .scaledToFit()
        .minimumScaleFactor(0.5)
        .frame(width: 350, height: 75)
        .foregroundStyle(.black)
        .background(ContainerRelativeShape()
            .fill(Color.lightBlue.gradient))
        .cornerRadius(10)
    }
}

#Preview {
    ExpenseView(viewModel: ExpenseViewModel(expense: Expense(name: "Ausgabe", price: 10.00, category: Category.car.rawValue, date: Date(), details: "DetailsDETAILS DETAILS")))
}
