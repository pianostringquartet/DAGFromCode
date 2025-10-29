---
title: GeometryEffect
description: An effect that changes the visual appearance of a view, largely without changing its ancestors or descendants.
source: https://developer.apple.com/documentation/swiftui/geometryeffect
timestamp: 2025-10-29T00:11:01.322Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# GeometryEffect

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> An effect that changes the visual appearance of a view, largely without changing its ancestors or descendants.

```swift
protocol GeometryEffect : Animatable, ViewModifier, _RemoveGlobalActorIsolation where Self.Body == Never
```

## Overview

The only change the effect makes to the view’s ancestors and descendants is to change the coordinate transform to and from them.

## Inherits From

- [Animatable](/documentation/swiftui/animatable)
- [ViewModifier](/documentation/swiftui/viewmodifier)

## Applying effects

- [effectValue(size:)](/documentation/swiftui/geometryeffect/effectvalue(size:)) Returns the current value of the effect.
- [ignoredByLayout()](/documentation/swiftui/geometryeffect/ignoredbylayout()) Returns an effect that produces the same geometry transform as this effect, but only applies the transform while rendering its view.

## Synchronizing geometries

- [matchedGeometryEffect(id:in:properties:anchor:isSource:)](/documentation/swiftui/view/matchedgeometryeffect(id:in:properties:anchor:issource:))
- [MatchedGeometryProperties](/documentation/swiftui/matchedgeometryproperties)
- [Namespace](/documentation/swiftui/namespace)
- [geometryGroup()](/documentation/swiftui/view/geometrygroup())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
