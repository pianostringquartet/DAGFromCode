---
title: init(_:)
description: Creates a group box based on a style configuration.
source: https://developer.apple.com/documentation/swiftui/groupbox/init(_:)
timestamp: 2025-10-29T00:10:04.408Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [groupbox](/documentation/swiftui/groupbox)

**Initializer**

# init(_:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a group box based on a style configuration.

```swift
nonisolated init(_ configuration: GroupBoxStyleConfiguration)
```

## Parameters

**configuration**

The properties of the group box instance being created.



## Discussion

Use this initializer within the [makeBody(configuration:)](/documentation/swiftui/groupboxstyle/makebody(configuration:)) method of a [Group Box Style](/documentation/swiftui/groupboxstyle) instance to create a styled group box, with customizations, while preserving its existing style.

The following example adds a pink border around the group box, without overriding its current style:

```swift
struct PinkBorderGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        GroupBox(configuration)
            .border(Color.pink)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
