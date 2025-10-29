---
title: DefaultFocusEvaluationPriority
description: Prioritizations for default focus preferences when evaluating where to move focus in different circumstances.
source: https://developer.apple.com/documentation/swiftui/defaultfocusevaluationpriority
timestamp: 2025-10-29T00:11:03.779Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DefaultFocusEvaluationPriority

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Prioritizations for default focus preferences when evaluating where to move focus in different circumstances.

```swift
struct DefaultFocusEvaluationPriority
```

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting the priorities

- [automatic](/documentation/swiftui/defaultfocusevaluationpriority/automatic) Use the default focus preference when focus moves into the affected branch automatically, but ignore it when the movement is driven by a user-initiated navigation command.
- [userInitiated](/documentation/swiftui/defaultfocusevaluationpriority/userinitiated) Always use the default focus preference when focus moves into the affected branch.

## Controlling default focus

- [prefersDefaultFocus(_:in:)](/documentation/swiftui/view/prefersdefaultfocus(_:in:))
- [defaultFocus(_:_:priority:)](/documentation/swiftui/view/defaultfocus(_:_:priority:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
