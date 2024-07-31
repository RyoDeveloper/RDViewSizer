# RDViewSizer

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FRyoDeveloper%2FRDViewSizer%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/RyoDeveloper/RDViewSizer)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FRyoDeveloper%2FRDViewSizer%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/RyoDeveloper/RDViewSizer)

Binds the View's Size to the provided CGSize.

```swift
func RDViewSizer(
_ size: Binding<CGSize>, regions: SafeAreaRegions = []
) -> some View
```

## Parameters

### size

A Binding to receive the View's Size.
It will be automatically updated when the View's size changes.

### regions

The regions to expand the view into the safe area. By default, the modifier does not expand into any safe area regions.

## Return Value

The modified view.

## Installation

Swift Package Manager

## Usage

``` swift
import RDViewSizer
import SwiftUI

struct ContentView: View {
    @State private var viewSize = CGSize()

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 200, height: 200)
                .RDViewSizer($viewSize)

            Text("viewSize: \(viewSize)")
        }
    }
}
```

<img src="https://github.com/user-attachments/assets/0324ea84-b2be-4416-9607-bf579e3a40f1" width="50%">
