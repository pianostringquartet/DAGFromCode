---
title: modelContext(_:)
description: Sets the model context in this view’s environment.
source: https://developer.apple.com/documentation/swiftui/view/modelcontext(_:)
timestamp: 2025-10-29T00:10:55.426Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# modelContext(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, macOS 14.0+, tvOS 17.0+, watchOS 10.0+

> Sets the model context in this view’s environment.

```swift
@MainActor @preconcurrency func modelContext(_ modelContext: ModelContext) -> some View
```

## Parameters

**modelContext**

The model context to set in this view’s environment.



## Discussion

In this example, the `RecipesList` view sets a model context to use for all of its content:

```swift
@Model class Recipe { ... }
...
RecipesList()
    .modelContext(myContext)
```

The environment’s [model Context](/documentation/swiftui/environmentvalues/modelcontext) property will be assigned `myContext`. All implicit model context operations in this view, such as `Query` properties, will use the environment’s context.

## Configuring a model

- [modelContainer(_:)](/documentation/swiftui/view/modelcontainer(_:))
- [modelContainer(for:inMemory:isAutosaveEnabled:isUndoEnabled:onSetup:)](/documentation/swiftui/view/modelcontainer(for:inmemory:isautosaveenabled:isundoenabled:onsetup:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
