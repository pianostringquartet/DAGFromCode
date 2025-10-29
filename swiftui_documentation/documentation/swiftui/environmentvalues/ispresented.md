---
title: isPresented
description: A Boolean value that indicates whether the view associated with this environment is currently presented.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/ispresented
timestamp: 2025-10-29T00:13:13.554Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# isPresented

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A Boolean value that indicates whether the view associated with this environment is currently presented.

```swift
var isPresented: Bool { get }
```

## Discussion

You can read this value like any of the other [Environment Values](/documentation/swiftui/environmentvalues) by creating a property with the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
@Environment(\.isPresented) private var isPresented
```

Read the value inside a view if you need to know when SwiftUI presents that view. For example, you can take an action when SwiftUI presents a view by using the [onChange(of:initial:_:)](/documentation/swiftui/view/onchange(of:initial:_:)) modifier:

```swift
.onChange(of: isPresented) { _, isPresented in
    if isPresented {
        // Do something when first presented.
    }
}
```

This behaves differently than [onAppear(perform:)](/documentation/swiftui/view/onappear(perform:)), which SwiftUI can call more than once for a given presentation, like when you navigate back to a view that’s already in the navigation hierarchy.

To dismiss the currently presented view, use [dismiss](/documentation/swiftui/environmentvalues/dismiss).

## Dismissing a presentation

- [dismiss](/documentation/swiftui/environmentvalues/dismiss)
- [DismissAction](/documentation/swiftui/dismissaction)
- [interactiveDismissDisabled(_:)](/documentation/swiftui/view/interactivedismissdisabled(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
