---
title: popover(isPresented:attachmentAnchor:arrowEdge:content:)
description: Presents a popover when a given condition is true.
source: https://developer.apple.com/documentation/swiftui/view/popover(ispresented:attachmentanchor:arrowedge:content:)
timestamp: 2025-10-29T00:12:21.311Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# popover(isPresented:attachmentAnchor:arrowEdge:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, visionOS 1.0+

> Presents a popover when a given condition is true.

```swift
nonisolated func popover<Content>(isPresented: Binding<Bool>, attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds), arrowEdge: Edge? = nil, @ViewBuilder content: @escaping () -> Content) -> some View where Content : View
```

## Parameters

**isPresented**

A binding to a Boolean value that determines whether to present the popover content that you return from the modifier’s `content` closure.



**attachmentAnchor**

The positioning anchor that defines the attachment point of the popover. The default is [bounds](/documentation/swiftui/anchor/source/bounds).



**arrowEdge**

The edge of the `attachmentAnchor` that defines the location of the popover’s arrow. The default is `nil`, which results in the system allowing any arrow edge.



**content**

A closure returning the content of the popover.



## Discussion

Use this method to show a popover whose contents are a SwiftUI view that you provide when a bound Boolean variable is `true`. In the example below, a popover displays whenever the user toggles the `isShowingPopover` state variable by pressing the “Show Popover” button:

```swift
struct PopoverExample: View {
    @State private var isShowingPopover = false

    var body: some View {
        Button("Show Popover") {
            self.isShowingPopover = true
        }
        .popover(
            isPresented: $isShowingPopover, arrowEdge: .bottom
        ) {
            Text("Popover Content")
                .padding()
        }
    }
}
```



> [!IMPORTANT]
> Prior to iOS 18.1, the popover arrow edge was not respected. Apps that are re-compiled with the iOS 18.1 or later SDK or visionOS 2.1 or later SDK and run on iOS 18.1 or later or visionOS 2.1 or later have the arrow edge respected. On macOS, arrow edge has always been respected. Alternatively, to allow the system to choose the best orientation of the popover’s arrow, use the `View/popover(isPresented:attachmentAnchor:content:)` variant.

## Showing a sheet, cover, or popover

- [sheet(isPresented:onDismiss:content:)](/documentation/swiftui/view/sheet(ispresented:ondismiss:content:))
- [sheet(item:onDismiss:content:)](/documentation/swiftui/view/sheet(item:ondismiss:content:))
- [fullScreenCover(isPresented:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(ispresented:ondismiss:content:))
- [fullScreenCover(item:onDismiss:content:)](/documentation/swiftui/view/fullscreencover(item:ondismiss:content:))
- [popover(item:attachmentAnchor:arrowEdge:content:)](/documentation/swiftui/view/popover(item:attachmentanchor:arrowedge:content:))
- [PopoverAttachmentAnchor](/documentation/swiftui/popoverattachmentanchor)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
