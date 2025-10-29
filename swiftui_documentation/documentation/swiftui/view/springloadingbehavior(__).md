---
title: springLoadingBehavior(_:)
description: Sets the spring loading behavior this view.
source: https://developer.apple.com/documentation/swiftui/view/springloadingbehavior(_:)
timestamp: 2025-10-29T00:10:58.622Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# springLoadingBehavior(_:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, tvOS 17.0+, visionOS 1.0+, watchOS 10.0+

> Sets the spring loading behavior this view.

```swift
nonisolated func springLoadingBehavior(_ behavior: SpringLoadingBehavior) -> some View
```

## Parameters

**behavior**

Whether spring loading is enabled or not. If unspecified, the default behavior is `.automatic.`



## Discussion

Spring loading refers to a view being activated during a drag and drop interaction. On iOS this can occur when pausing briefly on top of a view with dragged content. On macOS this can occur with similar brief pauses or on pressure-sensitive systems by “force clicking” during the drag. This has no effect on tvOS or watchOS.

This is commonly used with views that have a navigation or presentation effect, allowing the destination to be revealed without pausing the drag interaction. For example, a button that reveals a list of folders that a dragged item can be dropped onto.

```swift
Button {
    showFolders = true
} label: {
    Label("Show Folders", systemImage: "folder")
}
.springLoadingBehavior(.enabled)
```

Unlike `disabled(_:)`, this modifier overrides the value set by an ancestor view rather than being unioned with it. For example, the below button would allow spring loading:

```swift
HStack {
    Button {
        showFolders = true
    } label: {
        Label("Show Folders", systemImage: "folder")
    }
    .springLoadingBehavior(.enabled)

    ...
}
.springLoadingBehavior(.disabled)
```

## Configuring spring loading

- [springLoadingBehavior](/documentation/swiftui/environmentvalues/springloadingbehavior)
- [SpringLoadingBehavior](/documentation/swiftui/springloadingbehavior)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
