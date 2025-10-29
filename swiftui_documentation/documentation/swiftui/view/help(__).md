---
title: help(_:)
description: Adds help text to a view using a text view that you provide.
source: https://developer.apple.com/documentation/swiftui/view/help(_:)
timestamp: 2025-10-29T00:11:39.025Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# help(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Adds help text to a view using a text view that you provide.

```swift
nonisolated func help(_ text: Text) -> some View
```

## Parameters

**text**

The [Text](/documentation/swiftui/text) view to use as help.



## Discussion

Adding help to a view configures the view’s accessibility hint and its help tag (also called a *tooltip*) in macOS or visionOS. For more information on using help tags, see [offering](/design/Human-Interface-Guidelines/offering-help) in the Human Interface Guidelines.

```swift
Slider("Opacity", value: $selectedShape.opacity)
    .help(Text("Adjust the opacity of the selected \(selectedShape.name)"))
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
