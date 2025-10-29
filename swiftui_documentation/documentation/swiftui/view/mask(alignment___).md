---
title: mask(alignment:_:)
description: Masks this view using the alpha channel of the given view.
source: https://developer.apple.com/documentation/swiftui/view/mask(alignment:_:)
timestamp: 2025-10-29T00:12:45.845Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# mask(alignment:_:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Masks this view using the alpha channel of the given view.

```swift
nonisolated func mask<Mask>(alignment: Alignment = .center, @ViewBuilder _ mask: () -> Mask) -> some View where Mask : View
```

## Parameters

**alignment**

The alignment for `mask` in relation to this view.



**mask**

The view whose alpha the rendering system applies to the specified view.



## Discussion

Use `mask(_:)` when you want to apply the alpha (opacity) value of another view to the current view.

This example shows an image masked by rectangle with a 10% opacity:

```swift
Image(systemName: "envelope.badge.fill")
    .foregroundColor(Color.blue)
    .font(.system(size: 128, weight: .regular))
    .mask {
        Rectangle().opacity(0.1)
    }
```



## Masking and clipping

- [clipped(antialiased:)](/documentation/swiftui/view/clipped(antialiased:))
- [clipShape(_:style:)](/documentation/swiftui/view/clipshape(_:style:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
