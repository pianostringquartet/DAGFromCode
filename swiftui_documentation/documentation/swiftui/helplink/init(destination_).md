---
title: init(destination:)
description: Constructs a new help link that opens the specified destination URL.
source: https://developer.apple.com/documentation/swiftui/helplink/init(destination:)
timestamp: 2025-10-29T00:11:25.887Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [helplink](/documentation/swiftui/helplink)

**Initializer**

# init(destination:)

**Available on:** macOS 14.0+

> Constructs a new help link that opens the specified destination URL.

```swift
init(destination: URL)
```

## Parameters

**destination**

The URL to open when the button is clicked.



## Discussion

Use this initializer when you want the standard help button appearance that opens a link to a website.

You can override the default behavior when the button is clicked by setting the [open URL](/documentation/swiftui/environmentvalues/openurl) environment value with a custom [Open URLAction](/documentation/swiftui/openurlaction).

## Creating a help link

- [init(action:)](/documentation/swiftui/helplink/init(action:))
- [init(anchor:)](/documentation/swiftui/helplink/init(anchor:))
- [init(anchor:book:)](/documentation/swiftui/helplink/init(anchor:book:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
