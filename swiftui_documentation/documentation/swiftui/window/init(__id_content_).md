---
title: init(_:id:content:)
description: Creates a window with a title and an identifier.
source: https://developer.apple.com/documentation/swiftui/window/init(_:id:content:)
timestamp: 2025-10-29T00:12:44.017Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [window](/documentation/swiftui/window)

**Initializer**

# init(_:id:content:)

**Available on:** macOS 13.0+, visionOS 26.0+

> Creates a window with a title and an identifier.

```swift
init(_ title: Text, id: String, @ViewBuilder content: () -> Content)
```

## Parameters

**title**

The [Text](/documentation/swiftui/text) view to use for the window’s title in system menus and in the window’s title bar. Provide a title that describes the purpose of the window.



**id**

A unique string identifier that you can use to open the window.



**content**

The view content to display in the window.



## Discussion

The window displays the view that you specify.

> [!IMPORTANT]
> The system ignores any text styling that you apply to the [Text](/documentation/swiftui/text) view title, like bold or italics. However, you can use the formatting controls that the view offers, like for localization, dates, and numerical representations.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
