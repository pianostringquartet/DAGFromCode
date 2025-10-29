---
title: anchor
description: The location of an Apple Pencil hovering in the area above the view’s bounds, expressed as a normalized anchor point relative to that view.
source: https://developer.apple.com/documentation/swiftui/pencilhoverpose/anchor
timestamp: 2025-10-29T00:10:05.364Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pencilhoverpose](/documentation/swiftui/pencilhoverpose)

**Instance Property**

# anchor

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> The location of an Apple Pencil hovering in the area above the view’s bounds, expressed as a normalized anchor point relative to that view.

```swift
let anchor: UnitPoint
```

## Discussion

You can pass this anchor point directly to a presentation modifier like [popover(isPresented:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(ispresented:attachmentanchor:arrowedge:content:)) or use the [location](/documentation/swiftui/pencilhoverpose/location) property if you require an absolute point instead.

## Getting the hover characteristics

- [location](/documentation/swiftui/pencilhoverpose/location)
- [zDistance](/documentation/swiftui/pencilhoverpose/zdistance)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
