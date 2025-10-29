---
title: init(selection:supportsOpacity:label:)
description: Creates an instance that selects a color.
source: https://developer.apple.com/documentation/swiftui/colorpicker/init(selection:supportsopacity:label:)
timestamp: 2025-10-29T00:09:46.029Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [colorpicker](/documentation/swiftui/colorpicker)

**Initializer**

# init(selection:supportsOpacity:label:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates an instance that selects a color.

```swift
init(selection: Binding<CGColor>, supportsOpacity: Bool = true, @ViewBuilder label: () -> Label)
```

## Parameters

**selection**

A [Binding](/documentation/swiftui/binding) to the variable that displays the selected `CGColor`.



**supportsOpacity**

A Boolean value that indicates whether the color picker allows adjusting the selected color’s opacity; the default is `true`.



**label**

A view that describes the use of the selected color. The system color picker UI sets it’s title using the text from this view.



## Creating a color picker

- [init(_:selection:supportsOpacity:)](/documentation/swiftui/colorpicker/init(_:selection:supportsopacity:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
