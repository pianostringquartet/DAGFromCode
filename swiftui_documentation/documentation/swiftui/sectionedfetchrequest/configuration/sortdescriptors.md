---
title: sortDescriptors
description: The request’s sort descriptors, accessed as value types.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/configuration/sortdescriptors
timestamp: 2025-10-29T00:15:29.965Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest) › [configuration](/documentation/swiftui/sectionedfetchrequest/configuration)

**Instance Property**

# sortDescriptors

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s sort descriptors, accessed as value types.

```swift
var sortDescriptors: [SortDescriptor<Result>] { get set }
```

## Discussion

Set this configuration value to cause a [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) to execute a fetch with a new collection of [Sort Descriptor](/documentation/Foundation/SortDescriptor) instances. If you want to use [NSSort Descriptor](/documentation/Foundation/NSSortDescriptor) instances, set [ns Sort Descriptors](/documentation/swiftui/sectionedfetchrequest/configuration/nssortdescriptors) instead. Use care to coordinate section and sort updates, as described in [Configuration](/documentation/swiftui/sectionedfetchrequest/configuration).

Access this value for a given request by using the [sort Descriptors](/documentation/swiftui/sectionedfetchresults/sortdescriptors) property on the associated [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) instance, either directly or with a [Binding](/documentation/swiftui/binding).

## Setting sort descriptors

- [nsSortDescriptors](/documentation/swiftui/sectionedfetchrequest/configuration/nssortdescriptors)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
