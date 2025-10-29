---
title: projectedValue
description: A projection of the focus state value that returns a binding.
source: https://developer.apple.com/documentation/swiftui/focusstate/projectedvalue
timestamp: 2025-10-29T00:13:23.920Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [focusstate](/documentation/swiftui/focusstate)

**Instance Property**

# projectedValue

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 15.0+, visionOS 1.0+, watchOS 8.0+

> A projection of the focus state value that returns a binding.

```swift
var projectedValue: FocusState<Value>.Binding { get }
```

## Discussion

When focus is outside any view that is bound to this state, the wrapped value is `nil` for optional-typed state or `false` for Boolean state.

In the following example of a simple navigation sidebar, when the user presses the Filter Sidebar Contents button, focus moves to the sidebar’s filter text field. Conversely, if the user moves focus to the sidebar’s filter manually, then the value of `isFiltering` automatically becomes `true`, and the sidebar view updates.

```swift
struct Sidebar: View {
    @State private var filterText = ""
    @FocusState private var isFiltering: Bool

    var body: some View {
        VStack {
            Button("Filter Sidebar Contents") {
                isFiltering = true
            }

            TextField("Filter", text: $filterText)
                .focused($isFiltering)
        }
    }
}
```

## Inspecting the focus state

- [FocusState.Binding](/documentation/swiftui/focusstate/binding)
- [wrappedValue](/documentation/swiftui/focusstate/wrappedvalue)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
