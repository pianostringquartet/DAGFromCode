---
title: SubviewsCollection
description: An opaque collection representing the subviews of view.
source: https://developer.apple.com/documentation/swiftui/subviewscollection
timestamp: 2025-10-29T00:13:59.335Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SubviewsCollection

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> An opaque collection representing the subviews of view.

```swift
struct SubviewsCollection
```

## Overview

Subviews collection constructs subviews on demand, so only access the part of the collection you need to create the resulting content.

You can get access to a view’s subview collection by using the `Group/init(sectionsOf:transform:)` initializer.

The collection’s elements are the pieces that make up the given view, and the collection as a whole acts as a proxy for the original view.

## Conforms To

- [BidirectionalCollection](/documentation/Swift/BidirectionalCollection)
- [Collection](/documentation/Swift/Collection)
- [Copyable](/documentation/Swift/Copyable)
- [RandomAccessCollection](/documentation/Swift/RandomAccessCollection)
- [Sequence](/documentation/Swift/Sequence)
- [View](/documentation/swiftui/view)

## Accessing a container’s subviews

- [Subview](/documentation/swiftui/subview)
- [SubviewsCollectionSlice](/documentation/swiftui/subviewscollectionslice)
- [containerValue(_:_:)](/documentation/swiftui/view/containervalue(_:_:))
- [ContainerValues](/documentation/swiftui/containervalues)
- [ContainerValueKey](/documentation/swiftui/containervaluekey)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
