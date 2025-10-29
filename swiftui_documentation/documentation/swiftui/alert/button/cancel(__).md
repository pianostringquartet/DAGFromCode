---
title: cancel(_:)
description: Creates an alert button that indicates cancellation, with a system-provided label.
source: https://developer.apple.com/documentation/swiftui/alert/button/cancel(_:)
timestamp: 2025-10-29T00:09:37.732Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alert](/documentation/swiftui/alert) › [button](/documentation/swiftui/alert/button)

**Type Method**

# cancel(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an alert button that indicates cancellation, with a system-provided label.

```swift
static func cancel(_ action: (() -> Void)? = {}) -> Alert.Button
```

## Parameters

**action**

A closure to execute when the user taps or presses the button.



## Return Value

An alert button that indicates cancellation.

## Discussion

The system automatically chooses locale-appropriate text for the button’s label.

## Getting a button

- [default(_:action:)](/documentation/swiftui/alert/button/default(_:action:))
- [cancel(_:action:)](/documentation/swiftui/alert/button/cancel(_:action:))
- [destructive(_:action:)](/documentation/swiftui/alert/button/destructive(_:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
