//
//  ExpenseCreationView.swift
//  Expenditure
//
//  Created by Yoonis on 13.12.23.
//

import SwiftUI

struct ExpenseCreationView: View {
    @StateObject var viewModel = ExpenseCreationViewModel()
    
    @Binding var isShowingEditorView: Bool
    @Binding var expenses: [Expense]
    
    var body: some View {
        ZStack {
            EBackgroundView()
            VStack {
                HStack {
                    Text("Expense Editor")
                        .font(.title2)
                        .bold()
                        .padding(.leading)
                    EXDismissButton(isShowingView: $isShowingEditorView)
                }
                Form {
                    Section(header: Text("Expense")){
                        TextField("Expense Name", text: $viewModel.name)
                        TextField("Price", value: $viewModel.price, formatter: currencyFormatter)
                            .keyboardType(.decimalPad)
                        TextField("Expense Details", text: $viewModel.details)
                        DatePicker("Expense Date", selection: $viewModel.date, displayedComponents: .date)
                        Picker("Category", selection: $viewModel.selectedCategory) {
                            ForEach(Category.allCases) { category in
                                Text(category.rawValue.capitalized)
                            }
                        }
                    }
                }
                Button{
                    expenses.append(Expense(
                        name: viewModel.name,
                        price: viewModel.price,
                        category: viewModel.selectedCategory.rawValue,
                        date: viewModel.date,
                        details: viewModel.details))
                    
                    //TODO ExpensesView(expenses: $expenses)
                } label: {
                        EButton(title: "Submit")
                }
        }
    }
}
    
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.current
        return formatter
    }
}

#Preview {
    ExpenseCreationView(isShowingEditorView: .constant(false), expenses: .constant(MockData.expenses))
}
