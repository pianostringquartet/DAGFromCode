---
title: NamedCoordinateSpace
description: A named coordinate space.
source: https://developer.apple.com/documentation/swiftui/namedcoordinatespace
timestamp: 2025-10-29T00:10:26.373Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NamedCoordinateSpace

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> A named coordinate space.

```swift
struct NamedCoordinateSpace
```

## Overview

Use the `coordinateSpace(_:)` modifier to assign a name to the local coordinate space of a  parent view. Child views can then refer to that coordinate space using `.named(_:)`.

## Conforms To

- [CoordinateSpaceProtocol](/documentation/swiftui/coordinatespaceprotocol)
- [Equatable](/documentation/Swift/Equatable)

## Supporting types

- [GlobalCoordinateSpace](/documentation/swiftui/globalcoordinatespace)
- [LocalCoordinateSpace](/documentation/swiftui/localcoordinatespace)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
