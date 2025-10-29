---
title: destructive(_:action:)
description: Creates an alert button with a style that indicates a destructive action.
source: https://developer.apple.com/documentation/swiftui/alert/button/destructive(_:action:)
timestamp: 2025-10-29T00:10:06.063Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alert](/documentation/swiftui/alert) › [button](/documentation/swiftui/alert/button)

**Type Method**

# destructive(_:action:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an alert button with a style that indicates a destructive action.

```swift
static func destructive(_ label: Text, action: (() -> Void)? = {}) -> Alert.Button
```

## Parameters

**label**

The text to display on the button.



**action**

A closure to execute when the user taps or presses the button.



## Return Value

An alert button that indicates a destructive action.

## Getting a button

- [default(_:action:)](/documentation/swiftui/alert/button/default(_:action:))
- [cancel(_:)](/documentation/swiftui/alert/button/cancel(_:))
- [cancel(_:action:)](/documentation/swiftui/alert/button/cancel(_:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
