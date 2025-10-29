---
title: background(alignment:content:)
description: Layers the views that you specify behind this view.
source: https://developer.apple.com/documentation/swiftui/view/background(alignment:content:)
timestamp: 2025-10-29T00:09:28.110Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# background(alignment:content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Layers the views that you specify behind this view.

```swift
nonisolated func background<V>(alignment: Alignment = .center, @ViewBuilder content: () -> V) -> some View where V : View
```

## Parameters

**alignment**

The alignment that the modifier uses to position the implicit [ZStack](/documentation/swiftui/zstack) that groups the background views. The default is [center](/documentation/swiftui/alignment/center).



**content**

A [View Builder](/documentation/swiftui/viewbuilder) that you use to declare the views to draw behind this view, stacked in a cascading order from bottom to top. The last view that you list appears at the front of the stack.



## Return Value

A view that uses the specified content as a background.

## Discussion

Use this modifier to place one or more views behind another view. For example, you can place a collection of stars behind a [Text](/documentation/swiftui/text) view:

```swift
Text("ABCDEF")
    .background(alignment: .leading) { Star(color: .red) }
    .background(alignment: .center) { Star(color: .green) }
    .background(alignment: .trailing) { Star(color: .blue) }
```

The example above assumes that you’ve defined a `Star` view with a parameterized color:

```swift
struct Star: View {
    var color: Color

    var body: some View {
        Image(systemName: "star.fill")
            .foregroundStyle(color)
    }
}
```

By setting different `alignment` values for each modifier, you make the stars appear in different places behind the text:



If you specify more than one view in the `content` closure, the modifier collects all of the views in the closure into an implicit [ZStack](/documentation/swiftui/zstack), taking them in order from back to front. For example, you can layer a vertical bar behind a circle, with both of those behind a horizontal bar:

```swift
Color.blue
    .frame(width: 200, height: 10) // Creates a horizontal bar.
    .background {
        Color.green
            .frame(width: 10, height: 100) // Creates a vertical bar.
        Circle()
            .frame(width: 50, height: 50)
    }
```

Both the background modifier and the implicit [ZStack](/documentation/swiftui/zstack) composed from the background content — the circle and the vertical bar — use a default [center](/documentation/swiftui/alignment/center) alignment. The vertical bar appears centered behind the circle, and both appear as a composite view centered behind the horizontal bar:



If you specify an alignment for the background, it applies to the implicit stack rather than to the individual views in the closure. You can see this if you add the [leading](/documentation/swiftui/alignment/leading) alignment:

```swift
Color.blue
    .frame(width: 200, height: 10)
    .background(alignment: .leading) {
        Color.green
            .frame(width: 10, height: 100)
        Circle()
            .frame(width: 50, height: 50)
    }
```

The vertical bar and the circle move as a unit to align the stack with the leading edge of the horizontal bar, while the vertical bar remains centered on the circle:



To control the placement of individual items inside the `content` closure, either use a different background modifier for each item, as the earlier example of stars under text demonstrates, or add an explicit [ZStack](/documentation/swiftui/zstack) inside the content closure with its own alignment:

```swift
Color.blue
    .frame(width: 200, height: 10)
    .background(alignment: .leading) {
        ZStack(alignment: .leading) {
            Color.green
                .frame(width: 10, height: 100)
            Circle()
                .frame(width: 50, height: 50)
        }
    }
```

The stack alignment ensures that the circle’s leading edge aligns with the vertical bar’s, while the background modifier aligns the composite view with the horizontal bar:



You can achieve layering without a background modifier by putting both the modified view and the background content into a [ZStack](/documentation/swiftui/zstack). This produces a simpler view hierarchy, but it changes the layout priority that SwiftUI applies to the views. Use the background modifier when you want the modified view to dominate the layout.

If you want to specify a [Shape Style](/documentation/swiftui/shapestyle) like a [Hierarchical Shape Style](/documentation/swiftui/hierarchicalshapestyle) or a [Material](/documentation/swiftui/material) as the background, use [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:)) instead. To specify a [Shape](/documentation/swiftui/shape) or [Insettable Shape](/documentation/swiftui/insettableshape), use [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:)). To configure the background of a presentation, like a sheet, use [presentationBackground(alignment:content:)](/documentation/swiftui/view/presentationbackground(alignment:content:)).

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:))
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:))
- [overlay(alignment:content:)](/documentation/swiftui/view/overlay(alignment:content:))
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:))
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:))
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:))
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
