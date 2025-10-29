---
title: mapItemDetailSheet(item:displaysMap:)
description: Presents a map item detail sheet.
source: https://developer.apple.com/documentation/swiftui/view/mapitemdetailsheet(item:displaysmap:)
timestamp: 2025-10-29T00:13:22.499Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# mapItemDetailSheet(item:displaysMap:)

**Available on:** iOS 18.0+, iPadOS 18.0+, macOS 15.0+, visionOS 2.0+

> Presents a map item detail sheet.

```swift
@MainActor @preconcurrency func mapItemDetailSheet(item: Binding<MKMapItem?>, displaysMap: Bool = true) -> some View
```

## Parameters

**item**

When `item` is non-`nil`, a detail sheet is displayed for the map item.



**displaysMap**

If an inline map should be displayed with the place data. A value of `true` must be specified if the application UI is not already showing the place in a map view.



## Getting location information

- [LocationButton](/documentation/CoreLocationUI/LocationButton)
- [Map](/documentation/MapKit/Map)
- [mapStyle(_:)](/documentation/swiftui/view/mapstyle(_:))
- [mapScope(_:)](/documentation/swiftui/view/mapscope(_:))
- [mapFeatureSelectionDisabled(_:)](/documentation/swiftui/view/mapfeatureselectiondisabled(_:))
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

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
