---
title: itemProviders(for:)
description: Finds item providers that conform to at least one of the specified uniform type identifiers.
source: https://developer.apple.com/documentation/swiftui/dropinfo/itemproviders(for:)
timestamp: 2025-10-29T00:12:08.581Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dropinfo](/documentation/swiftui/dropinfo)

**Instance Method**

# itemProviders(for:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, visionOS 1.0+

> Finds item providers that conform to at least one of the specified uniform type identifiers.

```swift
func itemProviders(for contentTypes: [UTType]) -> [NSItemProvider]
```

## Parameters

**contentTypes**

The uniform type identifiers to query for.



## Return Value

The item providers that conforms to `contentTypes`.

## Discussion

This function is only valid during the `performDrop()` action.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
