---
title: init(id:for:content:)
description: Creates a data-presenting window group with an identifier.
source: https://developer.apple.com/documentation/swiftui/windowgroup/init(id:for:content:)
timestamp: 2025-10-29T00:13:12.483Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowgroup](/documentation/swiftui/windowgroup)

**Initializer**

# init(id:for:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Creates a data-presenting window group with an identifier.

```swift
nonisolated init<D, C>(id: String, for type: D.Type, @ViewBuilder content: @escaping (Binding<D?>) -> C) where Content == PresentedWindowContent<D, C>, D : Decodable, D : Encodable, D : Hashable, C : View
```

## Parameters

**id**

A string that uniquely identifies the window group. Identifiers must be unique among the window groups in your app.



**type**

The type of presented data this window group accepts.



**content**

A closure that creates the content for each instance of the group. The closure receives a binding to the value that you pass into the [open Window](/documentation/swiftui/environmentvalues/openwindow) action when you open the window. SwiftUI automatically persists and restores the value of this binding as part of the state restoration process.



## Discussion

The window group uses the specified content as a template to create each window in the group.

SwiftUI creates a window from the group when you present a value of the specified type using the [open Window](/documentation/swiftui/environmentvalues/openwindow) action.

## Identifying a data-driven window group

- [init(_:id:for:content:)](/documentation/swiftui/windowgroup/init(_:id:for:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
