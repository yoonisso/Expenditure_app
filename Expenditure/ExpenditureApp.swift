//
//  ExpenditureApp.swift
//  Expenditure
//
//  Created by Yoonis on 04.12.23.
//

import SwiftUI

@main
struct ExpenditureApp: App {
    @StateObject private var eStore = ExpenseStore()
    
    var body: some Scene {
        WindowGroup {
            ExpensesView(expenses: $eStore.expenses) {
                Task {
                    do {
                        try await eStore.save(expenses: eStore.expenses)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }
                .task {
                    do {
                        try await eStore.load()
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}
