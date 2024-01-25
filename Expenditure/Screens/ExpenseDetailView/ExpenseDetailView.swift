//
//  ExpenseDetailView.swift
//  Expenditure
//
//  Created by Yoonis on 12.12.23.
//

import SwiftUI

struct ExpenseDetailView: View {
    var viewModel = ExpenseDetailViewModel()
    var expense: Expense
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        ZStack {
            EBackgroundView()
            VStack {
                EXDismissButton(isShowingView: $isShowingDetailView)
                Text(expense.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                LazyVGrid(columns: viewModel.columns){
                    Text("Price")
                    Text(String(expense.price))
                        .fontWeight(.bold)
                    
                    Text("Category")
                    Text(expense.category)
                        .fontWeight(.bold)
                    
                    Text("Date")
                    Text(viewModel.dateFormatter.string(from: expense.date))
                        .fontWeight(.bold)
                    
                    Text("Details")
                    Text(expense.details)
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                Button(action: {
                    isShowingDetailView = false
                }, label: {
                    EButton(title: "Edit")
                        .font(.title2)
                        .fontWeight(.semibold)
                })
                .padding()
            }
        }
    }
}

#Preview {
    ExpenseDetailView(expense: MockData.expenses[0], isShowingDetailView: .constant(false))
}
