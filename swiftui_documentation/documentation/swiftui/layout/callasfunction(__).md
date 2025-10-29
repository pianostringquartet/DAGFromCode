---
title: callAsFunction(_:)
description: Combines the specified views into a single composite view using the layout algorithms of the custom layout container.
source: https://developer.apple.com/documentation/swiftui/layout/callasfunction(_:)
timestamp: 2025-10-29T00:14:46.113Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [layout](/documentation/swiftui/layout)

**Instance Method**

# callAsFunction(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Combines the specified views into a single composite view using the layout algorithms of the custom layout container.

```swift
func callAsFunction<V>(@ViewBuilder _ content: () -> V) -> some View where V : View
```

## Parameters

**content**

A [View Builder](/documentation/swiftui/viewbuilder) that contains the views to lay out.



## Return Value

A composite view that combines all the input views.

## Discussion

Don’t call this method directly. SwiftUI calls it when you instantiate a custom layout that conforms to the [Layout](/documentation/swiftui/layout) protocol:

```swift
BasicVStack { // Implicitly calls callAsFunction.
    Text("A View")
    Text("Another View")
}
```

For information about how Swift uses the `callAsFunction()` method to simplify call site syntax, see [Declarations.html#ID622](https://docs.swift.org/swift-book/ReferenceManual/Declarations.html#ID622) in *The Swift Programming Language*.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
