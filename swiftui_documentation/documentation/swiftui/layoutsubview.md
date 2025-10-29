---
title: LayoutSubview
description: A proxy that represents one subview of a layout.
source: https://developer.apple.com/documentation/swiftui/layoutsubview
timestamp: 2025-10-29T00:11:26.341Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# LayoutSubview

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A proxy that represents one subview of a layout.

```swift
struct LayoutSubview
```

## Overview

This type acts as a proxy for a view that your custom layout container places in the user interface. [Layout](/documentation/swiftui/layout) protocol methods receive a [Layout Subviews](/documentation/swiftui/layoutsubviews) collection that contains exactly one proxy for each of the subviews arranged by your container.

Use a proxy to get information about the associated subview, like its dimensions, layout priority, or custom layout values. You also use the proxy to tell its corresponding subview where to appear by calling the proxy’s [place(at:anchor:proposal:)](/documentation/swiftui/layoutsubview/place(at:anchor:proposal:)) method. Do this once for each subview from your implementation of the layout’s [placeSubviews(in:proposal:subviews:cache:)](/documentation/swiftui/layout/placesubviews(in:proposal:subviews:cache:)) method.

You can read custom layout values associated with a subview by using the property’s key as an index on the subview. For more information about defining, setting, and reading custom values, see [Layout Value Key](/documentation/swiftui/layoutvaluekey).

## Conforms To

- [Equatable](/documentation/Swift/Equatable)

## Placing the subview

- [place(at:anchor:proposal:)](/documentation/swiftui/layoutsubview/place(at:anchor:proposal:)) Assigns a position and proposed size to the subview.

## Getting subview characteristics

- [dimensions(in:)](/documentation/swiftui/layoutsubview/dimensions(in:)) Asks the subview for its dimensions and alignment guides.
- [sizeThatFits(_:)](/documentation/swiftui/layoutsubview/sizethatfits(_:)) Asks the subview for its size.
- [spacing](/documentation/swiftui/layoutsubview/spacing) The subviews’s preferred spacing values.
- [priority](/documentation/swiftui/layoutsubview/priority) The layout priority of the subview.

## Getting custom values

- [subscript(_:)](/documentation/swiftui/layoutsubview/subscript(_:)) Gets the value for the subview that’s associated with the specified key.

## Instance Properties

- [containerValues](/documentation/swiftui/layoutsubview/containervalues) The container values associated with the given subview.

## Creating a custom layout container

- [Composing custom layouts with SwiftUI](/documentation/swiftui/composing-custom-layouts-with-swiftui)
- [Layout](/documentation/swiftui/layout)
- [LayoutSubviews](/documentation/swiftui/layoutsubviews)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
