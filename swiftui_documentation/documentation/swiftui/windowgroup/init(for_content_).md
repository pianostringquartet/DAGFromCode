---
title: init(for:content:)
description: Creates a data-presenting window group.
source: https://developer.apple.com/documentation/swiftui/windowgroup/init(for:content:)
timestamp: 2025-10-29T00:10:16.564Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowgroup](/documentation/swiftui/windowgroup)

**Initializer**

# init(for:content:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Creates a data-presenting window group.

```swift
nonisolated init<D, C>(for type: D.Type, @ViewBuilder content: @escaping (Binding<D?>) -> C) where Content == PresentedWindowContent<D, C>, D : Decodable, D : Encodable, D : Hashable, C : View
```

## Parameters

**type**

The type of presented data this window group accepts.



**content**

A closure that creates the content for each instance of the group. The closure receives a binding to the value that you pass into the [open Window](/documentation/swiftui/environmentvalues/openwindow) action when you open the window. SwiftUI automatically persists and restores the value of this binding as part of the state restoration process.



## Discussion

The window group uses the given view as a template to form the content of each window in the group.

SwiftUI creates a window from the group when you present a value of the specified type using the [open Window](/documentation/swiftui/environmentvalues/openwindow) action.

## Creating a data-driven window group

- [init(_:for:content:)](/documentation/swiftui/windowgroup/init(_:for:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
