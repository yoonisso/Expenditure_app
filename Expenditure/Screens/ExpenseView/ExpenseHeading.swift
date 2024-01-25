//
//  ExpenseText.swift
//  Expenditure
//
//  Created by Yoonis on 10.12.23.
//

import SwiftUI

struct ExpenseHeading: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.bold)
    }
}
