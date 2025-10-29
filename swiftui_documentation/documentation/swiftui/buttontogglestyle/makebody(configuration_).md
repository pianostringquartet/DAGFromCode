---
title: makeBody(configuration:)
description: Creates a view that represents the body of a toggle button.
source: https://developer.apple.com/documentation/swiftui/buttontogglestyle/makebody(configuration:)
timestamp: 2025-10-29T00:13:55.541Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [buttontogglestyle](/documentation/swiftui/buttontogglestyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+, watchOS 9.0+

> Creates a view that represents the body of a toggle button.

```swift
@MainActor @preconcurrency func makeBody(configuration: ButtonToggleStyle.Configuration) -> some View
```

## Parameters

**configuration**

The properties of the toggle, including a label and a binding to the toggle’s state.



## Return Value

A view that acts as a button that controls a Boolean state.

## Discussion

SwiftUI implements this required method of the [Toggle Style](/documentation/swiftui/togglestyle) protocol to define the behavior and appearance of the [button](/documentation/swiftui/togglestyle/button) toggle style. Don’t call this method directly; the system calls this method for each [Toggle](/documentation/swiftui/toggle) instance in a view hierarchy that’s styled as a button.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
