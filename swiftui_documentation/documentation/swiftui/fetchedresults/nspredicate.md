---
title: nsPredicate
description: The request’s predicate.
source: https://developer.apple.com/documentation/swiftui/fetchedresults/nspredicate
timestamp: 2025-10-29T00:09:23.876Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchedresults](/documentation/swiftui/fetchedresults)

**Instance Property**

# nsPredicate

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s predicate.

```swift
@MainActor @preconcurrency var nsPredicate: NSPredicate? { get nonmutating set }
```

## Discussion

Set this value to cause the associated [Fetch Request](/documentation/swiftui/fetchrequest) to execute a fetch with a new predicate, producing an updated collection of results.

## Configuring the associated fetch request

- [sortDescriptors](/documentation/swiftui/fetchedresults/sortdescriptors)
- [nsSortDescriptors](/documentation/swiftui/fetchedresults/nssortdescriptors)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
