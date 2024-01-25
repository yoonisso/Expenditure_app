//
//  expenseButton.swift
//  Expenditure
//
//  Created by Yoonis on 07.12.23.
//

import SwiftUI

struct EButton: View{
    
    var title: String
    
    var body: some View {
        Text(title)
            .foregroundStyle(.black)
            .font(.system(size: 20,weight: .bold, design: .default))
            .frame(width: 350, height: 50)
            .background(ContainerRelativeShape()
                .fill(Color.lightBlue.gradient))
            .cornerRadius(10)
    }
}
