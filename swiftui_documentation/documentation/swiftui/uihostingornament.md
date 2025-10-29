---
title: UIHostingOrnament
description: A model that represents an ornament suitable for being hosted in UIKit.
source: https://developer.apple.com/documentation/swiftui/uihostingornament
timestamp: 2025-10-29T00:09:30.713Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Class**

# UIHostingOrnament

**Available on:** visionOS 1.0+

> A model that represents an ornament suitable for being hosted in UIKit.

```swift
class UIHostingOrnament<Content> where Content : View
```

## Overview

Use a `UIHostingOrnament` when you want to add ornaments to a UIKit view controller. For example, the following adds a single bottom ornament to the current view controller:

```swift
self.ornaments = [
    UIHostingOrnament(sceneAnchor: .bottom) {
        OrnamentContent()
    }
]
```

## Inherits From

- [UIOrnament](/documentation/swiftui/uiornament)

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a hosting ornament

- [rootView](/documentation/swiftui/uihostingornament/rootview) The root view of the SwiftUI view hierarchy managed by this ornament.

## Setting the alignment

- [contentAlignment](/documentation/swiftui/uihostingornament/contentalignment) The alignment in the ornament used to position it.

## Initializers

- [init(sceneAnchor:contentAlignment:content:)](/documentation/swiftui/uihostingornament/init(sceneanchor:contentalignment:content:)) Creates an ornament with the specified alignment and content.

## Instance Properties

- [contentAlignment3D](/documentation/swiftui/uihostingornament/contentalignment3d)
- [sceneAnchor](/documentation/swiftui/uihostingornament/sceneanchor) The anchor point for aligning the ornament’s content (based on the ) with the scene.

## Hosting an ornament in UIKit

- [UIOrnament](/documentation/swiftui/uiornament)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
