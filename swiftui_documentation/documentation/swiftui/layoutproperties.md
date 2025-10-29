---
title: LayoutProperties
description: Layout-specific properties of a layout container.
source: https://developer.apple.com/documentation/swiftui/layoutproperties
timestamp: 2025-10-29T00:12:22.188Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LayoutProperties

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Layout-specific properties of a layout container.

```swift
struct LayoutProperties
```

## Overview

This structure contains configuration information that’s applicable to a layout container. For example, the [stack Orientation](/documentation/swiftui/layoutproperties/stackorientation) value indicates the layout’s primary axis, if any.

You can use an instance of this type to characterize a custom layout container, which is a type that conforms to the [Layout](/documentation/swiftui/layout) protocol. Implement the protocol’s [layout Properties](/documentation/swiftui/layout/layoutproperties) property to return an instance. For example, you can indicate that your layout has a vertical stack orientation:

```swift
extension BasicVStack {
    static var layoutProperties: LayoutProperties {
        var properties = LayoutProperties()
        properties.stackOrientation = .vertical
        return properties
    }
}
```

If you don’t implement the property in your custom layout, the protocol provides a default implementation that returns a `LayoutProperties` instance with default values.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Creating a layout properties instance

- [init()](/documentation/swiftui/layoutproperties/init()) Creates a default set of properties.

## Getting layout properties

- [stackOrientation](/documentation/swiftui/layoutproperties/stackorientation) The orientation of the containing stack-like container.

## Configuring a custom layout

- [ProposedViewSize](/documentation/swiftui/proposedviewsize)
- [ViewSpacing](/documentation/swiftui/viewspacing)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
