//
//  ExpensesView.swift
//  Expenditure
//
//  Created by Yoonis on 04.12.23.
//

import SwiftUI

struct ExpensesView: View {
    @Binding var expenses: [Expense]
    @StateObject var viewModel = ExpensesViewModel()
    @Environment(\.scenePhase) private var scenePhase
    let saveAction: ()->Void
    
    var body: some View {
        ZStack {
            EBackgroundView()
            VStack {
                NavigationStack {
                    ZStack {
                        EBackgroundView()
                        ScrollView {
                            VStack(spacing: 10){
                                ForEach(expenses) { expense in
                                    ExpenseView(viewModel: ExpenseViewModel(expense: expense))
                                        .onTapGesture {
                                            viewModel.selectedExpense = expense
                                        }
                                }
                            }
                        }
                    }
                    .navigationTitle("Expenses")
                    .sheet(isPresented: $viewModel.isShowingDetailView) {
                        ExpenseDetailView(expense: viewModel.selectedExpense ?? MockData.expenses[0], isShowingDetailView: $viewModel.isShowingDetailView)
                    }
                }
                Spacer()
                
                Button {
                    viewModel.isShowingEditorView = true
                } label: {
                    EButton(title: "Add Expense")
                }
                .padding(.top)
                .sheet(isPresented: $viewModel.isShowingEditorView) {
                    ExpenseCreationView(isShowingEditorView: $viewModel.isShowingEditorView, expenses: $expenses)
                }
                .onChange(of: scenePhase) { phase in
                    if phase == .inactive { saveAction()}
                }
            }
        }
    }
}

//#Preview {
//    ExpensesView(expenses: MockData.expenses, saveAction: <#T##() -> Void#>)
//}
