---
title: makeBody(configuration:)
description: Creates a view that represents the body of a button.
source: https://developer.apple.com/documentation/swiftui/borderedbuttonstyle/makebody(configuration:)
timestamp: 2025-10-29T00:11:39.544Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [borderedbuttonstyle](/documentation/swiftui/borderedbuttonstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 7.0+

> Creates a view that represents the body of a button.

```swift
@MainActor @preconcurrency func makeBody(configuration: BorderedButtonStyle.Configuration) -> some View
```

## Parameters

**configuration**

The properties of the button.



## Discussion

The system calls this method for each [Button](/documentation/swiftui/button) instance in a view hierarchy where this style is the current button style.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
