---
title: removeLast(_:)
description: Removes values from the end of this path.
source: https://developer.apple.com/documentation/swiftui/navigationpath/removelast(_:)
timestamp: 2025-10-29T00:14:23.525Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [navigationpath](/documentation/swiftui/navigationpath)

**Instance Method**

# removeLast(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Removes values from the end of this path.

```swift
mutating func removeLast(_ k: Int = 1)
```

## Parameters

**k**

The number of values to remove. The default value is `1`.



## Discussion

> [!NOTE]
> The input parameter `k` must be greater than or equal to zero, and must be less than or equal to the number of elements in the path.

## Managing path contents

- [isEmpty](/documentation/swiftui/navigationpath/isempty)
- [count](/documentation/swiftui/navigationpath/count)
- [append(_:)](/documentation/swiftui/navigationpath/append(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
