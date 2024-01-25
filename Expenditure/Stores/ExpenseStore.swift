//
//  ExpenseStore.swift
//  Expenditure
//
//  Created by Yoonis on 18.12.23.
//

import SwiftUI

@MainActor
class ExpenseStore: ObservableObject {
    @Published var expenses: [Expense] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                    in: .userDomainMask,
                                    appropriateFor: nil,
                                    create: false)
        .appendingPathExtension("expenses.data")
    }
    
    func load() async throws {
        let task = Task <[Expense], Error> {
            let fileURL = try Self.fileURL()
            guard let data = try? Data(contentsOf: fileURL) else {
                return[]
            }
            let expenses = try JSONDecoder().decode([Expense].self, from: data)
            return expenses
        }
        let expenses = try await task.value
        self.expenses = expenses
    }
    
    func save(expenses: [Expense]) async throws {
        let task = Task {
            let data = try JSONEncoder().encode(expenses)
            let outfile = try Self.fileURL()
            try data.write(to: outfile)
        }
        _ = try await task.value
    }
}
