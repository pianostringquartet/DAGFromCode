---
title: makeBody(configuration:)
description: Creates a view that represents the body of a button.
source: https://developer.apple.com/documentation/swiftui/glassbuttonstyle/makebody(configuration:)
timestamp: 2025-10-29T00:11:40.586Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [glassbuttonstyle](/documentation/swiftui/glassbuttonstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, watchOS 26.0+

> Creates a view that represents the body of a button.

```swift
@MainActor @preconcurrency func makeBody(configuration: GlassButtonStyle.Configuration) -> some View
```

## Parameters

**configuration**

The properties of the button.



## Discussion

The system calls this method for each [Button](/documentation/swiftui/button) instance in a view hierarchy where this style is the current button style.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
