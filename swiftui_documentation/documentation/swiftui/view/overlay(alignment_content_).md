---
title: overlay(alignment:content:)
description: Layers the views that you specify in front of this view.
source: https://developer.apple.com/documentation/swiftui/view/overlay(alignment:content:)
timestamp: 2025-10-29T00:13:59.334Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# overlay(alignment:content:)

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> Layers the views that you specify in front of this view.

```swift
nonisolated func overlay<V>(alignment: Alignment = .center, @ViewBuilder content: () -> V) -> some View where V : View
```

## Parameters

**alignment**

The alignment that the modifier uses to position the implicit [ZStack](/documentation/swiftui/zstack) that groups the foreground views. The default is [center](/documentation/swiftui/alignment/center).



**content**

A [View Builder](/documentation/swiftui/viewbuilder) that you use to declare the views to draw in front of this view, stacked in the order that you list them. The last view that you list appears at the front of the stack.



## Return Value

A view that uses the specified content as a foreground.

## Discussion

Use this modifier to place one or more views in front of another view. For example, you can place a group of stars on a [Rounded Rectangle](/documentation/swiftui/roundedrectangle):

```swift
RoundedRectangle(cornerRadius: 8)
    .frame(width: 200, height: 100)
    .overlay(alignment: .topLeading) { Star(color: .red) }
    .overlay(alignment: .topTrailing) { Star(color: .yellow) }
    .overlay(alignment: .bottomLeading) { Star(color: .green) }
    .overlay(alignment: .bottomTrailing) { Star(color: .blue) }
```

The example above assumes that you’ve defined a `Star` view with a parameterized color:

```swift
struct Star: View {
    var color = Color.yellow

    var body: some View {
        Image(systemName: "star.fill")
            .foregroundStyle(color)
    }
}
```

By setting different `alignment` values for each modifier, you make the stars appear in different places on the rectangle:



If you specify more than one view in the `content` closure, the modifier collects all of the views in the closure into an implicit [ZStack](/documentation/swiftui/zstack), taking them in order from back to front. For example, you can place a star and a [Circle](/documentation/swiftui/circle) on a field of [blue](/documentation/swiftui/shapestyle/blue):

```swift
Color.blue
    .frame(width: 200, height: 200)
    .overlay {
        Circle()
            .frame(width: 100, height: 100)
        Star()
    }
```

Both the overlay modifier and the implicit [ZStack](/documentation/swiftui/zstack) composed from the overlay content — the circle and the star — use a default [center](/documentation/swiftui/alignment/center) alignment. The star appears centered on the circle, and both appear as a composite view centered in front of the square:



If you specify an alignment for the overlay, it applies to the implicit stack rather than to the individual views in the closure. You can see this if you add the [bottom](/documentation/swiftui/alignment/bottom) alignment:

```swift
Color.blue
    .frame(width: 200, height: 200)
    .overlay(alignment: .bottom) {
        Circle()
            .frame(width: 100, height: 100)
        Star()
    }
```

The circle and the star move down as a unit to align the stack’s bottom edge with the bottom edge of the square, while the star remains centered on the circle:



To control the placement of individual items inside the `content` closure, either use a different overlay modifier for each item, as the earlier example of stars in the corners of a rectangle demonstrates, or add an explicit [ZStack](/documentation/swiftui/zstack) inside the content closure with its own alignment:

```swift
Color.blue
    .frame(width: 200, height: 200)
    .overlay(alignment: .bottom) {
        ZStack(alignment: .bottom) {
            Circle()
                .frame(width: 100, height: 100)
            Star()
        }
    }
```

The stack alignment ensures that the star’s bottom edge aligns with the circle’s, while the overlay aligns the composite view with the square:



You can achieve layering without an overlay modifier by putting both the modified view and the overlay content into a [ZStack](/documentation/swiftui/zstack). This can produce a simpler view hierarchy, but changes the layout priority that SwiftUI applies to the views. Use the overlay modifier when you want the modified view to dominate the layout.

If you want to specify a [Shape Style](/documentation/swiftui/shapestyle) like a [Color](/documentation/swiftui/color) or a [Material](/documentation/swiftui/material) as the overlay, use [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:)) instead. To specify a [Shape](/documentation/swiftui/shape), use [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:)).

## Layering views

- [Adding a background to your view](/documentation/swiftui/adding-a-background-to-your-view)
- [ZStack](/documentation/swiftui/zstack)
- [zIndex(_:)](/documentation/swiftui/view/zindex(_:))
- [background(alignment:content:)](/documentation/swiftui/view/background(alignment:content:))
- [background(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(_:ignoressafeareaedges:))
- [background(ignoresSafeAreaEdges:)](/documentation/swiftui/view/background(ignoressafeareaedges:))
- [background(_:in:fillStyle:)](/documentation/swiftui/view/background(_:in:fillstyle:))
- [background(in:fillStyle:)](/documentation/swiftui/view/background(in:fillstyle:))
- [overlay(_:ignoresSafeAreaEdges:)](/documentation/swiftui/view/overlay(_:ignoressafeareaedges:))
- [overlay(_:in:fillStyle:)](/documentation/swiftui/view/overlay(_:in:fillstyle:))
- [backgroundMaterial](/documentation/swiftui/environmentvalues/backgroundmaterial)
- [containerBackground(_:for:)](/documentation/swiftui/view/containerbackground(_:for:))
- [containerBackground(for:alignment:content:)](/documentation/swiftui/view/containerbackground(for:alignment:content:))
- [ContainerBackgroundPlacement](/documentation/swiftui/containerbackgroundplacement)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
