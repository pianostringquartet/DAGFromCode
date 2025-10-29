---
title: listRowPlatterColor(_:)
description: Sets the color that the system applies to the row background when this view is placed in a list.
source: https://developer.apple.com/documentation/swiftui/view/listrowplattercolor(_:)
timestamp: 2025-10-29T00:14:45.227Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# listRowPlatterColor(_:)

**Available on:** watchOS 6.0+

> Sets the color that the system applies to the row background when this view is placed in a list.

```swift
nonisolated func listRowPlatterColor(_ color: Color?) -> some View
```

## Parameters

**color**

The [Color](/documentation/swiftui/color) to apply to the system cell.



## Return Value

A view with the specified `color` applied to the system cell.

## Discussion

Use `listRowPlatterColor(_:)` to set the underlying row background color in a list.

In the example below, the `Flavor` enumeration provides content for list items. The SwiftUI [List](/documentation/swiftui/list) builder iterates over the `Flavor` enumeration and extracts the raw value of each of its elements using the resulting text to create each list row item. After the list builder finishes, the `listRowPlatterColor(_:)` modifier sets the underlying row background color to the [Color](/documentation/swiftui/color) you specify.

```swift
struct ContentView: View {
    enum Flavor: String, CaseIterable, Identifiable {
        var id: String { self.rawValue }
        case vanilla, chocolate, strawberry
    }

    var body: some View {
        List {
            ForEach(Flavor.allCases) {
                Text($0.rawValue)
                    .listRowPlatterColor(.green)
            }
        }
    }
}
```

## Appearance modifiers

- [colorScheme(_:)](/documentation/swiftui/view/colorscheme(_:))
- [background(_:alignment:)](/documentation/swiftui/view/background(_:alignment:))
- [overlay(_:alignment:)](/documentation/swiftui/view/overlay(_:alignment:))
- [foregroundColor(_:)](/documentation/swiftui/view/foregroundcolor(_:))
- [complicationForeground()](/documentation/swiftui/view/complicationforeground())

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
