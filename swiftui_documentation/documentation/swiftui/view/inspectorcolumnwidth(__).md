---
title: inspectorColumnWidth(_:)
description: Sets a fixed, preferred width for the inspector containing this view when presented as a trailing column.
source: https://developer.apple.com/documentation/swiftui/view/inspectorcolumnwidth(_:)
timestamp: 2025-10-29T00:13:52.380Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# inspectorColumnWidth(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+

> Sets a fixed, preferred width for the inspector containing this view when presented as a trailing column.

```swift
nonisolated func inspectorColumnWidth(_ width: CGFloat) -> some View
```

## Parameters

**width**

The preferred fixed width for the inspector if presented as a trailing column.



## Discussion

Apply this modifier on the content of a [inspector(isPresented:content:)](/documentation/swiftui/view/inspector(ispresented:content:)) to specify a fixed preferred width for the trailing column. Use [inspectorColumnWidth(min:ideal:max:)](/documentation/swiftui/view/inspectorcolumnwidth(min:ideal:max:)) if you need to specify a flexible width.

The following example shows an editor interface with an inspector, which when presented as a trailing-column, has a fixed width of 225 points. The example also uses [interactiveDismissDisabled(_:)](/documentation/swiftui/view/interactivedismissdisabled(_:)) to prevent the inspector from being collapsed by user action like dragging a divider.

```swift
MyEditorView()
    .inspector {
        TextTraitsInspectorView()
            .inspectorColumnWidth(225)
            .interactiveDismissDisabled()
    }
```

> [!NOTE]
> A fixed width does not prevent the user collapsing the inspector on macOS. See [interactiveDismissDisabled(_:)](/documentation/swiftui/view/interactivedismissdisabled(_:)).

## Presenting an inspector

- [inspector(isPresented:content:)](/documentation/swiftui/view/inspector(ispresented:content:))
- [inspectorColumnWidth(min:ideal:max:)](/documentation/swiftui/view/inspectorcolumnwidth(min:ideal:max:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
