---
title: actionSheet(isPresented:content:)
description: Presents an action sheet when a given condition is true.
source: https://developer.apple.com/documentation/swiftui/view/actionsheet(ispresented:content:)
timestamp: 2025-10-29T00:13:11.167Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# actionSheet(isPresented:content:)

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> Presents an action sheet when a given condition is true.

```swift
nonisolated func actionSheet(isPresented: Binding<Bool>, content: () -> ActionSheet) -> some View
```

## Parameters

**isPresented**

A binding to a Boolean value that determines whether to present the action sheet that you create in the modifier’s `content` closure. When the user presses or taps the sheet’s default action button the system sets this value to `false` dismissing the sheet.



**content**

A closure returning the `ActionSheet` to present.



## Discussion

In the example below, a button conditionally presents an action sheet depending upon the value of a bound Boolean variable. When the Boolean value is set to `true`, the system displays an action sheet with both destructive and default actions:

```swift
struct ConfirmEraseItems: View {
    @State private var isShowingSheet = false
    var body: some View {
        Button("Show Action Sheet", action: {
            isShowingSheet = true
        })
        .actionSheet(isPresented: $isShowingSheet) {
            ActionSheet(
                title: Text("Permanently erase the items in the Trash?"),
                message: Text("You can't undo this action."),
                buttons:[
                    .destructive(Text("Empty Trash"),
                                 action: emptyTrashAction),
                    .cancel()
                ]
            )}
    }

    func emptyTrashAction() {
        // Handle empty trash action.
    }
}
```



> [!NOTE]
> In regular size classes in iOS, the system renders alert sheets as a popover that the user dismisses by tapping anywhere outside the popover, rather than displaying the default dismiss button.

## View presentation modifiers

- [actionSheet(item:content:)](/documentation/swiftui/view/actionsheet(item:content:))
- [alert(isPresented:content:)](/documentation/swiftui/view/alert(ispresented:content:))
- [alert(item:content:)](/documentation/swiftui/view/alert(item:content:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
