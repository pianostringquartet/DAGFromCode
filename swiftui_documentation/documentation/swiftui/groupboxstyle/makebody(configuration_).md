---
title: makeBody(configuration:)
description: Creates a view representing the body of a group box.
source: https://developer.apple.com/documentation/swiftui/groupboxstyle/makebody(configuration:)
timestamp: 2025-10-29T00:13:22.230Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [groupboxstyle](/documentation/swiftui/groupboxstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Creates a view representing the body of a group box.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the group box instance being created.



## Discussion

SwiftUI calls this method for each instance of [Group Box](/documentation/swiftui/groupbox) created within a view hierarchy where this style is the current group box style.

## Creating custom group box styles

- [GroupBoxStyle.Configuration](/documentation/swiftui/groupboxstyle/configuration)
- [Body](/documentation/swiftui/groupboxstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
