---
title: ScrollTargetBehaviorContext
description: The context in which a scroll target behavior updates its scroll target.
source: https://developer.apple.com/documentation/swiftui/scrolltargetbehaviorcontext
timestamp: 2025-10-29T00:11:01.113Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ScrollTargetBehaviorContext

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> The context in which a scroll target behavior updates its scroll target.

```swift
@dynamicMemberLookup struct ScrollTargetBehaviorContext
```

## Getting the scroll target behavior context

- [axes](/documentation/swiftui/scrolltargetbehaviorcontext/axes) The axes in which the scrollable view is scrollable.
- [containerSize](/documentation/swiftui/scrolltargetbehaviorcontext/containersize) The size of the container of the scrollable view.
- [contentSize](/documentation/swiftui/scrolltargetbehaviorcontext/contentsize) The size of the content of the scrollable view.
- [originalTarget](/documentation/swiftui/scrolltargetbehaviorcontext/originaltarget) The original target when the scroll gesture began.
- [velocity](/documentation/swiftui/scrolltargetbehaviorcontext/velocity) The current velocity of the scrollable view’s scroll gesture.

## Accessing the context

- [subscript(dynamicMember:)](/documentation/swiftui/scrolltargetbehaviorcontext/subscript(dynamicmember:))

## Defining scroll targets

- [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:))
- [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:))
- [ScrollTarget](/documentation/swiftui/scrolltarget)
- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior)
- [PagingScrollTargetBehavior](/documentation/swiftui/pagingscrolltargetbehavior)
- [ViewAlignedScrollTargetBehavior](/documentation/swiftui/viewalignedscrolltargetbehavior)
- [AnyScrollTargetBehavior](/documentation/swiftui/anyscrolltargetbehavior)
- [ScrollTargetBehaviorProperties](/documentation/swiftui/scrolltargetbehaviorproperties)
- [ScrollTargetBehaviorPropertiesContext](/documentation/swiftui/scrolltargetbehaviorpropertiescontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
