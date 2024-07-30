//
//  MeasureView.swift
//
//
//  https://github.com/RyoDeveloper/RDViewSizer
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct MeasureView: View {
    @Binding var size: CGSize
    
    var body: some View {
        EmptyView()
            .background {
                GeometryReader { geometry in
                    Path { _ in
                        DispatchQueue.main.async {
                            size = geometry.size
                        }
                    }
                }
            }
    }
}

#Preview {
    MeasureView(size: .constant(CGSize()))
}
