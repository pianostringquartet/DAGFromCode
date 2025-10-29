---
title: makeBody(configuration:)
description: Creates a view that represents the body of a disclosure group.
source: https://developer.apple.com/documentation/swiftui/disclosuregroupstyle/makebody(configuration:)
timestamp: 2025-10-29T00:11:23.213Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [disclosuregroupstyle](/documentation/swiftui/disclosuregroupstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> Creates a view that represents the body of a disclosure group.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the instance being created.



## Discussion

SwiftUI calls this method for each instance of [Disclosure Group](/documentation/swiftui/disclosuregroup) that you create within a view hierarchy where this style is the current [Disclosure Group Style](/documentation/swiftui/disclosuregroupstyle).

## Creating custom disclosure group styles

- [DisclosureGroupStyleConfiguration](/documentation/swiftui/disclosuregroupstyleconfiguration)
- [DisclosureGroupStyle.Configuration](/documentation/swiftui/disclosuregroupstyle/configuration)
- [Body](/documentation/swiftui/disclosuregroupstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
