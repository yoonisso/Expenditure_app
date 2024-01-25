//
//  ExpensesViewModel.swift
//  Expenditure
//
//  Created by Yoonis on 12.12.23.
//

import SwiftUI

final class ExpensesViewModel: ObservableObject {
    var selectedExpense: Expense? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView = false
    @Published var isShowingEditorView = false
}
