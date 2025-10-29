---
title: popoverTip(_:arrowEdge:action:)
description: Presents a popover tip on the modified view.
source: https://developer.apple.com/documentation/swiftui/view/popovertip(_:arrowedge:action:)
timestamp: 2025-10-29T00:13:00.960Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# popoverTip(_:arrowEdge:action:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+

> Presents a popover tip on the modified view.

```swift
@preconcurrency nonisolated func popoverTip(_ tip: (any Tip)?, arrowEdge: Edge? = nil, action: @escaping @MainActor (Tips.Action) -> Void = { _ in }) -> some View
```

## Parameters

**tip**

The tip to display.



**arrowEdge**

The edge of the attachmentAnchor that defines the location of the popover’s arrow. By default, the system will choose the best orientation of the popover’s arrow.



**action**

The action to perform when the user triggers a tip’s button.



### Discussion

Use this modifier to present a tip as a popover on an existing view when the tip becomes eligible for display.

```swift
import SwiftUI
import TipKit

// Define your tip's content.
struct SampleTip: Tip {
    var title: Text {
        Text("Save as a Favorite")
    }

    var message: Text? {
        Text("Your favorite backyards always appear at the top of the list.")
    }

    var image: Image? {
        Image(systemName: "star")
    }
}

struct SampleView: View {
    // Create an instance of your tip.
    var tip = SampleTip()

    var body: some View {
        VStack {
            // Add `.popoverTip` to the view you want to modify.
            // Tips.configure(options:) must be called before your tip will be eligible for display.
            Image(systemName: "star")
                .popoverTip(tip)
        }
    }
}
```

## Providing tips

- [tipBackground(_:)](/documentation/swiftui/view/tipbackground(_:))
- [tipCornerRadius(_:antialiased:)](/documentation/swiftui/view/tipcornerradius(_:antialiased:))
- [tipImageSize(_:)](/documentation/swiftui/view/tipimagesize(_:))
- [tipViewStyle(_:)](/documentation/swiftui/view/tipviewstyle(_:))
- [tipImageStyle(_:)](/documentation/swiftui/view/tipimagestyle(_:))
- [tipImageStyle(_:_:)](/documentation/swiftui/view/tipimagestyle(_:_:))
- [tipImageStyle(_:_:_:)](/documentation/swiftui/view/tipimagestyle(_:_:_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
