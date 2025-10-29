---
title: roll
description: A value that represents the barrel roll angle of the hovering Apple Pencil.
source: https://developer.apple.com/documentation/swiftui/pencilhoverpose/roll
timestamp: 2025-10-29T00:15:16.145Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [pencilhoverpose](/documentation/swiftui/pencilhoverpose)

**Instance Property**

# roll

**Available on:** iOS 17.5+, iPadOS 17.5+, Mac Catalyst 17.5+, macOS 14.5+

> A value that represents the barrel roll angle of the hovering Apple Pencil.

```swift
let roll: Angle
```

## Discussion

This value is `.zero` when the user starts using their Apple Pencil, and changes relative to that initial angle as the user rolls the Apple Pencil alongside its barrel. If the Apple Pencil doesn’t support detecting its barrel roll angle, this property is always `.zero`.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
