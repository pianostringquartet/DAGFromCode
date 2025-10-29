---
title: Image.Scale
description: A scale to apply to vector images relative to text.
source: https://developer.apple.com/documentation/swiftui/image/scale
timestamp: 2025-10-29T00:13:17.867Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Enumeration**

# Image.Scale

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 11.0+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A scale to apply to vector images relative to text.

```swift
enum Scale
```

## Overview

Use this type with the [imageScale(_:)](/documentation/swiftui/view/imagescale(_:)) modifier, or the [image Scale](/documentation/swiftui/environmentvalues/imagescale) environment key, to set the image scale.

The following example shows the three `Scale` values as applied to a system symbol image, each set against a text view:

```swift
HStack { Image(systemName: "swift").imageScale(.small); Text("Small") }
HStack { Image(systemName: "swift").imageScale(.medium); Text("Medium") }
HStack { Image(systemName: "swift").imageScale(.large); Text("Large") }
```



## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting image scales

- [Image.Scale.small](/documentation/swiftui/image/scale/small) A scale that produces small images.
- [Image.Scale.medium](/documentation/swiftui/image/scale/medium) A scale that produces medium-sized images.
- [Image.Scale.large](/documentation/swiftui/image/scale/large) A scale that produces large images.

## Configuring an image

- [Fitting images into available space](/documentation/swiftui/fitting-images-into-available-space)
- [imageScale(_:)](/documentation/swiftui/view/imagescale(_:))
- [imageScale](/documentation/swiftui/environmentvalues/imagescale)
- [Image.Orientation](/documentation/swiftui/image/orientation)
- [Image.ResizingMode](/documentation/swiftui/image/resizingmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
