---
title: modelContainer(for:inMemory:isAutosaveEnabled:isUndoEnabled:onSetup:)
description: Sets the model container in this scene for storing the provided model type, creating a new container if necessary, and also sets a model context for that container in this scene’s environment.
source: https://developer.apple.com/documentation/swiftui/scene/modelcontainer(for:inmemory:isautosaveenabled:isundoenabled:onsetup:)
timestamp: 2025-10-29T00:15:17.330Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# modelContainer(for:inMemory:isAutosaveEnabled:isUndoEnabled:onSetup:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Sets the model container in this scene for storing the provided model type, creating a new container if necessary, and also sets a model context for that container in this scene’s environment.

```swift
@MainActor @preconcurrency func modelContainer(for modelType: any PersistentModel.Type, inMemory: Bool = false, isAutosaveEnabled: Bool = true, isUndoEnabled: Bool = false, onSetup: @escaping (Result<ModelContainer, any Error>) -> Void = { _ in }) -> some Scene
```

## Parameters

**modelType**

The model type defining the schema used to create the model container.



**inMemory**

Whether the container should store data only in memory.



**isAutosaveEnabled**

`true` if autosave is enabled.



**isUndoEnabled**

Use `undoManager` in the scene’s environment to manage undo operations for the model container.



**onSetup**

A callback that will be invoked when the creation of the container has has succeeded or failed.



## Discussion

In this example, `RecipesApp` sets a shared model container to use for all of its windows, configured to store instances of `Recipe`:

```swift
@Model class Recipe { ... }

@main
struct RecipesApp: App {
    var body: some Scene {
        WindowGroup {
            RecipesList()
        }
        .modelContainer(for: Recipe.self)
    }
}
```

The environment’s [model Context](/documentation/swiftui/environmentvalues/modelcontext) property will be assigned a new context associated with this container. All implicit model context operations in this scene, such as `Query` properties, will use the environment’s context.

By default, the container stores its model data persistently on disk. To only store data in memory for the lifetime of the app’s process, pass `true` to the `inMemory:` parameter.

The container will only be created once. New values that are passed to the `modelType` and `inMemory` parameters after the view is first created will be ignored.

## Configuring a data model

- [modelContext(_:)](/documentation/swiftui/scene/modelcontext(_:))
- [modelContainer(_:)](/documentation/swiftui/scene/modelcontainer(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
