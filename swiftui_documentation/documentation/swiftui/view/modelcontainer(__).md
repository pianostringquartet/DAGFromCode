---
title: modelContainer(_:)
description: Sets the model container and associated model context in this view’s environment.
source: https://developer.apple.com/documentation/swiftui/view/modelcontainer(_:)
timestamp: 2025-10-29T00:12:58.653Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# modelContainer(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Sets the model container and associated model context in this view’s environment.

```swift
@MainActor @preconcurrency func modelContainer(_ container: ModelContainer) -> some View
```

## Parameters

**container**

The model container to use for this view.



## Discussion

In this example, `ContentView` sets a model container to use for `RecipesList`:

```swift
struct ContentView: View {
    @State private var container = ModelContainer(...)

    var body: some Scene {
        RecipesList()
            .modelContainer(container)
    }
}
```

The environment’s [model Context](/documentation/swiftui/environmentvalues/modelcontext) property will be assigned a new context associated with this container. All implicit model context operations in this view, such as `Query` properties, will use the environment’s context.

## Configuring a model

- [modelContext(_:)](/documentation/swiftui/view/modelcontext(_:))
- [modelContainer(for:inMemory:isAutosaveEnabled:isUndoEnabled:onSetup:)](/documentation/swiftui/view/modelcontainer(for:inmemory:isautosaveenabled:isundoenabled:onsetup:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
