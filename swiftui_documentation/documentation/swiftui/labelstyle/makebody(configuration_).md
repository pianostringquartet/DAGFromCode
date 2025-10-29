---
title: makeBody(configuration:)
description: Creates a view that represents the body of a label.
source: https://developer.apple.com/documentation/swiftui/labelstyle/makebody(configuration:)
timestamp: 2025-10-29T00:13:19.298Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [labelstyle](/documentation/swiftui/labelstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Creates a view that represents the body of a label.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the label.



## Discussion

The system calls this method for each [Label](/documentation/swiftui/label) instance in a view hierarchy where this style is the current label style.

## Creating custom label styles

- [LabelStyle.Configuration](/documentation/swiftui/labelstyle/configuration)
- [Body](/documentation/swiftui/labelstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
