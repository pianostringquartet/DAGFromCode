---
title: accessibilityDragPoint(_:description:isEnabled:)
description: The point an assistive technology should use to begin a drag interaction.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilitydragpoint(_:description:isenabled:)
timestamp: 2025-10-29T00:11:10.567Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityDragPoint(_:description:isEnabled:)

**Available on:** iOS 18.0+, iPadOS 18.0+, Mac Catalyst 18.0+, macOS 15.0+, visionOS 2.0+

> The point an assistive technology should use to begin a drag interaction.

```swift
nonisolated func accessibilityDragPoint(_ point: UnitPoint, description: LocalizedStringKey, isEnabled: Bool) -> ModifiedContent<Content, Modifier>
```

## Parameters

**point**

The point the assistive technology will begin a drag interaction.



**description**

The description of the drag interaction.



**isEnabled**

If true the accessibility drag point is applied; otherwise the accessibility drag point is unchanged.



## Discussion

Use this modifier when you need to provide a description to users when prompted begin a drag interaction.

```swift
struct FileView: View {
    var filename: String

    var body: some View {
        FileIcon(filename: filename)
            .accessibilityDragPoint(
                .center, description: Text("Move \(filename)"))
    }
}
```

By default, if an accessible view or its subtree has drag and/or drop interactions, they will be automatically exposed by assistive technologies. However, if there is more than one such interaction, each drag or drop should have a description to disambiguate it and give a good user experience.

> [!NOTE]
> An accessibility element can have multiple points for a drag, provided they have different descriptions.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
