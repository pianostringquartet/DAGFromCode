---
title: accessibilityQuickAction(style:isActive:content:)
description: Adds a quick action to be shown by the system when active.
source: https://developer.apple.com/documentation/swiftui/view/accessibilityquickaction(style:isactive:content:)
timestamp: 2025-10-29T00:12:28.757Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityQuickAction(style:isActive:content:)

**Available on:** watchOS 9.0+

> Adds a quick action to be shown by the system when active.

```swift
nonisolated func accessibilityQuickAction<Style, Content>(style: Style, isActive: Binding<Bool>, @ViewBuilder content: () -> Content) -> some View where Style : AccessibilityQuickActionStyle, Content : View
```

## Discussion

The following example shows how to add a quick action to pause and resume a workout, with the [prompt](/documentation/swiftui/accessibilityquickactionstyle/prompt) style.

```swift
@State private var isPaused = false
@State private var isQuickActionActive = false

var body: some View {
    WorkoutView(isPaused: $isPaused)
        .accessibilityQuickAction(style: .prompt, isActive: $isQuickActionActive) {
            Button(isPaused ? "Resume" : "Pause") {
                isPaused.toggle()
            }
        }
}
```

The following example shows how to add a quick action to play and pause music, with the [outline](/documentation/swiftui/accessibilityquickactionstyle/outline) style.

```swift
@State private var isPlaying = false
@State private var isQuickActionActive = false

var body: some View {
    PlayButton(isPlaying: $isPlaying)
        .contentShape(.focusEffect, Circle())
        .accessibilityQuickAction(style: .outline, isActive: $isQuickActionActive) {
            Button(isPlaying ? "Pause" : "Play") {
                isPlaying.toggle()
            }
        }
}
```

## Offering Quick Actions to people

- [accessibilityQuickAction(style:content:)](/documentation/swiftui/view/accessibilityquickaction(style:content:))
- [AccessibilityQuickActionStyle](/documentation/swiftui/accessibilityquickactionstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
