---
title: contentTransition(_:)
description: Modifies the view to use a given transition as its method of animating changes to the contents of its views.
source: https://developer.apple.com/documentation/swiftui/view/contenttransition(_:)
timestamp: 2025-10-29T00:14:47.075Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# contentTransition(_:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Modifies the view to use a given transition as its method of animating changes to the contents of its views.

```swift
nonisolated func contentTransition(_ transition: ContentTransition) -> some View
```

## Parameters

**transition**

The transition to apply when animating the content change.



## Discussion

This modifier allows you to perform a transition that animates a change within a single view. The provided [Content Transition](/documentation/swiftui/contenttransition) can present an opacity animation for content changes, an interpolated animation of the content’s paths as they change, or perform no animation at all.

> [!TIP]
> The `contentTransition(_:)` modifier only has an effect within the context of an [Animation](/documentation/swiftui/animation).

In the following example, a [Button](/documentation/swiftui/button) changes the color and font size of a [Text](/documentation/swiftui/text) view. Since both of these properties apply to the paths of the text, the [interpolate](/documentation/swiftui/contenttransition/interpolate) transition can animate a gradual change to these properties through the entire transition. By contrast, the [opacity](/documentation/swiftui/contenttransition/opacity) transition would simply fade between the start and end states.

```swift
private static let font1 = Font.system(size: 20)
private static let font2 = Font.system(size: 45)

@State private var color = Color.red
@State private var currentFont = font1

var body: some View {
    VStack {
        Text("Content transition")
            .foregroundColor(color)
            .font(currentFont)
            .contentTransition(.interpolate)
        Spacer()
        Button("Change") {
            withAnimation(Animation.easeInOut(duration: 5.0)) {
                color = (color == .red) ? .green : .red
                currentFont = (currentFont == font1) ? font2 : font1
            }
        }
    }
}
```

This example uses an ease-in–ease-out animation with a five-second duration to make it easier to see the effect of the interpolation. The figure below shows the `Text` at the beginning of the animation, halfway through, and at the end.

To control whether content transitions use GPU-accelerated rendering, set the value of the [content Transition Adds Drawing Group](/documentation/swiftui/environmentvalues/contenttransitionaddsdrawinggroup) environment variable.

## Defining transitions

- [transition(_:)](/documentation/swiftui/view/transition(_:))
- [Transition](/documentation/swiftui/transition)
- [TransitionProperties](/documentation/swiftui/transitionproperties)
- [TransitionPhase](/documentation/swiftui/transitionphase)
- [AsymmetricTransition](/documentation/swiftui/asymmetrictransition)
- [AnyTransition](/documentation/swiftui/anytransition)
- [contentTransition](/documentation/swiftui/environmentvalues/contenttransition)
- [contentTransitionAddsDrawingGroup](/documentation/swiftui/environmentvalues/contenttransitionaddsdrawinggroup)
- [ContentTransition](/documentation/swiftui/contenttransition)
- [PlaceholderContentView](/documentation/swiftui/placeholdercontentview)
- [navigationTransition(_:)](/documentation/swiftui/view/navigationtransition(_:))
- [NavigationTransition](/documentation/swiftui/navigationtransition)
- [matchedTransitionSource(id:in:)](/documentation/swiftui/view/matchedtransitionsource(id:in:))
- [matchedTransitionSource(id:in:configuration:)](/documentation/swiftui/view/matchedtransitionsource(id:in:configuration:))
- [MatchedTransitionSourceConfiguration](/documentation/swiftui/matchedtransitionsourceconfiguration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
