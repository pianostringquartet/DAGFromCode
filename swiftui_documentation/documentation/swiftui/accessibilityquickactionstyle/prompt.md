---
title: prompt
description: A presentation style that displays a prompt to the user when the accessibility quick action is active.
source: https://developer.apple.com/documentation/swiftui/accessibilityquickactionstyle/prompt
timestamp: 2025-10-29T00:10:52.971Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilityquickactionstyle](/documentation/swiftui/accessibilityquickactionstyle)

**Type Property**

# prompt

**Available on:** watchOS 9.0+

> A presentation style that displays a prompt to the user when the accessibility quick action is active.

```swift
static var prompt: AccessibilityQuickActionPromptStyle { get }
```

## Discussion

The following example shows how to add an [accessibilityQuickAction(style:content:)](/documentation/swiftui/view/accessibilityquickaction(style:content:)) to pause and resume a workout.

```swift
@State private var isPaused = false

var body: some View {
    WorkoutView(isPaused: $isPaused)
        .accessibilityQuickAction(style: .prompt) {
            Button(isPaused ? "Resume" : "Pause") {
                isPaused.toggle()
            }
        }
}
```

## Getting built-in menu styles

- [outline](/documentation/swiftui/accessibilityquickactionstyle/outline)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
