---
title: mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:arrowEdge:)
description: Presents a map item detail popover.
source: https://developer.apple.com/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:arrowedge:)
timestamp: 2025-10-29T00:13:05.024Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:arrowEdge:)

**Available on:** iOS 18.0+, iPadOS 18.0+, macOS 15.0+, visionOS 2.0+

> Presents a map item detail popover.

```swift
@MainActor @preconcurrency func mapItemDetailPopover(isPresented: Binding<Bool>, item: MKMapItem?, displaysMap: Bool = true, attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds), arrowEdge: Edge) -> some View
```

## Parameters

**isPresented**

The binding to whether the detail sheet should be shown.



**item**

The map item to display. If nil, a “loading” view is displayed.



**displaysMap**

If an inline map should be displayed with the place data. A value of `true` must be specified if the application UI is not already showing the place in a map view.



**attachmentAnchor**

The positioning anchor that defines the attachment point of the popover. The default is `bounds`.



**arrowEdge**

The edge of the `attachmentAnchor` that defines the location of the popover’s arrow.



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
- [mapItemDetailPopover(item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(item:displaysmap:attachmentanchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
