---
title: AnyScrollTargetBehavior
description: A type-erased scroll target behavior.
source: https://developer.apple.com/documentation/swiftui/anyscrolltargetbehavior
timestamp: 2025-10-29T00:12:35.496Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# AnyScrollTargetBehavior

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> A type-erased scroll target behavior.

```swift
@frozen struct AnyScrollTargetBehavior
```

## Overview

Provide this to the [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:)) modifier. When the underlying behavior changes, the scroll view to which this behavior applies will be updated.

Use this to dynamically control the scroll target behavior at runtime. For example, you could provide a paging behavior in compact size classes and a view aligned behavior otherwise.

```swift
@Environment(\.horizontalSizeClass) var sizeClass

var body: some View {
    ScrollView { ... }
        .scrollTargetBehavior(scrollTargetBehavior)
}

 var scrollTargetBehavior: some ScrollTargetBehavior {
    sizeClass == .compact
        ? AnyScrollTargetBehavior(.paging)
        : AnyScrollTargetBehavior(.viewAligned)
}
```

## Conforms To

- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior)

## Initializers

- [init(_:)](/documentation/swiftui/anyscrolltargetbehavior/init(_:)) Creates a new type-erase scroll target behavior.

## Instance Properties

- [base](/documentation/swiftui/anyscrolltargetbehavior/base) The type-erased scroll target behavior.

## Defining scroll targets

- [scrollTargetBehavior(_:)](/documentation/swiftui/view/scrolltargetbehavior(_:))
- [scrollTargetLayout(isEnabled:)](/documentation/swiftui/view/scrolltargetlayout(isenabled:))
- [ScrollTarget](/documentation/swiftui/scrolltarget)
- [ScrollTargetBehavior](/documentation/swiftui/scrolltargetbehavior)
- [ScrollTargetBehaviorContext](/documentation/swiftui/scrolltargetbehaviorcontext)
- [PagingScrollTargetBehavior](/documentation/swiftui/pagingscrolltargetbehavior)
- [ViewAlignedScrollTargetBehavior](/documentation/swiftui/viewalignedscrolltargetbehavior)
- [ScrollTargetBehaviorProperties](/documentation/swiftui/scrolltargetbehaviorproperties)
- [ScrollTargetBehaviorPropertiesContext](/documentation/swiftui/scrolltargetbehaviorpropertiescontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
