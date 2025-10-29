---
title: named(_:)
description: Creates a named coordinate space using the given value.
source: https://developer.apple.com/documentation/swiftui/coordinatespaceprotocol/named(_:)
timestamp: 2025-10-29T00:14:32.756Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [coordinatespaceprotocol](/documentation/swiftui/coordinatespaceprotocol)

**Type Method**

# named(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Creates a named coordinate space using the given value.

```swift
static func named(_ name: some Hashable) -> NamedCoordinateSpace
```

## Parameters

**name**

A unique value that identifies the coordinate space.



## Return Value

A named coordinate space identified by the given value.

## Discussion

Use the `coordinateSpace(_:)` modifier to assign a name to the local coordinate space of a  parent view. Child views can then refer to that coordinate space using `.named(_:)`.

## Getting built-in coordinate spaces

- [immersiveSpace](/documentation/swiftui/coordinatespaceprotocol/immersivespace)
- [global](/documentation/swiftui/coordinatespaceprotocol/global)
- [local](/documentation/swiftui/coordinatespaceprotocol/local)
- [scrollView](/documentation/swiftui/coordinatespaceprotocol/scrollview)
- [scrollView(axis:)](/documentation/swiftui/coordinatespaceprotocol/scrollview(axis:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
