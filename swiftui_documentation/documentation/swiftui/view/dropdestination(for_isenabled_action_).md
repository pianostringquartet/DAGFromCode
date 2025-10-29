---
title: dropDestination(for:isEnabled:action:)
description: Defines the destination of a drag and drop operation that provides a drop operation proposal and handles the dropped content with a closure that you specify.
source: https://developer.apple.com/documentation/swiftui/view/dropdestination(for:isenabled:action:)
timestamp: 2025-10-29T00:15:33.402Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# dropDestination(for:isEnabled:action:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+, macOS 26.0+, visionOS 26.0+

> Defines the destination of a drag and drop operation that provides a drop operation proposal and handles the dropped content with a closure that you specify.

```swift
nonisolated func dropDestination<T>(for type: T.Type = T.self, isEnabled: Bool = true, action: @escaping ([T], DropSession) -> Void) -> some View where T : Transferable
```

## Parameters

**type**

The expected type of the dropped models.



**isEnabled**

The Boolean value indicating if the view accepts drop interactions.



**action**

A closure that takes the dropped content and responds appropriately. The first parameter to `action` contains the dropped items. The second parameter contains the drop session description.



## Return Value

A view that provides a drop destination for a drop operation of the specified type.

## Discussion

The dropped content can be provided as binary data, file URLs, or file promises.

The drop destination is the same size and position as this view.

```swift
@State private var isDropTargeted = false
@Binding var isDropEnabled: Bool

var body: some View {
    Color.pink
        .frame(width: 400, height: 400)
        .dropDestination(
            for: String.self, isEnabled: isDropEnabled
        ) { receivedTitles, session in
            animateDrop(at: session.location)
            process(titles: receivedTitles)
        }
}

func process(titles: [String]) { ... }
func animateDrop(at: CGPoint) { ... }
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
