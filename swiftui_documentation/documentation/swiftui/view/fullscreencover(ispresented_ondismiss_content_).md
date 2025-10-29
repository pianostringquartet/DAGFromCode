---
title: fullScreenCover(isPresented:onDismiss:content:)
description: Presents a modal view that covers as much of the screen as possible when binding to a Boolean value you provide is true.
source: https://developer.apple.com/documentation/swiftui/view/fullscreencover(ispresented:ondismiss:content:)
timestamp: 2025-10-29T00:14:05.778Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# fullScreenCover(isPresented:onDismiss:content:)

**Available on:** iOS 14.0+, iPadOS 14.0+, Mac Catalyst 14.0+, tvOS 14.0+, visionOS 1.0+, watchOS 7.0+

> Presents a modal view that covers as much of the screen as possible when binding to a Boolean value you provide is true.

```swift
nonisolated func fullScreenCover<Content>(isPresented: Binding<Bool>, onDismiss: (() -> Void)? = nil, @ViewBuilder content: @escaping () -> Content) -> some View where Content : View
```

## Parameters

**isPresented**

A binding to a Boolean value that determines whether to present the sheet.



**onDismiss**

The closure to execute when dismissing the modal view.



**content**

A closure that returns the content of the modal view.



## Discussion

Use this method to show a modal view that covers as much of the screen as possible. The example below displays a custom view when the user toggles the value of the `isPresenting` binding:

```swift
struct FullScreenCoverPresentedOnDismiss: View {
    @State private var isPresenting = false
    var body: some View {
        Button("Present Full-Screen Cover") {
            isPresenting.toggle()
        }
        .fullScreenCover(isPresented: $isPresenting,
                         onDismiss: didDismiss) {
            VStack {
                Text("A full-screen modal view.")
                    .font(.title)
                Text("Tap to Dismiss")
            }
            .onTapGesture {
                isPresenting.toggle()
            }
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity)
            .background(Color.blue)
            .ignoresSafeArea(edges: .all)
        }
    }

    func didDismiss() {
        // Handle the dismissing action.
    }
}
```



## Showing a sheet, cover, or popover

- [sheet(isPresented:onDismiss:content:)](/documentation/swiftui/view/sheet(ispresented:ondismiss:content:))
- [sheet(item:onDismiss:content:)](/documentation/swiftui/view/sheet(item:ondismiss:content:))
- [fullScreenCover(item:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(item:ondismiss:content:))
- [popover(item:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(item:attachmentanchor:arrowedge:content:))
- [popover(isPresented:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(ispresented:attachmentanchor:arrowedge:content:))
- [PopoverAttachmentAnchor](/documentation/swiftui/popoverattachmentanchor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
