---
title: nsSortDescriptors
description: The request’s sort descriptors, accessed as reference types.
source: https://developer.apple.com/documentation/swiftui/fetchrequest/configuration/nssortdescriptors
timestamp: 2025-10-29T00:15:33.612Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [fetchrequest](/documentation/swiftui/fetchrequest) › [configuration](/documentation/swiftui/fetchrequest/configuration)

**Instance Property**

# nsSortDescriptors

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s sort descriptors, accessed as reference types.

```swift
@MainActor @preconcurrency var nsSortDescriptors: [NSSortDescriptor]
```

## Discussion

Set this configuration value to cause a [Fetch Request](/documentation/swiftui/fetchrequest) to execute a fetch with a new collection of [NSSort Descriptor](/documentation/Foundation/NSSortDescriptor) instances. If you want to use [Sort Descriptor](/documentation/Foundation/SortDescriptor) instances, set [sort Descriptors](/documentation/swiftui/fetchrequest/configuration/sortdescriptors) instead.

Access this value of a [Configuration](/documentation/swiftui/fetchrequest/configuration) structure for a given request by using the [ns Sort Descriptors](/documentation/swiftui/fetchedresults/nssortdescriptors) property on the associated [Fetched Results](/documentation/swiftui/fetchedresults) instance, either directly or through a [Binding](/documentation/swiftui/binding).

## Setting sort descriptors

- [sortDescriptors](/documentation/swiftui/fetchrequest/configuration/sortdescriptors)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
