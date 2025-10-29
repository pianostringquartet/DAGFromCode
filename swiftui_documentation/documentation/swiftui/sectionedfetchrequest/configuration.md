---
title: SectionedFetchRequest.Configuration
description: The request’s configurable properties.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchrequest/configuration
timestamp: 2025-10-29T00:09:27.750Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchrequest](/documentation/swiftui/sectionedfetchrequest)

**Structure**

# SectionedFetchRequest.Configuration

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The request’s configurable properties.

```swift
struct Configuration
```

## Overview

You initialize a [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) with a section identifier, an optional predicate, and sort descriptors, either explicitly or with a configured [NSFetch Request](/documentation/CoreData/NSFetchRequest). Later, you can dynamically update the identifier, predicate, and sort parameters using the request’s configuration structure.

You access or bind to a request’s configuration components through properties on the associated [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) instance, just like you do for a [Fetch Request](/documentation/swiftui/fetchrequest) using [Configuration](/documentation/swiftui/fetchrequest/configuration).

When configuring a sectioned fetch request, ensure that the combination of the section identifier and the primary sort descriptor doesn’t create discontiguous sections.

## Setting the section identifier

- [sectionIdentifier](/documentation/swiftui/sectionedfetchrequest/configuration/sectionidentifier) The request’s section identifier key path.

## Setting a predicate

- [nsPredicate](/documentation/swiftui/sectionedfetchrequest/configuration/nspredicate) The request’s predicate.

## Setting sort descriptors

- [sortDescriptors](/documentation/swiftui/sectionedfetchrequest/configuration/sortdescriptors) The request’s sort descriptors, accessed as value types.
- [nsSortDescriptors](/documentation/swiftui/sectionedfetchrequest/configuration/nssortdescriptors) The request’s sort descriptors, accessed as reference types.

## Configuring a request dynamically

- [projectedValue](/documentation/swiftui/sectionedfetchrequest/projectedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
