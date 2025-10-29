---
title: clear
description: The clear variant of glass.
source: https://developer.apple.com/documentation/swiftui/glass/clear
timestamp: 2025-10-29T00:10:40.273Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [glass](/documentation/swiftui/glass)

**Type Property**

# clear

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, watchOS 26.0+

> The clear variant of glass.

```swift
static var clear: Glass { get }
```

## Discussion

When using clear glass, ensure content remains legible by adding a dimming layer or other treatment beneath the glass.

For example, you could add a transparent black color beneath your glass to ensure content remains legible above the glass.

```swift
Label("Flag", systemImage: "flag.fill")
    .padding()
    .glassEffect(.clear)
    .background(.black.opacity(0.3))
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
