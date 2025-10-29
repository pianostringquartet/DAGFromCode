---
title: mask(_:)
description: Masks this view using the alpha channel of the given view.
source: https://developer.apple.com/documentation/swiftui/view/mask(_:)
timestamp: 2025-10-29T00:14:25.814Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# mask(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Masks this view using the alpha channel of the given view.

```swift
nonisolated func mask<Mask>(_ mask: Mask) -> some View where Mask : View
```

## Parameters

**mask**

The view whose alpha the rendering system applies to the specified view.



## Discussion

Use `mask(_:)` when you want to apply the alpha (opacity) value of another view to the current view.

This example shows an image masked by rectangle with a 10% opacity:

```swift
Image(systemName: "envelope.badge.fill")
    .foregroundColor(Color.blue)
    .font(.system(size: 128, weight: .regular))
    .mask(Rectangle().opacity(0.1))
```



## Graphics and rendering modifiers

- [accentColor(_:)](/documentation/swiftui/view/accentcolor(_:))
- [animation(_:)](/documentation/swiftui/view/animation(_:)-1hc0p)
- [cornerRadius(_:antialiased:)](/documentation/swiftui/view/cornerradius(_:antialiased:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
