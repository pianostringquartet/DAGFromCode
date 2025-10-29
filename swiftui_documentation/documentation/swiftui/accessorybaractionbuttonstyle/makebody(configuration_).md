---
title: makeBody(configuration:)
description: Creates a view that represents the body of a button.
source: https://developer.apple.com/documentation/swiftui/accessorybaractionbuttonstyle/makebody(configuration:)
timestamp: 2025-10-29T00:11:41.560Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [accessorybaractionbuttonstyle](/documentation/swiftui/accessorybaractionbuttonstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** macOS 14.0+

> Creates a view that represents the body of a button.

```swift
@MainActor @preconcurrency func makeBody(configuration: AccessoryBarActionButtonStyle.Configuration) -> some View
```

## Parameters

**configuration**

The properties of the button.



## Discussion

The system calls this method for each [Button](/documentation/swiftui/button) instance in a view hierarchy where this style is the current button style.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
