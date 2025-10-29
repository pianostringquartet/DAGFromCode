---
title: horizontalSizeClass
description: The horizontal size class of this environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/horizontalsizeclass
timestamp: 2025-10-29T00:09:44.767Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# horizontalSizeClass

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> The horizontal size class of this environment.

```swift
@backDeployed(before: macOS 14.0, tvOS 17.0, watchOS 10.0)
var horizontalSizeClass: UserInterfaceSizeClass? { get set }
```

## Discussion

You receive a [User Interface Size Class](/documentation/swiftui/userinterfacesizeclass) value when you read this environment value. The value tells you about the amount of horizontal space available to the view that reads it. You can read this size class like any other of the [Environment Values](/documentation/swiftui/environmentvalues), by creating a property with the [Environment](/documentation/swiftui/environment) property wrapper:

```swift
@Environment(\.horizontalSizeClass) private var horizontalSizeClass
```

SwiftUI sets this size class based on several factors, including:

- The current device type.
- The orientation of the device.
- The appearance of Slide Over and Split View on iPad.

Several built-in views change their behavior based on this size class. For example, a [Navigation View](/documentation/swiftui/navigationview) presents a multicolumn view when the horizontal size class is [regular](/documentation/swiftui/userinterfacesizeclass/regular), but a single column otherwise. You can also adjust the appearance of custom views by reading the size class and conditioning your views. If you do, be prepared to handle size class changes while your app runs, because factors like device orientation can change at runtime.

In watchOS, the horizontal size class is always [compact](/documentation/swiftui/userinterfacesizeclass/compact). In macOS, and tvOS, it’s always [regular](/documentation/swiftui/userinterfacesizeclass/regular).

Writing to the horizontal size class in the environment before macOS 14.0, tvOS 17.0, and watchOS 10.0 is not supported.

## Reacting to interface characteristics

- [isLuminanceReduced](/documentation/swiftui/environmentvalues/isluminancereduced)
- [displayScale](/documentation/swiftui/environmentvalues/displayscale)
- [pixelLength](/documentation/swiftui/environmentvalues/pixellength)
- [verticalSizeClass](/documentation/swiftui/environmentvalues/verticalsizeclass)
- [UserInterfaceSizeClass](/documentation/swiftui/userinterfacesizeclass)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
