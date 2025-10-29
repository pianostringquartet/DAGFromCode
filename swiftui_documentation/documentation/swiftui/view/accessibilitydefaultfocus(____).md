---
title: accessibilityDefaultFocus(_:_:)
description: Defines a region in which default accessibility focus is evaluated by assigning a value to a given accessibility focus state binding.
source: https://developer.apple.com/documentation/swiftui/view/accessibilitydefaultfocus(_:_:)
timestamp: 2025-10-29T00:12:10.679Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# accessibilityDefaultFocus(_:_:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+, watchOS 26.0+

> Defines a region in which default accessibility focus is evaluated by assigning a value to a given accessibility focus state binding.

```swift
nonisolated func accessibilityDefaultFocus<Value>(_ binding: AccessibilityFocusState<Value>.Binding, _ value: Value) -> some View where Value : Hashable
```

## Parameters

**binding**

An accessibility focus state binding to update when evaluating default accessibility focus.



**value**

The value to set the binding to during evaluation.



## Discussion

Accessibility default focus is evaluated when a scene appears and an accessibility technology like VoiceOver focuses on its content, when an accessibility focus state binding update moves focus automatically, and when the layout of a scene changes and the accessibility technology must refocus on new content.

In the following example, an accessibility technology, like VoiceOver, automatically lands on the title of the playlist as the most important view to initially have focus on, rather than navigating through all controls to understand what the primary content of the view is.

```swift
var body: some View {
    VStack {
        PlayerControls(currentSong: $currentSong)
        Text(playlist.title)
            .font(.title)
            .accessibilityFocused($focusedField, equals: .title)
        PlaylistEntries(entries: playlist.entries)
    }
    .accessibilityDefaultFocus($focusedField, .title)
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
