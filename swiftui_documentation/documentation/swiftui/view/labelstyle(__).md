---
title: labelStyle(_:)
description: Sets the style for labels within this view.
source: https://developer.apple.com/documentation/swiftui/view/labelstyle(_:)
timestamp: 2025-10-29T00:09:44.407Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# labelStyle(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Sets the style for labels within this view.

```swift
nonisolated func labelStyle<S>(_ style: S) -> some View where S : LabelStyle
```

## Discussion

Use this modifier to set a specific style for all labels within a view:

```swift
VStack {
    Label("Fire", systemImage: "flame.fill")
    Label("Lightning", systemImage: "bolt.fill")
}
.labelStyle(MyCustomLabelStyle())
```

## Displaying text

- [Text](/documentation/swiftui/text)
- [Label](/documentation/swiftui/label)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
