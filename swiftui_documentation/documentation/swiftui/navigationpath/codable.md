---
title: codable
description: A value that describes the contents of this path in a serializable format.
source: https://developer.apple.com/documentation/swiftui/navigationpath/codable
timestamp: 2025-10-29T00:12:21.689Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationpath](/documentation/swiftui/navigationpath)

**Instance Property**

# codable

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A value that describes the contents of this path in a serializable format.

```swift
var codable: NavigationPath.CodableRepresentation? { get }
```

## Discussion

This value is `nil` if any of the type-erased elements of the path don’t conform to the [Codable](/documentation/Swift/Codable) protocol.

## Encoding a path

- [NavigationPath.CodableRepresentation](/documentation/swiftui/navigationpath/codablerepresentation)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
