---
title: NavigationPath.CodableRepresentation
description: A serializable representation of a navigation path.
source: https://developer.apple.com/documentation/swiftui/navigationpath/codablerepresentation
timestamp: 2025-10-29T00:12:08.187Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationpath](/documentation/swiftui/navigationpath)

**Structure**

# NavigationPath.CodableRepresentation

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A serializable representation of a navigation path.

```swift
struct CodableRepresentation
```

## Overview

When a navigation path contains elements the conform to the [Codable](/documentation/Swift/Codable) protocol, you can use the path’s `CodableRepresentation` to convert the path to an external representation and to convert an external representation back into a navigation path.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Decodable](/documentation/Swift/Decodable)
- [Encodable](/documentation/Swift/Encodable)
- [Equatable](/documentation/Swift/Equatable)

## Encoding a path

- [codable](/documentation/swiftui/navigationpath/codable)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
