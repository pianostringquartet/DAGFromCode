---
title: sensoryFeedback(_:trigger:condition:)
description: Plays the specified  when the provided  value changes and the  closure returns .
source: https://developer.apple.com/documentation/swiftui/view/sensoryfeedback(_:trigger:condition:)
timestamp: 2025-10-29T00:14:38.197Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# sensoryFeedback(_:trigger:condition:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 26.0+, watchOS 10.0+

> Plays the specified  when the provided  value changes and the  closure returns .

```swift
nonisolated func sensoryFeedback<T>(_ feedback: SensoryFeedback, trigger: T, condition: @escaping (T, T) -> Bool) -> some View where T : Equatable
```

## Parameters

**feedback**

Which type of feedback to play.



**trigger**

A value to monitor for changes to determine when to play.



**condition**

A closure to determine whether to play the feedback when `trigger` changes.



## Discussion

For example, you could play feedback for certain state transitions:

```swift
struct MyView: View {
    @State private var phase = Phase.inactive

    var body: some View {
        ContentView(phase: $phase)
            .sensoryFeedback(.selection, trigger: phase) { old, new in
                old == .inactive || new == .expanded
            }
    }

    enum Phase {
        case inactive
        case preparing
        case active
        case expanded
    }
}
```

When the value changes, the new version of the closure will be called, so any captured values will have their values from the time that the observed value has its new value.

## Providing haptic feedback

- [sensoryFeedback(_:trigger:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:))
- [sensoryFeedback(trigger:_:)](/documentation/swiftui/view/sensoryfeedback(trigger:_:))
- [SensoryFeedback](/documentation/swiftui/sensoryfeedback)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
