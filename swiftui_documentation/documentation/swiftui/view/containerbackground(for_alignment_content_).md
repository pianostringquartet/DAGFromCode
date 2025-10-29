---
title: containerBackground(for:alignment:content:)
description: Sets the container background of the enclosing container using a view.
source: https://developer.apple.com/documentation/swiftui/view/containerbackground(for:alignment:content:)
timestamp: 2025-10-29T00:15:02.824Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# containerBackground(for:alignment:content:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the container background of the enclosing container using a view.

```swift
nonisolated func containerBackground<V>(for container: ContainerBackgroundPlacement, alignment: Alignment = .center, @ViewBuilder content: () -> V) -> some View where V : View
```

## Parameters

**container**

The container that will use the background.



**alignment**

The alignment that the modifier uses to position the implicit [ZStack](/documentation/swiftui/zstack) that groups the background views. The default is [center](/documentation/swiftui/alignment/center).



**content**

The view to use as the background of the container.



## Discussion

The following example uses a custom [View](/documentation/swiftui/view) as a background:

```swift
struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Image") {
                    Text("Image")
                    .containerBackground(for: .navigation) {
                        Image(name: "ImageAsset")
                    }
                }
            }
        }
    }
}
```

The `.containerBackground(for:alignment:content:)` modifier differs from the [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)) modifier by automatically filling an entire parent container. [Container Background Placement](/documentation/swiftui/containerbackgroundplacement) describes the available containers.

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:))
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:))
- [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:))
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:))
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:))
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
