---
title: sortDescriptors
description: The request’s sort descriptors, accessed as value types.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/configuration/sortdescriptors
timestamp: 2025-10-29T00:15:33.666Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest) › [configuration](/documentation/swiftui/fetchrequest/configuration)

**Instance Property**

# sortDescriptors

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s sort descriptors, accessed as value types.

```swift
@MainActor @preconcurrency var sortDescriptors: [SortDescriptor<Result>] { get set }
```

## Discussion

Set this configuration value to cause a [Fetch Request](/documentation/swiftui/fetchrequest) to execute a fetch with a new collection of [Sort Descriptor](/documentation/Foundation/SortDescriptor) instances. If you want to use [NSSort Descriptor](/documentation/Foundation/NSSortDescriptor) instances, set [ns Sort Descriptors](/documentation/swiftui/fetchrequest/configuration/nssortdescriptors) instead.

Access this value of a [Configuration](/documentation/swiftui/fetchrequest/configuration) structure for a given request by using the [sort Descriptors](/documentation/swiftui/fetchedresults/sortdescriptors) property on the associated [Fetched Results](/documentation/swiftui/fetchedresults) instance, either directly or through a [Binding](/documentation/swiftui/binding).

## Setting sort descriptors

- [nsSortDescriptors](/documentation/swiftui/fetchrequest/configuration/nssortdescriptors)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
