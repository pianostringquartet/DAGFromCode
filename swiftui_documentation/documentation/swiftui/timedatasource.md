---
title: TimeDataSource
description: A source of time related data.
source: https://developer.apple.com/documentation/swiftui/timedatasource
timestamp: 2025-10-29T00:12:14.359Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# TimeDataSource

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A source of time related data.

```swift
struct TimeDataSource<Value>
```

## Overview

Instances of this type provide [Text](/documentation/swiftui/text) with live and automatically updating values in Widgets, Live Activities, watchOS Complications, and of course regular apps.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Type Properties

- [currentDate](/documentation/swiftui/timedatasource/currentdate) A time data source that produces .

## Type Methods

- [dateRange(endingAt:)](/documentation/swiftui/timedatasource/daterange(endingat:)) A time data source that produces .
- [dateRange(startingAt:)](/documentation/swiftui/timedatasource/daterange(startingat:)) A time data source that produces .
- [durationOffset(to:)](/documentation/swiftui/timedatasource/durationoffset(to:)) A time data source that produces the offset between  and the given  as a .

## Formatting date and time

- [SystemFormatStyle](/documentation/swiftui/systemformatstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
