---
title: navigation
description: A background placement inside a  or .
source: https://developer.apple.com/documentation/swiftui/containerbackgroundplacement/navigation
timestamp: 2025-10-29T00:14:53.866Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [containerbackgroundplacement](/documentation/swiftui/containerbackgroundplacement)

**Type Property**

# navigation

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, watchOS 10.0+

> A background placement inside a  or .

```swift
static let navigation: ContainerBackgroundPlacement
```

## Discussion

For translucent backgrounds in a navigation split view, combine this placement with [navigation Split View](/documentation/swiftui/containerbackgroundplacement/navigationsplitview).

```swift
NavigationSplitView {
     … sidebar …
    .containerBackground(.thinMaterial, for: .navigation)
    .containerBackground(Color.green, for: .navigationSplitView)
} detail: {
    // … detail …
    .containerBackground(.thickMaterial, for: .navigation)
}
```

## Getting placements

- [tabView](/documentation/swiftui/containerbackgroundplacement/tabview)
- [widget](/documentation/swiftui/containerbackgroundplacement/widget)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
