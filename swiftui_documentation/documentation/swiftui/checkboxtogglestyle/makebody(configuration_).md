---
title: makeBody(configuration:)
description: Creates a view that represents the body of a toggle checkbox.
source: https://developer.apple.com/documentation/swiftui/checkboxtogglestyle/makebody(configuration:)
timestamp: 2025-10-29T00:12:17.849Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [checkboxtogglestyle](/documentation/swiftui/checkboxtogglestyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** macOS 10.15+

> Creates a view that represents the body of a toggle checkbox.

```swift
@MainActor @preconcurrency func makeBody(configuration: CheckboxToggleStyle.Configuration) -> some View
```

## Parameters

**configuration**

The properties of the toggle, including a label and a binding to the toggle’s state.



## Return Value

A view that represents a checkbox.

## Discussion

SwiftUI implements this required method of the [Toggle Style](/documentation/swiftui/togglestyle) protocol to define the behavior and appearance of the [checkbox](/documentation/swiftui/togglestyle/checkbox) toggle style. Don’t call this method directly. Rather, the system calls this method for each [Toggle](/documentation/swiftui/toggle) instance in a view hierarchy that’s styled as a checkbox.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
