---
title: hasTag(_:)
description: Returns true if the container values contain a tag matching a given value.
source: https://developer.apple.com/documentation/swiftui/containervalues/hastag(_:)
timestamp: 2025-10-29T00:10:08.051Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [containervalues](/documentation/swiftui/containervalues)

**Instance Method**

# hasTag(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Returns true if the container values contain a tag matching a given value.

```swift
func hasTag<V>(_ tag: V) -> Bool where V : Hashable
```

## Parameters

**tag**

The tag value to check for.



## Return Value

If the container values has a tag matching the given value.

## Discussion

Tag values are set using the `View/tag` modifier.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
