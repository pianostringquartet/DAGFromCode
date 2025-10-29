---
title: scrollTargetLayout(isEnabled:)
description: Configures the outermost layout as a scroll target layout.
source: https://developer.apple.com/documentation/swiftui/view/scrolltargetlayout(isenabled:)
timestamp: 2025-10-29T00:11:37.544Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# scrollTargetLayout(isEnabled:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Configures the outermost layout as a scroll target layout.

```swift
nonisolated func scrollTargetLayout(isEnabled: Bool = true) -> some View
```

## Discussion

This modifier works together with the [View Aligned Scroll Target Behavior](/documentation/swiftui/viewalignedscrolltargetbehavior) to ensure that scroll views align to view based content.

Apply this modifier to layout containers like [Lazy HStack](/documentation/swiftui/lazyhstack) or [VStack](/documentation/swiftui/vstack) within a [Scroll View](/documentation/swiftui/scrollview) that contain the main repeating content of your [Scroll View](/documentation/swiftui/scrollview).

```swift
ScrollView(.horizontal) {
    LazyHStack(spacing: 10.0) {
        ForEach(items) { item in
            ItemView(item)
        }
    }
    .scrollTargetLayout()
}
.scrollTargetBehavior(.viewAligned)
```

Scroll target layouts act as a convenience for applying a `View/scrollTarget(isEnabled:)` modifier to each views in the layout.

A scroll target layout will ensure that any target layout nested within the primary one will not also become a scroll target layout.

```swift
LazyHStack { // a scroll target layout
    VStack { ... } // not a scroll target layout
    LazyHStack { ... } // also not a scroll target layout
}
.scrollTargetLayout()
```

## Defining scroll targets

- [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:))
- [ScrollTarget](/documentation/swiftui/scrolltarget)
- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior)
- [ScrollTargetBehaviorContext](/documentation/swiftui/scrolltargetbehaviorcontext)
- [PagingScrollTargetBehavior](/documentation/swiftui/pagingscrolltargetbehavior)
- [ViewAlignedScrollTargetBehavior](/documentation/swiftui/viewalignedscrolltargetbehavior)
- [AnyScrollTargetBehavior](/documentation/swiftui/anyscrolltargetbehavior)
- [ScrollTargetBehaviorProperties](/documentation/swiftui/scrolltargetbehaviorproperties)
- [ScrollTargetBehaviorPropertiesContext](/documentation/swiftui/scrolltargetbehaviorpropertiescontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
