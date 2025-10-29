---
title: makeBody(configuration:)
description: Creates a view representing the body of a progress view.
source: https://developer.apple.com/documentation/swiftui/progressviewstyle/makebody(configuration:)
timestamp: 2025-10-29T00:12:29.949Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [progressviewstyle](/documentation/swiftui/progressviewstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a view representing the body of a progress view.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the progress view being created.



## Discussion

The view hierarchy calls this method for each progress view where this style is the current progress view style.

## Creating custom progress view styles

- [ProgressViewStyle.Configuration](/documentation/swiftui/progressviewstyle/configuration)
- [Body](/documentation/swiftui/progressviewstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
