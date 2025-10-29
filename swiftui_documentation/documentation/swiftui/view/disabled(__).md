---
title: disabled(_:)
description: Adds a condition that controls whether users can interact with this view.
source: https://developer.apple.com/documentation/swiftui/view/disabled(_:)
timestamp: 2025-10-29T00:09:51.340Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# disabled(_:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Adds a condition that controls whether users can interact with this view.

```swift
nonisolated func disabled(_ disabled: Bool) -> some View
```

## Parameters

**disabled**

A Boolean value that determines whether users can interact with this view.



## Return Value

A view that controls whether users can interact with this view.

## Discussion

The higher views in a view hierarchy can override the value you set on this view. In the following example, the button isn’t interactive because the outer `disabled(_:)` modifier overrides the inner one:

```swift
HStack {
    Button(Text("Press")) {}
    .disabled(false)
}
.disabled(true)
```

## Managing view interaction

- [isEnabled](/documentation/swiftui/environmentvalues/isenabled)
- [interactionActivityTrackingTag(_:)](/documentation/swiftui/view/interactionactivitytrackingtag(_:))
- [invalidatableContent(_:)](/documentation/swiftui/view/invalidatablecontent(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
