---
title: sensoryFeedback(trigger:_:)
description: Plays feedback when returned from the  closure after the provided  value changes.
source: https://developer.apple.com/documentation/swiftui/view/sensoryfeedback(trigger:_:)
timestamp: 2025-10-29T00:09:20.991Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# sensoryFeedback(trigger:_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 26.0+, watchOS 10.0+

> Plays feedback when returned from the  closure after the provided  value changes.

```swift
nonisolated func sensoryFeedback<T>(trigger: T, _ feedback: @escaping () -> SensoryFeedback?) -> some View where T : Equatable
```

## Parameters

**trigger**

A value to monitor for changes to determine when to play.



**feedback**

A closure to determine whether to play the feedback and what type of feedback to play when `trigger` changes.



## Discussion

For example, you could play different feedback for different state transitions:

```swift
struct MyView: View {
    @State private var isExpanded = false

    var body: some View {
        ContentView(isExpanded: $isExpanded)
            .sensoryFeedback(trigger: isExpanded) {
                isExpanded ? .impact : nil
            }
    }
}
```

When the value changes, the new version of the closure will be called, so any captured values will have their values from the time that the observed value has its new value.

## Providing haptic feedback

- [sensoryFeedback(_:trigger:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:))
- [sensoryFeedback(_:trigger:condition:)](/documentation/swiftui/view/sensoryfeedback(_:trigger:condition:))
- [SensoryFeedback](/documentation/swiftui/sensoryfeedback)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
