---
title: inspectorColumnWidth(min:ideal:max:)
description: Sets a flexible, preferred width for the inspector in a trailing-column presentation.
source: https://developer.apple.com/documentation/swiftui/view/inspectorcolumnwidth(min:ideal:max:)
timestamp: 2025-10-29T00:14:28.922Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# inspectorColumnWidth(min:ideal:max:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+

> Sets a flexible, preferred width for the inspector in a trailing-column presentation.

```swift
nonisolated func inspectorColumnWidth(min: CGFloat? = nil, ideal: CGFloat, max: CGFloat? = nil) -> some View
```

## Parameters

**min**

The minimum allowed width for the trailing column inspector



**ideal**

The initial width of the inspector in the absence of state restoration. `ideal` influences the resulting width on macOS when a user double-clicks the divider on the leading edge of the inspector. clicks a divider to readjust



**max**

The maximum allowed width for the trailing column inspector



## Discussion

Apply this modifier on the content of a [inspector(isPresented:content:)](/documentation/swiftui/view/inspector(ispresented:content:)) to specify a preferred flexible width for the column. Use [inspectorColumnWidth(_:)](/documentation/swiftui/view/inspectorcolumnwidth(_:)) if you need to specify a fixed width.

The following example shows an editor interface with an inspector, which when presented as a trailing-column, has a preferred width of 225 points, maximum of 400, and a minimum of 150 at which point it will collapse, if allowed.

```swift
MyEditorView()
    .inspector {
        TextTraitsInspectorView()
            .inspectorColumnWidth(min: 150, ideal: 225, max: 400)
    }
```

Only some platforms enable flexible inspector columns. If you specify a width that the current presentation environment doesn’t support, SwiftUI may use a different width for your column.

## Presenting an inspector

- [inspector(isPresented:content:)](/documentation/swiftui/view/inspector(ispresented:content:))
- [inspectorColumnWidth(_:)](/documentation/swiftui/view/inspectorcolumnwidth(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
