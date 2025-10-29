---
title: physicalMetrics
description: The physical metrics associated with a scene.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/physicalmetrics
timestamp: 2025-10-29T00:13:01.405Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# physicalMetrics

**Available on:** visionOS 1.0+

> The physical metrics associated with a scene.

```swift
var physicalMetrics: PhysicalMetricsConverter { get set }
```

## Discussion

Reading this value returns a `PhysicalMetricsConverter` corresponding to the window scene associated with the environment’s reader. The converter can convert point sizes into physical measurements of length, and vice versa.

Reading this value is only supported in the body of a [View](/documentation/swiftui/view) or of a type that inherits a [View](/documentation/swiftui/view)’s environment.

## View attributes

- [allowedDynamicRange](/documentation/swiftui/environmentvalues/alloweddynamicrange)
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [backgroundProminence](/documentation/swiftui/environmentvalues/backgroundprominence)
- [backgroundStyle](/documentation/swiftui/environmentvalues/backgroundstyle)
- [badgeProminence](/documentation/swiftui/environmentvalues/badgeprominence)
- [contentTransition](/documentation/swiftui/environmentvalues/contenttransition)
- [contentTransitionAddsDrawingGroup](/documentation/swiftui/environmentvalues/contenttransitionaddsdrawinggroup)
- [defaultMinListHeaderHeight](/documentation/swiftui/environmentvalues/defaultminlistheaderheight)
- [defaultMinListRowHeight](/documentation/swiftui/environmentvalues/defaultminlistrowheight)
- [headerProminence](/documentation/swiftui/environmentvalues/headerprominence)
- [realityKitScene](/documentation/swiftui/environmentvalues/realitykitscene)
- [realityViewCameraControls](/documentation/swiftui/environmentvalues/realityviewcameracontrols)
- [redactionReasons](/documentation/swiftui/environmentvalues/redactionreasons)
- [springLoadingBehavior](/documentation/swiftui/environmentvalues/springloadingbehavior)
- [symbolRenderingMode](/documentation/swiftui/environmentvalues/symbolrenderingmode)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
