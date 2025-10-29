---
title: makeBody(configuration:)
description: Creates a view that represents the body of a toggle.
source: https://developer.apple.com/documentation/swiftui/defaulttogglestyle/makebody(configuration:)
timestamp: 2025-10-29T00:10:46.120Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [defaulttogglestyle](/documentation/swiftui/defaulttogglestyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a view that represents the body of a toggle.

```swift
@MainActor @preconcurrency func makeBody(configuration: DefaultToggleStyle.Configuration) -> some View
```

## Parameters

**configuration**

The properties of the toggle, including a label and a binding to the toggle’s state.



## Return Value

A view that acts as a toggle.

## Discussion

SwiftUI implements this required method of the [Toggle Style](/documentation/swiftui/togglestyle) protocol to define the behavior and appearance of the [automatic](/documentation/swiftui/togglestyle/automatic) toggle style. Don’t call this method directly. Rather, the system calls this method for each [Toggle](/documentation/swiftui/toggle) instance in a view hierarchy that needs the default style.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
