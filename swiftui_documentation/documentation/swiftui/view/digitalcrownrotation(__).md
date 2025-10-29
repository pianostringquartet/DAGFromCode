---
title: digitalCrownRotation(_:)
description: Tracks Digital Crown rotations by updating the specified binding.
source: https://developer.apple.com/documentation/swiftui/view/digitalcrownrotation(_:)
timestamp: 2025-10-29T00:15:23.639Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# digitalCrownRotation(_:)

**Available on:** watchOS 6.0+

> Tracks Digital Crown rotations by updating the specified binding.

```swift
nonisolated func digitalCrownRotation<V>(_ binding: Binding<V>) -> some View where V : BinaryFloatingPoint
```

## Parameters

**binding**

A binding to a value that updates as the user rotates the Digital Crown. The implicit range is `(-infinity, +infinity)`.



## Discussion

Use this method to receive values on a binding you provide as the user turns the Digital Crown on Apple Watch. The example below receives changes to the binding value, starting at `0.0` and incrementing or decrementing depending on the direction that the user turns the Digital Crown:

```swift
struct DigitalCrown: View {
    @State private var crownValue = 0.0

    var body: some View {
        Text("Received Value:\(crownValue, specifier: "%.1f")")
            .focusable()
            .digitalCrownRotation($crownValue)
    }
}
```



## Interacting with the Digital Crown

- [digitalCrownAccessory(_:)](/documentation/swiftui/view/digitalcrownaccessory(_:))
- [digitalCrownAccessory(content:)](/documentation/swiftui/view/digitalcrownaccessory(content:))
- [digitalCrownRotation(_:from:through:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:))
- [digitalCrownRotation(_:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(_:onchange:onidle:))
- [digitalCrownRotation(detent:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:onChange:onIdle:)](/documentation/swiftui/view/digitalcrownrotation(detent:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:onchange:onidle:))
- [digitalCrownRotation(_:from:through:by:sensitivity:isContinuous:isHapticFeedbackEnabled:)](/documentation/swiftui/view/digitalcrownrotation(_:from:through:by:sensitivity:iscontinuous:ishapticfeedbackenabled:))
- [DigitalCrownEvent](/documentation/swiftui/digitalcrownevent)
- [DigitalCrownRotationalSensitivity](/documentation/swiftui/digitalcrownrotationalsensitivity)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
