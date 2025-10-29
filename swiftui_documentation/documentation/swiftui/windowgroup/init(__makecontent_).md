---
title: init(_:makeContent:)
description: Creates a window group with a text view title.
source: https://developer.apple.com/documentation/swiftui/windowgroup/init(_:makecontent:)
timestamp: 2025-10-29T00:09:14.680Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowgroup](/documentation/swiftui/windowgroup)

**Initializer**

# init(_:makeContent:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a window group with a text view title.

```swift
nonisolated init(_ title: Text, @ViewBuilder makeContent: @escaping () -> Content)
```

## Parameters

**title**

The [Text](/documentation/swiftui/text) view to use for the group’s title.



**makeContent**

A closure that creates the content for each instance of the group.



## Discussion

The window group uses the given view as a template to form the content of each window in the group. The system uses the title to distinguish the window group in the user interface, such as in the name of commands associated with the group.

> [!IMPORTANT]
> The system ignores any text styling that you apply to the [Text](/documentation/swiftui/text) view title, like bold or italics. However, you can use the formatting controls that the view offers, like for localization, dates, and numerical representations.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
