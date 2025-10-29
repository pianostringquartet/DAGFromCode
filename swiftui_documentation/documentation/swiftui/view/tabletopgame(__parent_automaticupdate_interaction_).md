---
title: tabletopGame(_:parent:automaticUpdate:interaction:)
description: Supplies a closure which returns a new interaction whenever needed.
source: https://developer.apple.com/documentation/swiftui/view/tabletopgame(_:parent:automaticupdate:interaction:)
timestamp: 2025-10-29T00:13:19.063Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# tabletopGame(_:parent:automaticUpdate:interaction:)

**Available on:** visionOS 2.0+

> Supplies a closure which returns a new interaction whenever needed.

```swift
@MainActor @preconcurrency func tabletopGame(_ game: TabletopGame, parent: Entity, automaticUpdate: Bool = true, interaction make: @escaping (TabletopInteraction.Value) -> any TabletopInteraction.Delegate) -> some View
```

## Creating a tabletop game

- [tabletopGame(_:parent:automaticUpdate:)](/documentation/swiftui/view/tabletopgame(_:parent:automaticupdate:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
