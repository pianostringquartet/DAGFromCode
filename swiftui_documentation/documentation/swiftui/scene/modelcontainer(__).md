---
title: modelContainer(_:)
description: Sets the model container and associated model context in this scene’s environment.
source: https://developer.apple.com/documentation/swiftui/scene/modelcontainer(_:)
timestamp: 2025-10-29T00:12:43.397Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# modelContainer(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Sets the model container and associated model context in this scene’s environment.

```swift
@MainActor @preconcurrency func modelContainer(_ container: ModelContainer) -> some Scene
```

## Parameters

**container**

The model container to use for this scene.



## Discussion

In this example, `RecipesApp` sets a shared model container to use for all of its windows:

```swift
@main
struct RecipesApp: App {
    @State private var container = ModelContainer(...)

    var body: some Scene {
        WindowGroup {
            RecipesList()
        }
        .modelContainer(container)
    }
}
```

The environment’s [model Context](/documentation/swiftui/environmentvalues/modelcontext) property will be assigned a new context associated with this container. All implicit model context operations in this scene, such as `Query` properties, will use the environment’s context.

## Configuring a data model

- [modelContext(_:)](/documentation/swiftui/scene/modelcontext(_:))
- [modelContainer(for:inMemory:isAutosaveEnabled:isUndoEnabled:onSetup:)](/documentation/swiftui/scene/modelcontainer(for:inmemory:isautosaveenabled:isundoenabled:onsetup:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
