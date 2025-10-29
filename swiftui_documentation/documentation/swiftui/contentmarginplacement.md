---
title: ContentMarginPlacement
description: The placement of margins.
source: https://developer.apple.com/documentation/swiftui/contentmarginplacement
timestamp: 2025-10-29T00:12:57.494Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ContentMarginPlacement

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The placement of margins.

```swift
struct ContentMarginPlacement
```

## Overview

Different views can support customizating margins that appear in different parts of that view. Use values of this type to customize those margins of a particular placement.

For example, use a [scroll Indicators](/documentation/swiftui/contentmarginplacement/scrollindicators) placement to customize the margins of scrollable view’s scroll indicators separately from the margins of a scrollable view’s content.

Use this type with the [contentMargins(_:for:)](/documentation/swiftui/view/contentmargins(_:for:)) modifier.

## Getting the placement

- [automatic](/documentation/swiftui/contentmarginplacement/automatic) The automatic placement.
- [scrollContent](/documentation/swiftui/contentmarginplacement/scrollcontent) The scroll content placement.
- [scrollIndicators](/documentation/swiftui/contentmarginplacement/scrollindicators) The scroll indicators placement.

## Setting margins

- [contentMargins(_:for:)](/documentation/swiftui/view/contentmargins(_:for:))
- [contentMargins(_:_:for:)](/documentation/swiftui/view/contentmargins(_:_:for:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
