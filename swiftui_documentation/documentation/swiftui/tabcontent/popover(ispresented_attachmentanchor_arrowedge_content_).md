---
title: popover(isPresented:attachmentAnchor:arrowEdge:content:)
description: Presents a popover when a given condition is true.
source: https://developer.apple.com/documentation/swiftui/tabcontent/popover(ispresented:attachmentanchor:arrowedge:content:)
timestamp: 2025-10-29T00:11:41.998Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [tabcontent](/documentation/swiftui/tabcontent)

**Instance Method**

# popover(isPresented:attachmentAnchor:arrowEdge:content:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> Presents a popover when a given condition is true.

```swift
nonisolated func popover<Content>(isPresented: Binding<Bool>, attachmentAnchor: PopoverAttachmentAnchor = .rect(.bounds), arrowEdge: Edge? = nil, @ViewBuilder content: @escaping () -> Content) -> some TabContent<Self.TabValue> where Content : View
```

## Parameters

**isPresented**

A binding to a Boolean value that determines whether to present the popover content that you return from the modifier’s `content` closure.



**attachmentAnchor**

The positioning anchor that defines the attachment point of the popover. The default is [bounds](/documentation/swiftui/anchor/source/bounds).



**arrowEdge**

The edge of the `attachmentAnchor` that defines the location of the popover’s arrow in macOS. The default is [top](/documentation/swiftui/edge/top).



**content**

A closure returning the content of the popover.



## Discussion

Use this method to show a popover whose contents are a SwiftUI view that you provide when a bound Boolean variable is `true`. In the example below, a popover displays whenever the user toggles the `isShowingPopover` state variable by pressing the “Show Popover” button:

```swift
struct PopoverExample: View {
    @State private var isShowingPopover = false

    var body: some View {
        TabView {
            Tab("Popover Anchor", systemImage: "arrow.down") {
                Button("Show Popover") {
                    self.isShowingPopover = true
                }
            }
            .popover(isPresented: $isShowingPopover) {
                Text("Popover Content")
                    .padding()
            }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
