---
title: makeBody(configuration:)
description: Creates a view that represents the body of a button.
source: https://developer.apple.com/documentation/swiftui/buttonstyle/makebody(configuration:)
timestamp: 2025-10-29T00:11:08.347Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [buttonstyle](/documentation/swiftui/buttonstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates a view that represents the body of a button.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Discussion

The system calls this method for each [Button](/documentation/swiftui/button) instance in a view hierarchy where this style is the current button style.

## Custom button styles

- [ButtonStyle.Configuration](/documentation/swiftui/buttonstyle/configuration)
- [Body](/documentation/swiftui/buttonstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
