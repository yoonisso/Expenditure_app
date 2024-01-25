//
//  ExpenseEditView.swift
//  Expenditure
//
//  Created by Yoonis on 13.01.24.
//

import SwiftUI

struct ExpenseEditView: View {
    @StateObject var viewModel = ExpenseEditViewModel()
    
    var body: some View {
        
        Button(action: {
        }, label: {
            EButton(title: "Delete")
                .font(.title2)
                .fontWeight(.semibold)
        })
        .padding()
    }
}

#Preview {
    ExpenseEditView()
}
