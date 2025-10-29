---
title: SubmitTriggers
description: A type that defines various triggers that result in the firing of a submission action.
source: https://developer.apple.com/documentation/swiftui/submittriggers
timestamp: 2025-10-29T00:11:00.949Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# SubmitTriggers

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A type that defines various triggers that result in the firing of a submission action.

```swift
struct SubmitTriggers
```

## Overview

These triggers may be provided to the [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:)) modifier to alter which types of user behaviors trigger a provided submission action.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting submit triggers

- [search](/documentation/swiftui/submittriggers/search) Defines triggers originating from search fields constructed from searchable modifiers.
- [text](/documentation/swiftui/submittriggers/text) Defines triggers originating from text input controls like  and .

## Creating a set of options

- [init(rawValue:)](/documentation/swiftui/submittriggers/init(rawvalue:)) Creates a set of submit triggers.

## Responding to submission events

- [onSubmit(of:_:)](/documentation/swiftui/view/onsubmit(of:_:))
- [submitScope(_:)](/documentation/swiftui/view/submitscope(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
