---
title: UserInterfaceSizeClass
description: A set of values that indicate the visual size available to the view.
source: https://developer.apple.com/documentation/swiftui/userinterfacesizeclass
timestamp: 2025-10-29T00:11:33.805Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# UserInterfaceSizeClass

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A set of values that indicate the visual size available to the view.

```swift
enum UserInterfaceSizeClass
```

## Overview

You receive a size class value when you read either the [horizontal Size Class](/documentation/swiftui/environmentvalues/horizontalsizeclass) or [vertical Size Class](/documentation/swiftui/environmentvalues/verticalsizeclass) environment value. The value tells you about the amount of space available to your views in a given direction. You can read the size class like any other of the [Environment Values](/documentation/swiftui/environmentvalues), by creating a property with the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
@Environment(\.horizontalSizeClass) private var horizontalSizeClass
@Environment(\.verticalSizeClass) private var verticalSizeClass
```

SwiftUI sets the size class based on several factors, including:

- The current device type.
- The orientation of the device.
- The appearance of Slide Over and Split View on iPad.

Several built-in views change their behavior based on the size class. For example, a [Navigation View](/documentation/swiftui/navigationview) presents a multicolumn view when the horizontal size class is [regular](/documentation/swiftui/userinterfacesizeclass/regular), but a single column otherwise. You can also adjust the appearance of custom views by reading the size class and conditioning your views. If you do, be prepared to handle size class changes while your app runs, because factors like device orientation can change at runtime.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting size classes

- [UserInterfaceSizeClass.compact](/documentation/swiftui/userinterfacesizeclass/compact) The compact size class.
- [UserInterfaceSizeClass.regular](/documentation/swiftui/userinterfacesizeclass/regular) The regular size class.

## Creating a size class

- [init(_:)](/documentation/swiftui/userinterfacesizeclass/init(_:)) Creates a SwiftUI size class from the specified UIKit size class.

## Reacting to interface characteristics

- [isLuminanceReduced](/documentation/swiftui/environmentvalues/isluminancereduced)
- [displayScale](/documentation/swiftui/environmentvalues/displayscale)
- [pixelLength](/documentation/swiftui/environmentvalues/pixellength)
- [horizontalSizeClass](/documentation/swiftui/environmentvalues/horizontalsizeclass)
- [verticalSizeClass](/documentation/swiftui/environmentvalues/verticalsizeclass)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
