---
title: image
description: The loaded image, if any.
source: https://developer.apple.com/documentation/swiftui/asyncimagephase/image
timestamp: 2025-10-29T00:09:33.050Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [asyncimagephase](/documentation/swiftui/asyncimagephase)

**Instance Property**

# image

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The loaded image, if any.

```swift
var image: Image? { get }
```

## Discussion

If this value isn’t `nil`, the image load operation has finished, and you can use the image to update the view. You can use the image directly, or you can modify it in some way. For example, you can add a [resizable(capInsets:resizingMode:)](/documentation/swiftui/image/resizable(capinsets:resizingmode:)) modifier to make the image resizable.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
