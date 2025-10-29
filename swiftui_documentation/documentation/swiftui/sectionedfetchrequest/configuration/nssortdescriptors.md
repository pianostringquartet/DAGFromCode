---
title: nsSortDescriptors
description: The request’s sort descriptors, accessed as reference types.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/configuration/nssortdescriptors
timestamp: 2025-10-29T00:15:31.112Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest) › [configuration](/documentation/swiftui/sectionedfetchrequest/configuration)

**Instance Property**

# nsSortDescriptors

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s sort descriptors, accessed as reference types.

```swift
var nsSortDescriptors: [NSSortDescriptor]
```

## Discussion

Set this configuration value to cause a [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) to execute a fetch with a new collection of [NSSort Descriptor](/documentation/Foundation/NSSortDescriptor) instances. If you want to use [Sort Descriptor](/documentation/Foundation/SortDescriptor) instances, set [sort Descriptors](/documentation/swiftui/sectionedfetchrequest/configuration/sortdescriptors) instead. Use care to coordinate section and sort updates, as described in [Configuration](/documentation/swiftui/sectionedfetchrequest/configuration).

Access this value for a given request by using the [ns Sort Descriptors](/documentation/swiftui/sectionedfetchresults/nssortdescriptors) property on the associated [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) instance, either directly or with a [Binding](/documentation/swiftui/binding).

## Setting sort descriptors

- [sortDescriptors](/documentation/swiftui/sectionedfetchrequest/configuration/sortdescriptors)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
