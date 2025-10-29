---
title: matchedTransitionSource(id:in:)
description: Identifies this toolbar content as the source of a navigation transition, such as a zoom transition.
source: https://developer.apple.com/documentation/swiftui/customizabletoolbarcontent/matchedtransitionsource(id:in:)
timestamp: 2025-10-29T00:12:31.846Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [customizabletoolbarcontent](/documentation/swiftui/customizabletoolbarcontent)

**Instance Method**

# matchedTransitionSource(id:in:)

**Available on:** iOS 26.0+, iPadOS 26.0+, Mac Catalyst 26.0+

> Identifies this toolbar content as the source of a navigation transition, such as a zoom transition.

```swift
nonisolated func matchedTransitionSource(id: some Hashable, in namespace: Namespace.ID) -> some CustomizableToolbarContent
```

## Parameters

**id**

The identifier, often derived from the identifier of the data being displayed by the toolbar content.



**namespace**

The namespace in which defines the `id`. New namespaces are created by adding an [Namespace](/documentation/swiftui/namespace) variable to a [View](/documentation/swiftui/view) or ``ToolbarContent` type and reading its value in the type’s body method.



## Discussion

Use this modifier in conjunction with `View.navigationTransition(_:)` to provide a source for the transition effect:

```swift
struct ContentView: View {
    @State private var isPresented = false
    @Namespace private var namespace

    var body: some View {
        NavigationStack {
            DetailView()
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Show Sheet", systemImage: "globe") {
                            isPresented = true
                        }
                    }
                    .matchedTransitionSource(
                        id: "world", in: namespace)
                }
                .sheet(isPresented: $isPresented) {
                    SheetView()
                        .navigationTransition(
                            .zoom(sourceID: "world", in: namespace))
                }
        }
    }
}
```

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
