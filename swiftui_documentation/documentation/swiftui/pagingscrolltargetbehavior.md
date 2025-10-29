---
title: PagingScrollTargetBehavior
description: The scroll behavior that aligns scroll targets to container-based geometry.
source: https://developer.apple.com/documentation/swiftui/pagingscrolltargetbehavior
timestamp: 2025-10-29T00:09:48.714Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# PagingScrollTargetBehavior

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The scroll behavior that aligns scroll targets to container-based geometry.

```swift
struct PagingScrollTargetBehavior
```

## Overview

In the following example, every view in the lazy stack is flexible in both directions and the scroll view settles to container-aligned boundaries.

```swift
ScrollView {
    LazyVStack(spacing: 0.0) {
        ForEach(items) { item in
            FullScreenItem(item)
        }
    }
}
.scrollTargetBehavior(.paging)
```

## Conforms To

- [ChartScrollTargetBehavior](/documentation/Charts/ChartScrollTargetBehavior)
- [Copyable](/documentation/Swift/Copyable)
- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior)

## Creating the target behavior

- [init()](/documentation/swiftui/pagingscrolltargetbehavior/init()) Creates a paging scroll behavior.

## Defining scroll targets

- [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:))
- [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:))
- [ScrollTarget](/documentation/swiftui/scrolltarget)
- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior)
- [ScrollTargetBehaviorContext](/documentation/swiftui/scrolltargetbehaviorcontext)
- [ViewAlignedScrollTargetBehavior](/documentation/swiftui/viewalignedscrolltargetbehavior)
- [AnyScrollTargetBehavior](/documentation/swiftui/anyscrolltargetbehavior)
- [ScrollTargetBehaviorProperties](/documentation/swiftui/scrolltargetbehaviorproperties)
- [ScrollTargetBehaviorPropertiesContext](/documentation/swiftui/scrolltargetbehaviorpropertiescontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
