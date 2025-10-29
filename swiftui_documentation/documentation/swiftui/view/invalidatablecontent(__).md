---
title: invalidatableContent(_:)
description: Mark the receiver as their content might be invalidated.
source: https://developer.apple.com/documentation/swiftui/view/invalidatablecontent(_:)
timestamp: 2025-10-29T00:13:22.045Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# invalidatableContent(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Mark the receiver as their content might be invalidated.

```swift
nonisolated func invalidatableContent(_ invalidatable: Bool = true) -> some View
```

## Parameters

**invalidatable**

Whether the receiver content might be invalidated.



## Discussion

Use this modifier to annotate views that display values that are derived from the current state of your data and might be invalidated in response of, for example, user interaction.

The view will change its appearance when `RedactionReasons.invalidated` is present in the environment.

In an interactive widget a view is invalidated from the moment the user interacts with a control on the widget to the moment when a new timeline update has been presented.

## Managing view interaction

- [disabled(_:)](/documentation/swiftui/view/disabled(_:))
- [isEnabled](/documentation/swiftui/environmentvalues/isenabled)
- [interactionActivityTrackingTag(_:)](/documentation/swiftui/view/interactionactivitytrackingtag(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
