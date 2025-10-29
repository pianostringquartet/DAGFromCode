---
title: body
description: The content and behavior of the widget.
source: https://developer.apple.com/documentation/swiftui/widget/body-swift.property
timestamp: 2025-10-29T00:10:12.895Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [widget](/documentation/swiftui/widget)

**Instance Property**

# body

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+, watchOS 9.0+

> The content and behavior of the widget.

```swift
@MainActor @preconcurrency var body: Self.Body { get }
```

## Discussion

For any widgets that you create, provide a computed `body` property that defines the widget as a composition of SwiftUI views.

Swift infers the widget’s [Body-swift.associatedtype](/documentation/swiftui/scene/body-swift.associatedtype) associated type based on the contents of the `body` property.

## Implementing a widget

- [Body](/documentation/swiftui/widget/body-swift.associatedtype)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
