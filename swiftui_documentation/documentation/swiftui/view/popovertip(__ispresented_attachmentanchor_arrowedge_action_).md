---
title: popoverTip(_:isPresented:attachmentAnchor:arrowEdge:action:)
description: Presents a popover tip on the modified view.
source: https://developer.apple.com/documentation/swiftui/view/popovertip(_:ispresented:attachmentanchor:arrowedge:action:)
timestamp: 2025-10-29T00:12:36.593Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# popoverTip(_:isPresented:attachmentAnchor:arrowEdge:action:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, tvOS 26.0+, visionOS 26.0+

> Presents a popover tip on the modified view.

```swift
@preconcurrency nonisolated func popoverTip(_ tip: (any Tip)?, isPresented: Binding<Bool>? = nil, attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds), arrowEdge: Edge? = nil, action: @escaping @MainActor (Tips.Action) -> Void = { _ in }) -> some View
```

## Parameters

**tip**

The tip to display.



**isPresented**

A binding that will automatically update to true when a tip is displayed. This value can be changed to temporarily hide or show a currently displayable tip. If this value is `nil`, the popover will automatically be dismissed based on the tip’s status and display rules.



**attachmentAnchor**

The positioning anchor that defines the attachment point of the popover. The default is bounds.



**arrowEdge**

The edge of the attachmentAnchor that defines the location of the popover’s arrow. By default, the system will choose the best orientation of the popover’s arrow.



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
        .popoverTip(FavoriteTrailTip(), attachmentAnchor: .point(.center), arrowEdge: .top)
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
