---
title: ignoredByLayout()
description: Returns an effect that produces the same geometry transform as this effect, but only applies the transform while rendering its view.
source: https://developer.apple.com/documentation/swiftui/geometryeffect/ignoredbylayout()
timestamp: 2025-10-29T00:14:48.253Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [geometryeffect](/documentation/swiftui/geometryeffect)

**Instance Method**

# ignoredByLayout()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Returns an effect that produces the same geometry transform as this effect, but only applies the transform while rendering its view.

```swift
func ignoredByLayout() -> _IgnoredByLayoutEffect<Self>
```

## Discussion

Use this method to disable layout changes during transitions. The view ignores the transform returned by this method while the view is performing its layout calculations.

## Applying effects

- [effectValue(size:)](/documentation/swiftui/geometryeffect/effectvalue(size:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
