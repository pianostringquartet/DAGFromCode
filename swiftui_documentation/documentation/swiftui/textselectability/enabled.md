---
title: enabled
description: A selectability value that enables text selection by a person using your app.
source: https://developer.apple.com/documentation/swiftui/textselectability/enabled
timestamp: 2025-10-29T00:10:21.977Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [textselectability](/documentation/swiftui/textselectability)

**Type Property**

# enabled

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, visionOS 1.0+

> A selectability value that enables text selection by a person using your app.

```swift
static var enabled: EnabledTextSelectability { get }
```

## Discussion

Enabling text selection allows people to perform actions on the text content, such as copying and sharing. Enable text selection in views where those operations are useful, such as copying unique IDs or error messages. This allows people to paste the data into emails or documents.

The following example enables text selection on the second of two [Text](/documentation/swiftui/text) views in a [VStack](/documentation/swiftui/vstack).

```swift
VStack {
    Text("Event Invite")
        .font(.title)
    Text(invite.date.formatted(date: .long, time: .shortened))
        .textSelection(.enabled)
}
```

## Getting selectability options

- [disabled](/documentation/swiftui/textselectability/disabled)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
