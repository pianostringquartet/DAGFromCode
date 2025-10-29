---
title: makeBody(configuration:)
description: Creates a view that represents the body of a menu.
source: https://developer.apple.com/documentation/swiftui/menustyle/makebody(configuration:)
timestamp: 2025-10-29T00:13:23.535Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [menustyle](/documentation/swiftui/menustyle)

**Instance Method**

# makeBody(configuration:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 17.0+, visionOS 1.0+

> Creates a view that represents the body of a menu.

```swift
@ViewBuilder @MainActor @preconcurrency func makeBody(configuration: Self.Configuration) -> Self.Body
```

## Parameters

**configuration**

The properties of the menu.



## Discussion

The system calls this method for each [Menu](/documentation/swiftui/menu) instance in a view hierarchy where this style is the current menu style.

## Creating custom menu styles

- [MenuStyle.Configuration](/documentation/swiftui/menustyle/configuration)
- [Body](/documentation/swiftui/menustyle/body)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
