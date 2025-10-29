---
title: disabled
description: A selectability value that disables text selection by the person using your app.
source: https://developer.apple.com/documentation/swiftui/textselectability/disabled
timestamp: 2025-10-29T00:13:19.517Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textselectability](/documentation/swiftui/textselectability)

**Type Property**

# disabled

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> A selectability value that disables text selection by the person using your app.

```swift
static var disabled: DisabledTextSelectability { get }
```

## Discussion

Use this property to disable text selection of views that you don’t want people to select and copy, even if contained within an overall context that allows text selection.

```swift
content // Content that might contain Text views.
   .textSelection(.disabled)
   .padding()
   .contentShape(Rectangle())
   .gesture(someGesture)
```

## Getting selectability options

- [enabled](/documentation/swiftui/textselectability/enabled)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
