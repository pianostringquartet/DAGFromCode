---
title: ContentShapeKinds
description: A kind for the content shape of a view.
source: https://developer.apple.com/documentation/swiftui/contentshapekinds
timestamp: 2025-10-29T00:10:36.133Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ContentShapeKinds

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A kind for the content shape of a view.

```swift
struct ContentShapeKinds
```

## Overview

The kind is used by the system to influence various effects, hit-testing, and more.

## Conforms To

- [Equatable](/documentation/Swift/Equatable)
- [ExpressibleByArrayLiteral](/documentation/Swift/ExpressibleByArrayLiteral)
- [OptionSet](/documentation/Swift/OptionSet)
- [RawRepresentable](/documentation/Swift/RawRepresentable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)
- [SetAlgebra](/documentation/Swift/SetAlgebra)

## Getting shape kinds

- [interaction](/documentation/swiftui/contentshapekinds/interaction) The kind for hit-testing and accessibility.
- [dragPreview](/documentation/swiftui/contentshapekinds/dragpreview) The kind for drag and drop previews.
- [contextMenuPreview](/documentation/swiftui/contentshapekinds/contextmenupreview) The kind for context menu previews.
- [focusEffect](/documentation/swiftui/contentshapekinds/focuseffect) The kind for the focus effect.
- [hoverEffect](/documentation/swiftui/contentshapekinds/hovereffect) The kind for hover effects.
- [accessibility](/documentation/swiftui/contentshapekinds/accessibility) The kind for accessibility visuals and sorting.

## Creating a set of options

- [init(rawValue:)](/documentation/swiftui/contentshapekinds/init(rawvalue:)) Creates a content shape kind.

## Controlling hit testing

- [allowsTightening(_:)](/documentation/swiftui/view/allowstightening(_:))
- [contentShape(_:eoFill:)](/documentation/swiftui/view/contentshape(_:eofill:))
- [contentShape(_:_:eoFill:)](/documentation/swiftui/view/contentshape(_:_:eofill:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
