---
title: resizable(capInsets:resizingMode:)
description: Sets the mode by which SwiftUI resizes an image to fit its space.
source: https://developer.apple.com/documentation/swiftui/image/resizable(capinsets:resizingmode:)
timestamp: 2025-10-29T00:14:43.209Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Instance Method**

# resizable(capInsets:resizingMode:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Sets the mode by which SwiftUI resizes an image to fit its space.

```swift
func resizable(capInsets: EdgeInsets = EdgeInsets(), resizingMode: Image.ResizingMode = .stretch) -> Image
```

## Parameters

**capInsets**

Inset values that indicate a portion of the image that SwiftUI doesn’t resize.



**resizingMode**

The mode by which SwiftUI resizes the image.



## Return Value

An image, with the new resizing behavior set.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
