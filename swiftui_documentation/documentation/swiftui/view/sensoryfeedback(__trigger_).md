---
title: sensoryFeedback(_:trigger:)
description: Plays the specified  when the provided  value changes.
source: https://developer.apple.com/documentation/swiftui/view/sensoryfeedback(_:trigger:)
timestamp: 2025-10-29T00:13:15.023Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# sensoryFeedback(_:trigger:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 26.0+, watchOS 10.0+

> Plays the specified  when the provided  value changes.

```swift
nonisolated func sensoryFeedback<T>(_ feedback: SensoryFeedback, trigger: T) -> some View where T : Equatable
```

## Parameters

**feedback**

Which type of feedback to play.



**trigger**

A value to monitor for changes to determine when to play.



## Discussion

For example, you could play feedback when a state value changes:

```swift
struct MyView: View {
    @State private var showAccessory = false

    var body: some View {
        ContentView()
            .sensoryFeedback(.selection, trigger: showAccessory)
            .onLongPressGesture {
                showAccessory.toggle()
            }

        if showAccessory {
            AccessoryView()
        }
    }
}
```

## Providing haptic feedback

- [sensoryFeedback(trigger:_:)](/documentation/swiftui/view/sensoryfeedback(trigger:_:))
- [sensoryFeedback(_:trigger:condition:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:condition:))
- [SensoryFeedback](/documentation/swiftui/sensoryfeedback)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
