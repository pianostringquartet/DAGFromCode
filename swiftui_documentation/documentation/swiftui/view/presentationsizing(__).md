---
title: presentationSizing(_:)
description: Sets the sizing of the containing presentation.
source: https://developer.apple.com/documentation/swiftui/view/presentationsizing(_:)
timestamp: 2025-10-29T00:13:07.338Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# presentationSizing(_:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, tvOS 18.0+, visionOS 2.0+, watchOS 11.0+

> Sets the sizing of the containing presentation.

```swift
nonisolated func presentationSizing(_ sizing: some PresentationSizing) -> some View
```

## Parameters

**sizing**

A value dictating size to propose to presentation content and how the presentation responds to changes in content size.



## Discussion

Use this modifier to apply a [Presentation Sizing](/documentation/swiftui/presentationsizing) to a presentation like [sheet(isPresented:onDismiss:content:)](/documentation/swiftui/view/sheet(ispresented:ondismiss:content:)). The `sizing` parameter defines the size proposed to the content, and the presentation adopts the returned size. The default value is `automatic`.

Sizings can be modified to fix their dimensions based on the content, and optionally be sticky.

> [!NOTE]
> [fitted(horizontal:vertical:)](/documentation/swiftui/presentationsizing/fitted(horizontal:vertical:)) and [sticky(horizontal:vertical:)](/documentation/swiftui/presentationsizing/sticky(horizontal:vertical:)).

> [!NOTE]
> If the presentation’s root container is a `NavigationSplitView`, the proposed width only applies to the `detail` column. The `sidebar` and `content` column widths use system-provided values, or those from [navigationSplitViewColumnWidth(_:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:)) or [navigationSplitViewColumnWidth(min:ideal:max:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(min:ideal:max:)) modifiers.

For example, a presentation with facts about flowers could prefer `.page` sizing because its content is primarily informational. Since the user can choose different flowers from the picker, each with different lengths of information, the size is fitted vertically to size the sheet to the textual content, and vertically sticky is specified to prevent the presentation from changing size too frequently as the user changes selection.

```swift
struct ContentView: View {
    @State private var presentInfo = true

    var body: some View {
        ContentView.sheet(isPresented: $presentInfo) {
            VStack {
                Picker("Flower Species", selection: $flower) {
                    ForEach(Flower.allCases) {
                        Text($0.rawValue.uppercased()).tag($0)
                    }
                }
                Text(flower.emoji).font(.largeTitle)
                Text(flower.informationalText)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding()
            .presentationSizing(
                .page
                    .fitted(horizontal: false, vertical: true)
                    .sticky(horizontal: false, vertical: true))
        }
    }
}
```

## Adapting a presentation size

- [presentationCompactAdaptation(horizontal:vertical:)](/documentation/swiftui/view/presentationcompactadaptation(horizontal:vertical:))
- [presentationCompactAdaptation(_:)](/documentation/swiftui/view/presentationcompactadaptation(_:))
- [PresentationAdaptation](/documentation/swiftui/presentationadaptation)
- [PresentationSizing](/documentation/swiftui/presentationsizing)
- [PresentationSizingRoot](/documentation/swiftui/presentationsizingroot)
- [PresentationSizingContext](/documentation/swiftui/presentationsizingcontext)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
