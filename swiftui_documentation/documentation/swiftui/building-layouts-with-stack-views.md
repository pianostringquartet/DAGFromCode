---
title: Building layouts with stack views
description: Compose complex layouts from primitive container views.
source: https://developer.apple.com/documentation/swiftui/building-layouts-with-stack-views
timestamp: 2025-10-29T00:09:20.432Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Building layouts with stack views

> Compose complex layouts from primitive container views.

## Overview

Individually, [HStack](/documentation/swiftui/hstack), [VStack](/documentation/swiftui/vstack), and [ZStack](/documentation/swiftui/zstack) are simple views. [HStack](/documentation/swiftui/hstack) positions views in a horizontal line, [VStack](/documentation/swiftui/vstack) positions them in a vertical line, and [ZStack](/documentation/swiftui/zstack) overlays views on top of one another.



When you initialize them with default parameters, stack views center align their content and insert a small amount of spacing between each contained view. But, when you combine and customize stacks with view modifiers, [Spacer](/documentation/swiftui/spacer), and [Divider](/documentation/swiftui/divider) views, you can create highly flexible and complex layouts.

### Plan your layout hierarchy

Think about a layout in terms of how you might create it using the various types of stack views as you start to translate your design into code. Break down complex designs into smaller, simpler pieces you can build with stack views.

For example, you might build this profile view using three stack views:



A [ZStack](/documentation/swiftui/zstack) contains an [Image](/documentation/swiftui/image) view that displays a profile picture with a semi-transparent [HStack](/documentation/swiftui/hstack) overlaid on top. The [HStack](/documentation/swiftui/hstack) contains a [VStack](/documentation/swiftui/vstack) with a pair of [Text](/documentation/swiftui/text) views inside it, and a [Spacer](/documentation/swiftui/spacer) view pushes the [VStack](/documentation/swiftui/vstack) to the leading side.

To create this stack view:

```swift
struct ProfileView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("ProfilePicture")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text("Rachael Chiseck")
                        .font(.headline)
                    Text("Chief Executive Officer")
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
            .foregroundColor(.primary)
            .background(Color.primary
                            .colorInvert()
                            .opacity(0.75))
        }
    }
}
```

### Position views with alignment and spacer views

Align any contained views inside a stack view by using a combination of the `alignment` property, [Spacer](/documentation/swiftui/spacer), and [Divider](/documentation/swiftui/divider) views.

In the previous example layout, the [VStack](/documentation/swiftui/vstack) that contains the two [Text](/documentation/swiftui/text) views uses the [leading](/documentation/swiftui/horizontalalignment/leading) alignment:



The `alignment` property doesn’t position the [VStack](/documentation/swiftui/vstack) inside its container; instead, it positions the views inside the [VStack](/documentation/swiftui/vstack).

The `alignment` property of a [VStack](/documentation/swiftui/vstack) only applies to the horizontal alignment of the contained controls using [Horizontal Alignment](/documentation/swiftui/horizontalalignment). Similarly, the `alignment` property for an [HStack](/documentation/swiftui/hstack) only controls the vertical alignment using [Vertical Alignment](/documentation/swiftui/verticalalignment). Finally, you can align views inside a [ZStack](/documentation/swiftui/zstack) along both axes with [Alignment](/documentation/swiftui/alignment).

Use [Spacer](/documentation/swiftui/spacer) views to align views along the primary axis of an [HStack](/documentation/swiftui/hstack) or [VStack](/documentation/swiftui/vstack). Spacers expand to fill any available space and push content apart from other views or the edges of the stack.



[Divider](/documentation/swiftui/divider) views also add space in between a stack’s subviews, but only insert enough space to draw a line across the stack’s minor axis. They don’t expand to fill available space.

### Create adaptive layouts instead of explicit layouts

Wherever possible, define structure and hierarchy rather than explicitly positioning view frames. Instead of using explicit heights and widths for views, let them expand to fill available space. Adaptive layouts that you build adapt more easily to different device sizes and platforms.

It is possible to create this article’s example layout with two stack views rather than three, by manipulating the [Text](/documentation/swiftui/text) view frames explicitly. While the output might look the same, the code to implement it is more brittle, and might not scale as well across devices of different size classes.

You may need to make adjustments to a layout that uses explicit adjustments by using view modifiers such as [frame(width:height:alignment:)](/documentation/swiftui/view/frame(width:height:alignment:)) or [position(x:y:)](/documentation/swiftui/view/position(x:y:)), but only consider this when you can’t achieve your desired layout in an adaptive, flexible way. For more information on making fine adjustments to view layout, see [Making-Fine-Adjustments-to-a-View-s](/documentation/swiftui/making-fine-adjustments-to-a-view-s-position).

### Add depth in alternative ways

In some situations it may make sense to add depth to your layout by using the [overlay(_:alignment:)](/documentation/swiftui/view/overlay(_:alignment:)) and [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:)) view modifiers instead of a [ZStack](/documentation/swiftui/zstack). The background view modifier places another view behind the view you’re modifying, and overlay places a view on top of it.

Choose between a stack-based approach and the view modifier approach based on how you want to determine the size of the final layout. If your layout has one dominant view that defines the size of the layout, use the [overlay(_:alignment:)](/documentation/swiftui/view/overlay(_:alignment:)) or [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:)) view modifier on that view. If you want the final view size to come from an aggregation of all the contained views, use a [ZStack](/documentation/swiftui/zstack).

For example, this code overlays a `ProfileDetail` view on top of the [Image](/documentation/swiftui/image) view:

```swift
struct ProfileViewWithOverlay: View {
    var body: some View {
        VStack {
            Image("ProfilePicture")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(ProfileDetail(), alignment: .bottom)
        }
    }
}

struct ProfileDetail: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Rachael Chiseck")
                    .font(.headline)
                Text("Chief Executive Officer")
                    .font(.subheadline)
            }
            Spacer()
        }
        .padding()
        .foregroundColor(.primary)
        .background(Color.primary
                        .colorInvert()
                        .opacity(0.75))
    }
}
```

## Statically arranging views in one dimension

- [HStack](/documentation/swiftui/hstack)
- [VStack](/documentation/swiftui/vstack)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
