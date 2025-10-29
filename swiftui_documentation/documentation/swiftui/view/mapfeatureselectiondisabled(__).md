---
title: mapFeatureSelectionDisabled(_:)
description: Specifies which map features should have selection disabled.
source: https://developer.apple.com/documentation/swiftui/view/mapfeatureselectiondisabled(_:)
timestamp: 2025-10-29T00:09:20.345Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# mapFeatureSelectionDisabled(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+

> Specifies which map features should have selection disabled.

```swift
@MainActor @preconcurrency func mapFeatureSelectionDisabled(_ selectionDisabled: @escaping (MapFeature) -> Bool) -> some View
```

## Parameters

**selectionDisabled**

Determines if selection should be disabled for a given map feature.



## Discussion

The `selectionDisabled` parameter takes a closure which maps map features, to booleans. If that closure returns true for a given map feature, that map feature will be considered unselectable.

## Getting location information

- [LocationButton](/documentation/CoreLocationUI/LocationButton)
- [Map](/documentation/MapKit/Map)
- [mapStyle(_:)](/documentation/swiftui/view/mapstyle(_:))
- [mapScope(_:)](/documentation/swiftui/view/mapscope(_:))
- [mapFeatureSelectionAccessory(_:)](/documentation/swiftui/view/mapfeatureselectionaccessory(_:))
- [mapFeatureSelectionContent(content:)](/documentation/swiftui/view/mapfeatureselectioncontent(content:))
- [mapControls(_:)](/documentation/swiftui/view/mapcontrols(_:))
- [mapControlVisibility(_:)](/documentation/swiftui/view/mapcontrolvisibility(_:))
- [mapCameraKeyframeAnimator(trigger:keyframes:)](/documentation/swiftui/view/mapcamerakeyframeanimator(trigger:keyframes:))
- [lookAroundViewer(isPresented:scene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)](/documentation/swiftui/view/lookaroundviewer(ispresented:scene:allowsnavigation:showsroadlabels:pointsofinterest:ondismiss:))
- [lookAroundViewer(isPresented:initialScene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)](/documentation/swiftui/view/lookaroundviewer(ispresented:initialscene:allowsnavigation:showsroadlabels:pointsofinterest:ondismiss:))
- [onMapCameraChange(frequency:_:)](/documentation/swiftui/view/onmapcamerachange(frequency:_:))
- [mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:))
- [mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:arrowEdge:)](/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:arrowedge:))
- [mapItemDetailPopover(item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(item:displaysmap:attachmentanchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
