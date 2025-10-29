---
title: onMapCameraChange(frequency:_:)
description: Performs an action when Map camera framing changes
source: https://developer.apple.com/documentation/swiftui/view/onmapcamerachange(frequency:_:)
timestamp: 2025-10-29T00:11:58.113Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# onMapCameraChange(frequency:_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Performs an action when Map camera framing changes

```swift
@MainActor @preconcurrency func onMapCameraChange(frequency: MapCameraUpdateFrequency = .onEnd, _ action: @escaping () -> Void) -> some View
```

## Parameters

**frequency**

How frequently the action should be performed during a camera interaction.



**action**

A closure to run when the camera framing changes.



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
- [mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:))
- [mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:arrowEdge:)](/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:arrowedge:))
- [mapItemDetailPopover(item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(item:displaysmap:attachmentanchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
