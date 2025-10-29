---
title: init(_:id:content:)
description: Creates a window group with a text view title and an identifier.
source: https://developer.apple.com/documentation/swiftui/windowgroup/init(_:id:content:)
timestamp: 2025-10-29T00:10:33.648Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowgroup](/documentation/swiftui/windowgroup)

**Initializer**

# init(_:id:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a window group with a text view title and an identifier.

```swift
init(_ title: Text, id: String, @ViewBuilder content: () -> Content)
```

## Parameters

**title**

The [Text](/documentation/swiftui/text) view to use for the group’s title.



**id**

A string that uniquely identifies the window group. Identifiers must be unique among the window groups in your app.



**content**

A closure that creates the content for each instance of the group.



## Discussion

The window group uses the specified content as a template to create each window in the group. The system uses the title to distinguish the window group in the user interface, such as in the name of commands associated with the group.

> [!IMPORTANT]
> The system ignores any text styling that you apply to the [Text](/documentation/swiftui/text) view title, like bold or italics. However, you can use the formatting controls that the view offers, like for localization, dates, and numerical representations.

## Identifying a window group

- [init(id:content:)](/documentation/swiftui/windowgroup/init(id:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
