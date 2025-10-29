---
title: makeBody(configuration:)
description: Creates a view representing the body of a control group.
source: https://developer.apple.com/documentation/swiftui/controlgroupstyle/makebody(configuration:)
timestamp: 2025-10-29T00:12:57.521Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [controlgroupstyle](/documentation/swiftui/controlgroupstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 17.0+, visionOS 1.0+

> Creates a view representing the body of a control group.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the control group instance being created.



## Discussion

This method will be called for each instance of [Control Group](/documentation/swiftui/controlgroup) created within a view hierarchy where this style is the current `ControlGroupStyle`.

## Creating custom control group styles

- [ControlGroupStyle.Configuration](/documentation/swiftui/controlgroupstyle/configuration)
- [Body](/documentation/swiftui/controlgroupstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
