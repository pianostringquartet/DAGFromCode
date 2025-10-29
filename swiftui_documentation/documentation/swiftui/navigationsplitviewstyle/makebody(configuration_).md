---
title: makeBody(configuration:)
description: Creates a view that represents the body of a navigation split view.
source: https://developer.apple.com/documentation/swiftui/navigationsplitviewstyle/makebody(configuration:)
timestamp: 2025-10-29T00:12:14.691Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationsplitviewstyle](/documentation/swiftui/navigationsplitviewstyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a view that represents the body of a navigation split view.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the instance to create.



## Discussion

SwiftUI calls this method for each instance of [Navigation Split View](/documentation/swiftui/navigationsplitview), where this style is the current [Navigation Split View Style](/documentation/swiftui/navigationsplitviewstyle).

## Creating custom styles

- [NavigationSplitViewStyle.Configuration](/documentation/swiftui/navigationsplitviewstyle/configuration)
- [Body](/documentation/swiftui/navigationsplitviewstyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
