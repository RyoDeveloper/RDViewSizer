//
//  RDViewSizer.swift
//
//
//  https://github.com/RyoDeveloper/RDViewSizer
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftUI

public extension View {
    func RDViewSizer(_ size: Binding<CGSize>, regions: SafeAreaRegions = []) -> some View {
        self
            .background {
                MeasureView(size: size)
                    .ignoresSafeArea(regions)
            }
    }
}
