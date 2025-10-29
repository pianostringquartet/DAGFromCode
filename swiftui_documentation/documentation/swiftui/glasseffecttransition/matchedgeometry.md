---
title: matchedGeometry
description: Returns the matched geometry glass effect transition.
source: https://developer.apple.com/documentation/swiftui/glasseffecttransition/matchedgeometry
timestamp: 2025-10-29T00:11:07.552Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [glasseffecttransition](/documentation/swiftui/glasseffecttransition)

**Type Property**

# matchedGeometry

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, watchOS 26.0+

> Returns the matched geometry glass effect transition.

```swift
static var matchedGeometry: GlassEffectTransition { get }
```

## Discussion

The matched geometry transition allows the geometries of glass shapes during an appearance or disappearance phase of a transition to be derived from the geometry of a nearby shape within the glass container.

For example, if a newly appearing shape is within the spacing of any existing shape, it will use that shapes geometry to transition out of.

When using the [default](/documentation/swiftui/animation/default), this transition applies additional scale and offset effects to content when the identity of the shape does not change but its content does. Opt out of these additional animations by providing a specific animation like [spring](/documentation/swiftui/animation/spring).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
