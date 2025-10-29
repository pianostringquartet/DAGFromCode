---
title: init(_:scale:orientation:label:)
description: Creates a labeled image based on a Core Graphics image instance, usable as content for controls.
source: https://developer.apple.com/documentation/swiftui/image/init(_:scale:orientation:label:)
timestamp: 2025-10-29T00:11:41.320Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [image](/documentation/swiftui/image)

**Initializer**

# init(_:scale:orientation:label:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a labeled image based on a Core Graphics image instance, usable as content for controls.

```swift
init(_ cgImage: CGImage, scale: CGFloat, orientation: Image.Orientation = .up, label: Text)
```

## Parameters

**cgImage**

The base graphical image.



**scale**

The scale factor for the image, with a value like `1.0`, `2.0`, or `3.0`.



**orientation**

The orientation of the image. The default is [up](/documentation/swiftui/image/orientation/up).



**label**

The label associated with the image. SwiftUI uses the label for accessibility.



## Creating an image for use as a control

- [init(_:bundle:label:)](/documentation/swiftui/image/init(_:bundle:label:))
- [init(_:variableValue:bundle:label:)](/documentation/swiftui/image/init(_:variablevalue:bundle:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
