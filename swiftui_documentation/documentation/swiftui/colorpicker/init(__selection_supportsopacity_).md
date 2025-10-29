---
title: init(_:selection:supportsOpacity:)
description: Creates a color picker with a text label generated from a title string key.
source: https://developer.apple.com/documentation/swiftui/colorpicker/init(_:selection:supportsopacity:)
timestamp: 2025-10-29T00:14:34.126Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [colorpicker](/documentation/swiftui/colorpicker)

**Initializer**

# init(_:selection:supportsOpacity:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a color picker with a text label generated from a title string key.

```swift
nonisolated init(_ titleKey: LocalizedStringKey, selection: Binding<CGColor>, supportsOpacity: Bool = true)
```

## Parameters

**titleKey**

The key for the localized title of the picker.



**selection**

A [Binding](/documentation/swiftui/binding) to the variable that displays the selected `CGColor`.



**supportsOpacity**

A Boolean value that indicates whether the color picker allows adjustments to the selected color’s opacity; the default is `true`.



## Creating a color picker

- [init(selection:supportsOpacity:label:)](/documentation/swiftui/colorpicker/init(selection:supportsopacity:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
