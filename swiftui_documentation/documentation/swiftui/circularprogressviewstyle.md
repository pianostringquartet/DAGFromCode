---
title: CircularProgressViewStyle
description: A progress view that uses a circular gauge to indicate the partial completion of an activity.
source: https://developer.apple.com/documentation/swiftui/circularprogressviewstyle
timestamp: 2025-10-29T00:14:43.335Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# CircularProgressViewStyle

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A progress view that uses a circular gauge to indicate the partial completion of an activity.

```swift
struct CircularProgressViewStyle
```

## Overview

On watchOS, and in widgets and complications, a circular progress view appears as a gauge with the [accessory Circular Capacity](/documentation/swiftui/gaugestyle/accessorycircularcapacity) style. If the progress view is indeterminate, the gauge is empty.

In cases where no determinate circular progress view style is available, circular progress views use an indeterminate style.

Use [circular](/documentation/swiftui/progressviewstyle/circular) to construct the circular progress view style.

## Conforms To

- [ProgressViewStyle](/documentation/swiftui/progressviewstyle)

## Creating the progress view style

- [init()](/documentation/swiftui/circularprogressviewstyle/init()) Creates a circular progress view style.

## Deprecated initializers

- [init(tint:)](/documentation/swiftui/circularprogressviewstyle/init(tint:)) Creates a circular progress view style with a tint color.

## Supporting types

- [DefaultProgressViewStyle](/documentation/swiftui/defaultprogressviewstyle)
- [LinearProgressViewStyle](/documentation/swiftui/linearprogressviewstyle)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
