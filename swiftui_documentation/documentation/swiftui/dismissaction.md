---
title: DismissAction
description: An action that dismisses a presentation.
source: https://developer.apple.com/documentation/swiftui/dismissaction
timestamp: 2025-10-29T00:10:23.123Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# DismissAction

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> An action that dismisses a presentation.

```swift
@MainActor @preconcurrency struct DismissAction
```

## Overview

Use the [dismiss](/documentation/swiftui/environmentvalues/dismiss) environment value to get the instance of this structure for a given [Environment](/documentation/swiftui/environment). Then call the instance to perform the dismissal. You call the instance directly because it defines a [callAsFunction()](/documentation/swiftui/dismissaction/callasfunction()) method that Swift calls when you call the instance.

You can use this action to:

- Dismiss a modal presentation, like a sheet or a popover.
- Pop the current view from a [Navigation Stack](/documentation/swiftui/navigationstack).

On apps targeting iOS 18 and aligned releases, you also use the dismiss action to pop the implicit stack of a collapsed [Navigation Split View](/documentation/swiftui/navigationsplitview), or clear the equivalent state in an expanded split view.

The specific behavior of the action depends on where you call it from. For example, you can create a button that calls the [Dismiss Action](/documentation/swiftui/dismissaction) inside a view that acts as a sheet:

```swift
private struct SheetContents: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        Button("Done") {
            dismiss()
        }
    }
}
```

When you present the `SheetContents` view, someone can dismiss the sheet by tapping or clicking the sheet’s button:

```swift
private struct DetailView: View {
    @State private var isSheetPresented = false

    var body: some View {
        Button("Show Sheet") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            SheetContents()
        }
    }
}
```

Be sure that you define the action in the appropriate environment. For example, don’t reorganize the `DetailView` in the example above so that it creates the `dismiss` property and calls it from the [sheet(item:onDismiss:content:)](/documentation/swiftui/view/sheet(item:ondismiss:content:)) view modifier’s `content` closure:

```swift
private struct DetailView: View {
    @State private var isSheetPresented = false
    @Environment(\.dismiss) private var dismiss // Applies to DetailView.

    var body: some View {
        Button("Show Sheet") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            Button("Done") {
                dismiss() // Fails to dismiss the sheet.
            }
        }
    }
}
```

If you do this, the sheet fails to dismiss because the action applies to the environment where you declared it, which is that of the detail view, rather than the sheet. In fact, in macOS and iPadOS, if the `DetailView` is the root view of a window, the dismiss action closes the window instead.

The dismiss action has no effect on a view that isn’t currently presented. If you need to query whether SwiftUI is currently presenting a view, read the [is Presented](/documentation/swiftui/environmentvalues/ispresented) environment value.

> [!NOTE]
> While the dismiss action can be used to a close window that you create with [Window Group](/documentation/swiftui/windowgroup) or [Window](/documentation/swiftui/window), prefer [Dismiss Window Action](/documentation/swiftui/dismisswindowaction) for that use case instead.

## Conforms To

- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Calling the action

- [callAsFunction()](/documentation/swiftui/dismissaction/callasfunction()) Dismisses the view if it is currently presented.

## Dismissing a presentation

- [isPresented](/documentation/swiftui/environmentvalues/ispresented)
- [dismiss](/documentation/swiftui/environmentvalues/dismiss)
- [interactiveDismissDisabled(_:)](/documentation/swiftui/view/interactivedismissdisabled(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
