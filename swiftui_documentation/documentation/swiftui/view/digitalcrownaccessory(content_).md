---
title: digitalCrownAccessory(content:)
description: Places an accessory View next to the Digital Crown on Apple Watch.
source: https://developer.apple.com/documentation/swiftui/view/digitalcrownaccessory(content:)
timestamp: 2025-10-29T00:12:34.606Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# digitalCrownAccessory(content:)

**Available on:** watchOS 9.0+

> Places an accessory View next to the Digital Crown on Apple Watch.

```swift
nonisolated func digitalCrownAccessory<Content>(@ViewBuilder content: @escaping () -> Content) -> some View where Content : View
```

## Parameters

**content**

The view to be used as a Digital Crown Accessory.



## Discussion

Use this method to place a custom `View` next to the Digital Crown on Apple Watch. Use [digitalCrownAccessory(_:)](/documentation/swiftui/view/digitalcrownaccessory(_:)) to specify the visibility of your custom view.

```swift
struct ZoomingMapView: View {
    // Width of the map displayed on screen in miles
    @State private var zoomLevel: Int = 1.0

    var body: some View {
        CustomMap(width: .miles(zoomLevel))
            .focusable()
            .digitalCrownRotation(value: $zoomLevel)
            .digitalCrownAccessory {
                Text("\(zoomLevel, specifier: "%.2f")MI")
                .background {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.gray)
                }
            }
    }
}
```

## Interacting with the Digital Crown

- [digitalCrownAccessory(_:)](/documentation/swiftui/view/digitalcrownaccessory(_:))
- [digitalCrownRotation(_:from:through:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:))
- [digitalCrownRotation(_:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:onchange:onidle:))
- [digitalCrownRotation(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(detent:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:))
- [digitalCrownRotation(_:)](/documentation/swiftui/view/digitalcrownrotation(_:))
- [digitalCrownRotation(_:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:))
- [DigitalCrownEvent](/documentation/swiftui/digitalcrownevent)
- [DigitalCrownRotationalSensitivity](/documentation/swiftui/digitalcrownrotationalsensitivity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
