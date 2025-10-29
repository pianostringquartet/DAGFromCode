---
title: init(action:)
description: Constructs a new help link with the specified action.
source: https://developer.apple.com/documentation/swiftui/helplink/init(action:)
timestamp: 2025-10-29T00:15:01.319Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [helplink](/documentation/swiftui/helplink)

**Initializer**

# init(action:)

**Available on:** macOS 14.0+

> Constructs a new help link with the specified action.

```swift
init(action: @escaping () -> Void)
```

## Parameters

**action**

The action to perform when the user clicks the button.



## Discussion

Use this initializer when you want the standard help button appearance with a custom button action that does not open an article in an Apple Help book.

## Creating a help link

- [init(destination:)](/documentation/swiftui/helplink/init(destination:))
- [init(anchor:)](/documentation/swiftui/helplink/init(anchor:))
- [init(anchor:book:)](/documentation/swiftui/helplink/init(anchor:book:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
