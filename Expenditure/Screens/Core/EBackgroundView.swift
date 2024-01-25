//
//  BackgroundView.swift
//  Expenditure
//
//  Created by Yoonis on 10.12.23.
//

import SwiftUI

struct EBackgroundView: View {
    
    var body: some View {
        ContainerRelativeShape()
            .fill(Color.blue.gradient)
            .ignoresSafeArea(.all)
        
    }
}

#Preview {
    EBackgroundView()
}
