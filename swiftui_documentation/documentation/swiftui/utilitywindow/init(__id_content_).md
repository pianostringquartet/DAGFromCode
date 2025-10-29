---
title: init(_:id:content:)
description: Creates a utility window with a title and identifier.
source: https://developer.apple.com/documentation/swiftui/utilitywindow/init(_:id:content:)
timestamp: 2025-10-29T00:11:51.442Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [utilitywindow](/documentation/swiftui/utilitywindow)

**Initializer**

# init(_:id:content:)

**Available on:** macOS 15.0+

> Creates a utility window with a title and identifier.

```swift
init(_ title: Text, id: String, @ViewBuilder content: () -> Content)
```

## Parameters

**title**

The [Text](/documentation/swiftui/text) view to use in the utility window’s title bar. Provide a title that describes the purpose of the utility window.



**id**

An unique string identifier that you can use to open the utility window.



**content**

The view content to display in the utility window.



## Discussion

> [!IMPORTANT]
> The system ignores any text styling that you apply to the [Text](/documentation/swiftui/text) view title, like bold or italics. However, you can use the formatting controls that the view offers, like for localization, dates, and numerical representations.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
