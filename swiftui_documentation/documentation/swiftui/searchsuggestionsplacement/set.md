---
title: SearchSuggestionsPlacement.Set
description: An efficient set of search suggestion display modes.
source: https://developer.apple.com/documentation/swiftui/searchsuggestionsplacement/set
timestamp: 2025-10-29T00:14:01.025Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [searchsuggestionsplacement](/documentation/swiftui/searchsuggestionsplacement)

**Structure**

# SearchSuggestionsPlacement.Set

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> An efficient set of search suggestion display modes.

```swift
struct Set
```

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting placement sets

- [content](/documentation/swiftui/searchsuggestionsplacement/set/content) A set containing placements with the apps main content, excluding the menu placement.
- [menu](/documentation/swiftui/searchsuggestionsplacement/set/menu) A set containing the menu display mode.

## Creating a set

- [init(rawValue:)](/documentation/swiftui/searchsuggestionsplacement/set/init(rawvalue:)) Creates a set of search suggestions from an integer.
- [rawValue](/documentation/swiftui/searchsuggestionsplacement/set/rawvalue) The raw value that records the search suggestion display modes.

## Supporting types

- [SearchSuggestionsPlacement.Set.Element](/documentation/swiftui/searchsuggestionsplacement/set/element) A type for the elements of the set.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
