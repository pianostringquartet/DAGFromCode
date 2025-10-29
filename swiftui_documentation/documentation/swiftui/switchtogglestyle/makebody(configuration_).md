---
title: makeBody(configuration:)
description: Creates a view that represents the body of a toggle switch.
source: https://developer.apple.com/documentation/swiftui/switchtogglestyle/makebody(configuration:)
timestamp: 2025-10-29T00:10:24.089Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [switchtogglestyle](/documentation/swiftui/switchtogglestyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 18.0+, visionOS 1.0+, watchOS 6.0+

> Creates a view that represents the body of a toggle switch.

```swift
@MainActor @preconcurrency func makeBody(configuration: SwitchToggleStyle.Configuration) -> some View
```

## Parameters

**configuration**

The properties of the toggle, including a label and a binding to the toggle’s state.



## Return Value

A view that represents a switch.

## Discussion

SwiftUI implements this required method of the [Toggle Style](/documentation/swiftui/togglestyle) protocol to define the behavior and appearance of the [switch](/documentation/swiftui/togglestyle/switch) toggle style. Don’t call this method directly. Rather, the system calls this method for each [Toggle](/documentation/swiftui/toggle) instance in a view hierarchy that’s styled as a switch.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
