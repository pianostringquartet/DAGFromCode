---
title: Anchor.Source
description: A type-erased geometry value that produces an anchored value of a given type.
source: https://developer.apple.com/documentation/swiftui/anchor/source
timestamp: 2025-10-29T00:13:33.228Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [anchor](/documentation/swiftui/anchor)

**Structure**

# Anchor.Source

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type-erased geometry value that produces an anchored value of a given type.

```swift
@frozen struct Source
```

## Overview

SwiftUI passes anchored geometry values around the view tree via preference keys. It then converts them back into the local coordinate space using a [Geometry Proxy](/documentation/swiftui/geometryproxy) value.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting point anchor sources

- [point(_:)](/documentation/swiftui/anchor/source/point(_:))
- [unitPoint(_:)](/documentation/swiftui/anchor/source/unitpoint(_:))

## Getting rectangle anchor sources

- [rect(_:)](/documentation/swiftui/anchor/source/rect(_:)) Returns an anchor source rect defined by  in the current view.
- [bounds](/documentation/swiftui/anchor/source/bounds) An anchor source rect defined as the entire bounding rect of the current view.

## Getting top anchor sources

- [topLeading](/documentation/swiftui/anchor/source/topleading)
- [top](/documentation/swiftui/anchor/source/top)
- [topTrailing](/documentation/swiftui/anchor/source/toptrailing)

## Getting middle anchor sources

- [leading](/documentation/swiftui/anchor/source/leading)
- [trailing](/documentation/swiftui/anchor/source/trailing)

## Getting bottom anchor sources

- [bottomTrailing](/documentation/swiftui/anchor/source/bottomtrailing)
- [bottom](/documentation/swiftui/anchor/source/bottom)
- [bottomLeading](/documentation/swiftui/anchor/source/bottomleading)

## Creating an anchor source

- [init(_:)](/documentation/swiftui/anchor/source/init(_:))

## Type Properties

- [bounds3D](/documentation/swiftui/anchor/source/bounds3d) An anchor source rect defined as the entire bounding rect of the current element.
- [center](/documentation/swiftui/anchor/source/center-6w6ww)
- [center](/documentation/swiftui/anchor/source/center-869al)
- [center3D](/documentation/swiftui/anchor/source/center3d)

## Type Methods

- [point3D(_:)](/documentation/swiftui/anchor/source/point3d(_:))
- [rect3D(_:)](/documentation/swiftui/anchor/source/rect3d(_:)) Returns an anchor source rect defined by  in the current element.
- [unitPoint3D(_:)](/documentation/swiftui/anchor/source/unitpoint3d(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
