---
title: init(for:content:defaultValue:)
description: Creates a data-presenting window group with a default value.
source: https://developer.apple.com/documentation/swiftui/windowgroup/init(for:content:defaultvalue:)
timestamp: 2025-10-29T00:15:01.658Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [windowgroup](/documentation/swiftui/windowgroup)

**Initializer**

# init(for:content:defaultValue:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Creates a data-presenting window group with a default value.

```swift
nonisolated init<D, C>(for type: D.Type = D.self, @ViewBuilder content: @escaping (Binding<D>) -> C, defaultValue: @escaping () -> D) where Content == PresentedWindowContent<D, C>, D : Decodable, D : Encodable, D : Hashable, C : View
```

## Parameters

**type**

The type of presented data this window group accepts.



**content**

A closure that creates the content for each instance of the group. The closure receives a binding to the value that you pass into the [open Window](/documentation/swiftui/environmentvalues/openwindow) action when you open the window. SwiftUI automatically persists and restores the value of this binding as part of the state restoration process.



**defaultValue**

A closure that returns a default value to present. SwiftUI calls this closure when it has no data to provide, like when someone opens a new window from the File > New Window menu item.



## Discussion

The window group using the given view as a template to form the content of each window in the group.

SwiftUI creates a window from the group when you present a value of the specified type using the [open Window](/documentation/swiftui/environmentvalues/openwindow) action.

## Providing default data to a window group

- [init(_:for:content:defaultValue:)](/documentation/swiftui/windowgroup/init(_:for:content:defaultvalue:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
