---
title: nsPredicate
description: The request’s predicate.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/configuration/nspredicate
timestamp: 2025-10-29T00:09:39.581Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest) › [configuration](/documentation/swiftui/fetchrequest/configuration)

**Instance Property**

# nsPredicate

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s predicate.

```swift
@MainActor @preconcurrency var nsPredicate: NSPredicate?
```

## Discussion

Set this configuration value to cause a [Fetch Request](/documentation/swiftui/fetchrequest) to execute a fetch with a new predicate.

Access this value of a [Configuration](/documentation/swiftui/fetchrequest/configuration) structure for a given request by using the [ns Predicate](/documentation/swiftui/fetchedresults/nspredicate) property on the associated [Fetched Results](/documentation/swiftui/fetchedresults) instance, either directly or through a [Binding](/documentation/swiftui/binding).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
