---
title: BackgroundProminence
description: The prominence of backgrounds underneath other views.
source: https://developer.apple.com/documentation/swiftui/backgroundprominence
timestamp: 2025-10-29T00:12:45.728Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# BackgroundProminence

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The prominence of backgrounds underneath other views.

```swift
struct BackgroundProminence
```

## Overview

Background prominence should influence foreground styling to maintain sufficient contrast against the background. For example, selected rows in a `List` and `Table` can have increased prominence backgrounds with accent color fills when focused; the foreground content above the background should be adjusted to reflect that level of prominence.

This can be read and written for views with the `EnvironmentValues.backgroundProminence` property.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting background prominence

- [standard](/documentation/swiftui/backgroundprominence/standard) The standard prominence of a background
- [increased](/documentation/swiftui/backgroundprominence/increased) A more prominent background that likely requires some changes to the views above it.

## Configuring backgrounds

- [listRowBackground(_:)](/documentation/swiftui/view/listrowbackground(_:))
- [alternatingRowBackgrounds(_:)](/documentation/swiftui/view/alternatingrowbackgrounds(_:))
- [AlternatingRowBackgroundBehavior](/documentation/swiftui/alternatingrowbackgroundbehavior)
- [backgroundProminence](/documentation/swiftui/environmentvalues/backgroundprominence)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
