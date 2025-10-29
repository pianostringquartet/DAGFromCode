---
title: default(_:action:)
description: Creates an alert button with the default style.
source: https://developer.apple.com/documentation/swiftui/alert/button/default(_:action:)
timestamp: 2025-10-29T00:14:08.272Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [alert](/documentation/swiftui/alert) › [button](/documentation/swiftui/alert/button)

**Type Method**

# default(_:action:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an alert button with the default style.

```swift
static func `default`(_ label: Text, action: (() -> Void)? = {}) -> Alert.Button
```

## Parameters

**label**

The text to display on the button.



**action**

A closure to execute when the user taps or presses the button.



## Return Value

An alert button with the default style.

## Getting a button

- [cancel(_:)](/documentation/swiftui/alert/button/cancel(_:))
- [cancel(_:action:)](/documentation/swiftui/alert/button/cancel(_:action:))
- [destructive(_:action:)](/documentation/swiftui/alert/button/destructive(_:action:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
