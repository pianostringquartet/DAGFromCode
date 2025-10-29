---
title: modelContext(_:)
description: Sets the model context in this scene’s environment.
source: https://developer.apple.com/documentation/swiftui/scene/modelcontext(_:)
timestamp: 2025-10-29T00:12:32.272Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [scene](/documentation/swiftui/scene)

**Instance Method**

# modelContext(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Sets the model context in this scene’s environment.

```swift
@MainActor @preconcurrency func modelContext(_ modelContext: ModelContext) -> some Scene
```

## Parameters

**modelContext**

The model context to set in this scene’s environment.



## Discussion

In this example, `RecipesApp` sets a shared model context to use for all of its windows:

```swift
@Model class Recipe { ... }

@main
struct RecipesApp: App {
    var body: some Scene {
        WindowGroup {
            RecipesList()
        }
        .modelContext(myContext)
    }
}
```

The environment’s [model Context](/documentation/swiftui/environmentvalues/modelcontext) property will be assigned a `myContext`. All implicit model context operations in this scene, such as `Query` properties, will use the environment’s context.

## Configuring a data model

- [modelContainer(_:)](/documentation/swiftui/scene/modelcontainer(_:))
- [modelContainer(for:inMemory:isAutosaveEnabled:isUndoEnabled:onSetup:)](/documentation/swiftui/scene/modelcontainer(for:inmemory:isautosaveenabled:isundoenabled:onsetup:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
