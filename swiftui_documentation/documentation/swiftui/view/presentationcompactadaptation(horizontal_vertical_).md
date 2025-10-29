---
title: presentationCompactAdaptation(horizontal:vertical:)
description: Specifies how to adapt a presentation to horizontally and vertically compact size classes.
source: https://developer.apple.com/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:)
timestamp: 2025-10-29T00:14:48.180Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationCompactAdaptation(horizontal:vertical:)

**Available on:** iOS 16.4+, iPadOS 16.4+, Mac Catalyst 16.4+, macOS 13.3+, tvOS 16.4+, visionOS 1.0+, watchOS 9.4+

> Specifies how to adapt a presentation to horizontally and vertically compact size classes.

```swift
nonisolated func presentationCompactAdaptation(horizontal horizontalAdaptation: PresentationAdaptation, vertical verticalAdaptation: PresentationAdaptation) -> some View
```

## Parameters

**horizontalAdaptation**

The adaptation to use in a horizontally compact size class.



**verticalAdaptation**

The adaptation to use in a vertically compact size class. In a size class that is both horizontally and vertically compact, SwiftUI uses the `verticalAdaptation` value.



## Discussion

Some presentations adapt their appearance depending on the context. For example, a popover presentation over a horizontally-compact view uses a sheet appearance by default. Use this modifier to indicate a custom adaptation preference.

```swift
struct ContentView: View {
    @State private var showInfo = false

    var body: some View {
        Button("View Info") {
            showInfo = true
        }
        .popover(isPresented: $showInfo) {
            InfoView()
                .presentationCompactAdaptation(
                    horizontal: .popover,
                    vertical: .sheet)
        }
    }
}
```

If you want to specify the same adaptation for both dimensions, use the [presentationCompactAdaptation(_:)](/documentation/swiftui/view/presentationcompactadaptation(_:)) method instead.

## Adapting a presentation size

- [presentationCompactAdaptation(_:)](/documentation/swiftui/view/presentationcompactadaptation(_:))
- [PresentationAdaptation](/documentation/swiftui/presentationadaptation)
- [presentationSizing(_:)](/documentation/swiftui/view/presentationsizing(_:))
- [PresentationSizing](/documentation/swiftui/presentationsizing)
- [PresentationSizingRoot](/documentation/swiftui/presentationsizingroot)
- [PresentationSizingContext](/documentation/swiftui/presentationsizingcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
