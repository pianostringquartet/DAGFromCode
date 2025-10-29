---
title: sectionIdentifier
description: The request’s section identifier key path.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/configuration/sectionidentifier
timestamp: 2025-10-29T00:11:49.621Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest) › [configuration](/documentation/swiftui/sectionedfetchrequest/configuration)

**Instance Property**

# sectionIdentifier

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s section identifier key path.

```swift
var sectionIdentifier: KeyPath<Result, SectionIdentifier>
```

## Discussion

Set this configuration value to cause a [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) to execute a fetch with a new section identifier. You can’t change the section identifier type without creating a new fetch request. Use care to coordinate section and sort updates, as described in [Configuration](/documentation/swiftui/sectionedfetchrequest/configuration).

Access this value for a given request by using the [section Identifier](/documentation/swiftui/sectionedfetchresults/sectionidentifier) property on the associated [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) instance, either directly or with a [Binding](/documentation/swiftui/binding).

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
