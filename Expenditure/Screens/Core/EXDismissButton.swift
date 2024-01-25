//
//  XDismissButton.swift
//  Expenditure
//
//  Created by Yoonis on 14.12.23.
//

import SwiftUI

struct EXDismissButton: View {
    @Binding var isShowingView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                isShowingView = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
            .padding()
        }
        Spacer()
    }
}

#Preview {
    EXDismissButton(isShowingView: .constant(false))
}
