---
title: init(decorative:scale:orientation:)
description: Creates an unlabeled, decorative image based on a Core Graphics image instance.
source: https://developer.apple.com/documentation/swiftui/image/init(decorative:scale:orientation:)
timestamp: 2025-10-29T00:14:53.752Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Initializer**

# init(decorative:scale:orientation:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an unlabeled, decorative image based on a Core Graphics image instance.

```swift
init(decorative cgImage: CGImage, scale: CGFloat, orientation: Image.Orientation = .up)
```

## Parameters

**cgImage**

The base graphical image.



**scale**

The scale factor for the image, with a value like `1.0`, `2.0`, or `3.0`.



**orientation**

The orientation of the image. The default is [up](/documentation/swiftui/image/orientation/up).



## Discussion

SwiftUI ignores this image for accessibility purposes.

## Creating an image for decorative use

- [init(decorative:bundle:)](/documentation/swiftui/image/init(decorative:bundle:))
- [init(decorative:variableValue:bundle:)](/documentation/swiftui/image/init(decorative:variablevalue:bundle:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
