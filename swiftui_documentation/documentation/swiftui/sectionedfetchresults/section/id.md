---
title: id
description: The value that all entities in the section share for a specified key path.
source: https://developer.apple.com/documentation/swiftui/sectionedfetchresults/section/id
timestamp: 2025-10-29T00:10:46.711Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [sectionedfetchresults](/documentation/swiftui/sectionedfetchresults) › [section](/documentation/swiftui/sectionedfetchresults/section)

**Instance Property**

# id

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> The value that all entities in the section share for a specified key path.

```swift
@MainActor @preconcurrency let id: SectionIdentifier
```

## Discussion

Specify the key path that the entities share this value with by setting the [Sectioned Fetch Request](/documentation/swiftui/sectionedfetchrequest) instance’s `sectionIdentifier` parameter during initialization, or by modifying the corresponding [Sectioned Fetch Results](/documentation/swiftui/sectionedfetchresults) instance’s [section Identifier](/documentation/swiftui/sectionedfetchresults/sectionidentifier) property.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
