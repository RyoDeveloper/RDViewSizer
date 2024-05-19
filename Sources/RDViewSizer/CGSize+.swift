//
//  CGSize+.swift
//
//
//  https://github.com/RyoDeveloper/RDViewSizer
//  Copyright © 2024 RyoDeveloper. All rights reserved.
//

import SwiftUI

public extension CGSize {
    func orientationAxis() -> Axis {
        if self.width < self.height {
            return .vertical
        } else {
            return .horizontal
        }
    }
}
