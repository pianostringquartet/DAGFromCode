---
title: DismissBehavior
description: Programmatic window dismissal behaviors.
source: https://developer.apple.com/documentation/swiftui/dismissbehavior
timestamp: 2025-10-29T00:14:45.977Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DismissBehavior

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+

> Programmatic window dismissal behaviors.

```swift
struct DismissBehavior
```

## Overview

Use values of this type to control window dismissal during the current transaction.

For example, to dismiss windows showing a modal presentation that would otherwise prohibit dismissal, use the [destructive](/documentation/swiftui/dismissbehavior/destructive) behavior:

```swift
struct DismissWindowButton: View {
    @Environment(\.dismissWindow) private var dismissWindow

    var body: some View {
        Button("Close Auxiliary Window") {
            withTransaction(\.dismissBehavior, .destructive) {
                dismissWindow(id: "auxiliary")
            }
        }
    }
}
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting behaviors

- [destructive](/documentation/swiftui/dismissbehavior/destructive) The destructive dismiss behavior.
- [interactive](/documentation/swiftui/dismissbehavior/interactive) The interactive dismiss behavior.

## Closing windows

- [dismissWindow](/documentation/swiftui/environmentvalues/dismisswindow)
- [DismissWindowAction](/documentation/swiftui/dismisswindowaction)
- [dismiss](/documentation/swiftui/environmentvalues/dismiss)
- [DismissAction](/documentation/swiftui/dismissaction)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
