---
title: popoverTip(_:isPresented:attachmentAnchor:arrowEdges:action:)
description: Presents a popover tip on the modified view.
source: https://developer.apple.com/documentation/swiftui/view/popovertip(_:ispresented:attachmentanchor:arrowedges:action:)
timestamp: 2025-10-29T00:09:45.025Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# popoverTip(_:isPresented:attachmentAnchor:arrowEdges:action:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, tvOS 26.0+, visionOS 26.0+

> Presents a popover tip on the modified view.

```swift
@preconcurrency nonisolated func popoverTip(_ tip: (any Tip)?, isPresented: Binding<Bool>? = nil, attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds), arrowEdges: Edge.Set, action: @escaping @MainActor (Tips.Action) -> Void = { _ in }) -> some View
```

## Parameters

**tip**

The tip to display.



**isPresented**

A binding that will automatically update to true when a tip is displayed. This value can be changed to temporarily hide or show a currently displayable tip. If this value is `nil`, the popover will automatically be dismissed based on the tip’s status and display rules. If this value is `nil`, the popover will automatically be dismissed based on the tip’s status and display rules.



**attachmentAnchor**

The positioning anchor that defines the attachment point of the popover. The default is bounds.



**arrowEdges**

The edges that the popover’s arrow is allowed to be positioned.



**action**

The closure to perform when the user triggers a tip’s action.



### Discussion

Use this modifier to present a tip as a popover on an existing view when the tip becomes eligible for display.

```swift
struct TrailRow: View {
    let trail: Trail

    var body: some View {
        VStack {
            HStack {
                Text(trail.name)

                Button(action: trail.favorite) {
                    Image(systemName: "star")
                }
            }
        }
        .popoverTip(FavoriteTrailTip(), attachmentAnchor: .point(.center), arrowEdges: .vertical)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
