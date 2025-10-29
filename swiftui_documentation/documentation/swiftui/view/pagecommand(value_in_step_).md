---
title: pageCommand(value:in:step:)
description: Steps a value through a range in response to page up or page down commands.
source: https://developer.apple.com/documentation/swiftui/view/pagecommand(value:in:step:)
timestamp: 2025-10-29T00:13:20.874Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# pageCommand(value:in:step:)

**Available on:** tvOS 14.3+

> Steps a value through a range in response to page up or page down commands.

```swift
nonisolated func pageCommand<V>(value: Binding<V>, in bounds: ClosedRange<V>, step: V = 1) -> some View where V : BinaryInteger
```

## Parameters

**value**

A [Binding](/documentation/swiftui/binding) to the value to modify when the user pages up or down.



**bounds**

A closed range that specifies the upper and lower bounds of `value`.



**step**

The amount by which to increment or decrement `value`. Defaults to 1.



## Discussion

Use this command to step through sections of a data model associated with a view by providing a binding to a value, a range, and step. If taking another step would cause the value to exceed the bounds, then the value remains unchanged.

On tvOS, the user triggers ‘pageUp’ and ‘pageDown’ commands by pressing a dedicated button on a connected remote. For example, you can let a user page through a TV programming guide using the channel buttons:

```swift
struct GuideView: View {
    @State private var pageOffset: Int = 0

    var body: some View {
        GuideContent(at: pageOffset)
            .pageCommand(
                value: $pageOffset,
                in: 0...9,
                step: 1)
    }
}
```

## Responding to commands

- [onMoveCommand(perform:)](/documentation/swiftui/view/onmovecommand(perform:))
- [onDeleteCommand(perform:)](/documentation/swiftui/view/ondeletecommand(perform:))
- [onExitCommand(perform:)](/documentation/swiftui/view/onexitcommand(perform:))
- [onPlayPauseCommand(perform:)](/documentation/swiftui/view/onplaypausecommand(perform:))
- [onCommand(_:perform:)](/documentation/swiftui/view/oncommand(_:perform:))
- [MoveCommandDirection](/documentation/swiftui/movecommanddirection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
