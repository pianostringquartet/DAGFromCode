---
title: init()
description: Creates an environment values instance.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/init()
timestamp: 2025-10-29T00:13:27.919Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Initializer**

# init()

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Creates an environment values instance.

```swift
init()
```

## Discussion

You don’t typically create an instance of [Environment Values](/documentation/swiftui/environmentvalues) directly. Doing so would provide access only to default values that don’t update based on system settings or device characteristics. Instead, you rely on an environment values’ instance that SwiftUI manages for you when you use the [Environment](/documentation/swiftui/environment) property wrapper and the [environment(_:_:)](/documentation/swiftui/view/environment(_:_:)) view modifier.

## Creating and accessing values

- [subscript(_:)](/documentation/swiftui/environmentvalues/subscript(_:))
- [description](/documentation/swiftui/environmentvalues/description)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
