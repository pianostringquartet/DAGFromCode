---
title: writingToolsAffordanceVisibility(_:)
description: Specifies whether the system should show the Writing Tools affordance for text input views affected by the environment.
source: https://developer.apple.com/documentation/swiftui/view/writingtoolsaffordancevisibility(_:)
timestamp: 2025-10-29T00:09:40.699Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# writingToolsAffordanceVisibility(_:)

**Available on:** iOS 18.4+, iPadOS 18.4+, Mac Catalyst 18.4+, macOS 15.4+, tvOS 18.4+, visionOS 2.4+, watchOS 11.4+

> Specifies whether the system should show the Writing Tools affordance for text input views affected by the environment.

```swift
@MainActor @preconcurrency func writingToolsAffordanceVisibility(_ visibility: Visibility) -> some View
```

## Parameters

**visibility**

Whether the affordance may be shown for text input views.



## Return Value

A view with the specified Writing Tools affordance visibility.

## Discussion

Use this view modifier to disable the Writing Tools affordance for [Text Field](/documentation/swiftui/textfield) views when running on macOS or Mac Catalyst.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
