---
title: outline
description: A presentation style that animates an outline around the view when the accessibility quick action is active.
source: https://developer.apple.com/documentation/swiftui/accessibilityquickactionstyle/outline
timestamp: 2025-10-29T00:14:34.150Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessibilityquickactionstyle](/documentation/swiftui/accessibilityquickactionstyle)

**Type Property**

# outline

**Available on:** watchOS 9.0+

> A presentation style that animates an outline around the view when the accessibility quick action is active.

```swift
static var outline: AccessibilityQuickActionOutlineStyle { get }
```

## Discussion

Use the [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:)) modifier to provide a shape for [focus Effect](/documentation/swiftui/contentshapekinds/focuseffect) if necessary.

The following example shows how to add an [accessibilityQuickAction(style:content:)](/documentation/swiftui/view/accessibilityquickaction(style:content:)) to play and pause music.

```swift
@State private var isPlaying = false

var body: some View {
    PlayButton(isPlaying: $isPlaying)
        .contentShape(.focusEffect, Circle())
        .accessibilityQuickAction(style: .outline) {
            Button(isPlaying ? "Pause" : "Play") {
                isPlaying.toggle()
            }
        }
}
```

## Getting built-in menu styles

- [prompt](/documentation/swiftui/accessibilityquickactionstyle/prompt)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
