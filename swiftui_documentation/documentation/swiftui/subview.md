---
title: Subview
description: An opaque value representing a subview of another view.
source: https://developer.apple.com/documentation/swiftui/subview
timestamp: 2025-10-29T00:12:53.253Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Subview

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> An opaque value representing a subview of another view.

```swift
struct Subview
```

## Overview

Access to a `Subview` can be obtained by using `ForEach(subviews:)` or `Group(subviews:)`.

Subviews are proxies to the resolved view they represent, meaning that modifiers applied to the original view will be applied before modifiers applied to the subview, and the view is resolved using the environment of its container, *not* the environment of the its subview proxy. Additionally, because subviews must represent a single leaf view, or container, a subview may represent a view after the application of styles. As such, attempting to apply a style to it may have no affect.

## Conforms To

- [Identifiable](/documentation/Swift/Identifiable)
- [View](/documentation/swiftui/view)

## Structures

- [Subview.ID](/documentation/swiftui/subview/id-swift.struct) A unique identifier for a subview.

## Instance Properties

- [containerValues](/documentation/swiftui/subview/containervalues) The container values associated with the given subview.
- [id](/documentation/swiftui/subview/id-swift.property) The unique identifier of the view.

## Enumerations

- [Subview.ContainerSizingOptions](/documentation/swiftui/subview/containersizingoptions) Options on how all subviews should be sized when in a container.

## Accessing a container’s subviews

- [SubviewsCollection](/documentation/swiftui/subviewscollection)
- [SubviewsCollectionSlice](/documentation/swiftui/subviewscollectionslice)
- [containerValue(_:_:)](/documentation/swiftui/view/containervalue(_:_:))
- [ContainerValues](/documentation/swiftui/containervalues)
- [ContainerValueKey](/documentation/swiftui/containervaluekey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
