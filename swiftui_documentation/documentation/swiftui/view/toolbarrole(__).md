---
title: toolbarRole(_:)
description: Configures the semantic role for the content populating the toolbar.
source: https://developer.apple.com/documentation/swiftui/view/toolbarrole(_:)
timestamp: 2025-10-29T00:14:33.717Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# toolbarRole(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Configures the semantic role for the content populating the toolbar.

```swift
nonisolated func toolbarRole(_ role: ToolbarRole) -> some View
```

## Parameters

**role**

The role of the toolbar.



## Discussion

Use this modifier to configure the semantic role for content populating your app’s toolbar. SwiftUI uses this role when rendering the content of your app’s toolbar.

```swift
ContentView()
    .navigationTitle("Browser")
    .toolbarRole(.browser)
    .toolbar {
        ToolbarItem(placement: .primaryAction) {
            AddButton()
        }
     }
```

## Specifying the role of toolbar content

- [ToolbarRole](/documentation/swiftui/toolbarrole)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
