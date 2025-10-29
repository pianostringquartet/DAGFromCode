---
title: tag(for:)
description: The tag value for the given type if the container values contains one.
source: https://developer.apple.com/documentation/swiftui/containervalues/tag(for:)
timestamp: 2025-10-29T00:12:32.018Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [containervalues](/documentation/swiftui/containervalues)

**Instance Method**

# tag(for:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> The tag value for the given type if the container values contains one.

```swift
func tag<V>(for type: V.Type) -> V? where V : Hashable
```

## Parameters

**type**

The type to get the tag value for.



## Return Value

The tag value for the given type if the subview has one, otherwise `nil`.

## Discussion

Tag values are set using the `View/tag` modifier.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
