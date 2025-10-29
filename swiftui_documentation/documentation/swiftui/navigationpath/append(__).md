---
title: append(_:)
description: Appends a new codable value to the end of this path.
source: https://developer.apple.com/documentation/swiftui/navigationpath/append(_:)
timestamp: 2025-10-29T00:09:18.065Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationpath](/documentation/swiftui/navigationpath)

**Instance Method**

# append(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Appends a new codable value to the end of this path.

```swift
mutating func append<V>(_ value: V) where V : Decodable, V : Encodable, V : Hashable
```

## Managing path contents

- [isEmpty](/documentation/swiftui/navigationpath/isempty)
- [count](/documentation/swiftui/navigationpath/count)
- [removeLast(_:)](/documentation/swiftui/navigationpath/removelast(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
