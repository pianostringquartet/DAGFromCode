---
title: nsPredicate
description: The request’s predicate.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/configuration/nspredicate
timestamp: 2025-10-29T00:13:24.623Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest) › [configuration](/documentation/swiftui/sectionedfetchrequest/configuration)

**Instance Property**

# nsPredicate

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s predicate.

```swift
var nsPredicate: NSPredicate?
```

## Discussion

Set this configuration value to cause a [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) to execute a fetch with a new predicate.

Access this value for a given request by using the [ns Predicate](/documentation/swiftui/sectionedfetchresults/nspredicate) property on the associated [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) instance, either directly or with a [Binding](/documentation/swiftui/binding).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
