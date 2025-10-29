---
title: SpatialContainer
description: A layout container that aligns overlapping content in 3D space.
source: https://developer.apple.com/documentation/swiftui/spatialcontainer
timestamp: 2025-10-29T00:13:21.600Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SpatialContainer

**Available on:** visionOS 26.0+

> A layout container that aligns overlapping content in 3D space.

```swift
@frozen struct SpatialContainer
```

## Overview

The container will take the max size of each dimension of each of its children, aligning its children based on the `alignment`.

## Conforms To

- [Animatable](/documentation/swiftui/animatable)
- [Copyable](/documentation/Swift/Copyable)
- [Layout](/documentation/swiftui/layout)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Initializers

- [init(alignment:)](/documentation/swiftui/spatialcontainer/init(alignment:)) Creates a spatial container layout with the specified 3D alignment.

## Aligning views

- [Aligning views within a stack](/documentation/swiftui/aligning-views-within-a-stack)
- [Aligning views across stacks](/documentation/swiftui/aligning-views-across-stacks)
- [alignmentGuide(_:computeValue:)](/documentation/swiftui/view/alignmentguide(_:computevalue:))
- [Alignment](/documentation/swiftui/alignment)
- [HorizontalAlignment](/documentation/swiftui/horizontalalignment)
- [VerticalAlignment](/documentation/swiftui/verticalalignment)
- [DepthAlignment](/documentation/swiftui/depthalignment)
- [AlignmentID](/documentation/swiftui/alignmentid)
- [ViewDimensions](/documentation/swiftui/viewdimensions)
- [ViewDimensions3D](/documentation/swiftui/viewdimensions3d)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
