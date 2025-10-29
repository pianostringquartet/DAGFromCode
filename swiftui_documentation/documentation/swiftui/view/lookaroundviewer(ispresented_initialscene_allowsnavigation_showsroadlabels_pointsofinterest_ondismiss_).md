---
title: lookAroundViewer(isPresented:initialScene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)
source: https://developer.apple.com/documentation/swiftui/view/lookaroundviewer(ispresented:initialscene:allowsnavigation:showsroadlabels:pointsofinterest:ondismiss:)
timestamp: 2025-10-29T00:11:36.411Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# lookAroundViewer(isPresented:initialScene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)

**Available on:** iOS 17.0+, iPadOS 17.0+

```swift
@MainActor @preconcurrency func lookAroundViewer(isPresented: Binding<Bool>, initialScene: MKLookAroundScene?, allowsNavigation: Bool = true, showsRoadLabels: Bool = true, pointsOfInterest: PointOfInterestCategories = .all, onDismiss: (() -> Void)? = nil) -> some View
```

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
- [onMapCameraChange(frequency:_:)](/documentation/swiftui/view/onmapcamerachange(frequency:_:))
- [mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:))
- [mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:arrowEdge:)](/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:arrowedge:))
- [mapItemDetailPopover(item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(item:displaysmap:attachmentanchor:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
