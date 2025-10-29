---
title: ProgressViewStyle
description: A type that applies standard interaction behavior to all progress views within a view hierarchy.
source: https://developer.apple.com/documentation/swiftui/progressviewstyle
timestamp: 2025-10-29T00:14:33.919Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Protocol**

# ProgressViewStyle

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, macOS 11.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> A type that applies standard interaction behavior to all progress views within a view hierarchy.

```swift
@MainActor @preconcurrency protocol ProgressViewStyle
```

## Overview

To configure the current progress view style for a view hierarchy, use the [progressViewStyle(_:)](/documentation/swiftui/view/progressviewstyle(_:)) modifier.

A type conforming to this protocol inherits `@preconcurrency @MainActor` isolation from the protocol if the conformance is included in the type’s base declaration:

```swift
struct MyCustomType: Transition {
    // `@preconcurrency @MainActor` isolation by default
}
```

Isolation to the main actor is the default, but it’s not required. Declare the conformance in an extension to opt out of main actor isolation:

```swift
extension MyCustomType: Transition {
    // `nonisolated` by default
}
```

## Conforming Types

- [CircularProgressViewStyle](/documentation/swiftui/circularprogressviewstyle)
- [DefaultProgressViewStyle](/documentation/swiftui/defaultprogressviewstyle)
- [LinearProgressViewStyle](/documentation/swiftui/linearprogressviewstyle)

## Getting built-in progress view styles

- [automatic](/documentation/swiftui/progressviewstyle/automatic) The default progress view style in the current context of the view being styled.
- [circular](/documentation/swiftui/progressviewstyle/circular) The style of a progress view that uses a circular gauge to indicate the partial completion of an activity.
- [linear](/documentation/swiftui/progressviewstyle/linear) A progress view that visually indicates its progress using a horizontal bar.

## Creating custom progress view styles

- [makeBody(configuration:)](/documentation/swiftui/progressviewstyle/makebody(configuration:)) Creates a view representing the body of a progress view.
- [ProgressViewStyle.Configuration](/documentation/swiftui/progressviewstyle/configuration) A type alias for the properties of a progress view instance.
- [Body](/documentation/swiftui/progressviewstyle/body) A view representing the body of a progress view.

## Supporting types

- [DefaultProgressViewStyle](/documentation/swiftui/defaultprogressviewstyle) The default progress view style in the current context of the view being styled.
- [CircularProgressViewStyle](/documentation/swiftui/circularprogressviewstyle) A progress view that uses a circular gauge to indicate the partial completion of an activity.
- [LinearProgressViewStyle](/documentation/swiftui/linearprogressviewstyle) A progress view that visually indicates its progress using a horizontal bar.

## Styling indicators

- [gaugeStyle(_:)](/documentation/swiftui/view/gaugestyle(_:))
- [GaugeStyle](/documentation/swiftui/gaugestyle)
- [GaugeStyleConfiguration](/documentation/swiftui/gaugestyleconfiguration)
- [progressViewStyle(_:)](/documentation/swiftui/view/progressviewstyle(_:))
- [ProgressViewStyleConfiguration](/documentation/swiftui/progressviewstyleconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
