---
title: accessibilityDropPoint(_:description:)
description: The point an assistive technology should use to end a drag interaction.
source: https://developer.apple.com/documentation/swiftui/modifiedcontent/accessibilitydroppoint(_:description:)
timestamp: 2025-10-29T00:11:49.050Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [modifiedcontent](/documentation/swiftui/modifiedcontent)

**Instance Method**

# accessibilityDropPoint(_:description:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, visionOS 1.0+

> The point an assistive technology should use to end a drag interaction.

```swift
nonisolated func accessibilityDropPoint(_ point: UnitPoint, description: LocalizedStringKey) -> ModifiedContent<Content, Modifier>
```

## Discussion

Use this modifier when you need to provide a description to users when prompted end a drag interaction.

```swift
struct FolderView: View {
    var folderName: String

    var body: some View {
        FolderIcon(folderName: folderName)
            .accessibilityDropPoint(.center, description: "Move to \(folderName)")
    }
}
```

By default, if an accessible view or its subtree has drag and/or drop interactions, they will be automatically exposed by assistive technologies. However, if there is more than one such interaction, each drag or drop should have a description to disambiguate it and give a good user experience.

> [!NOTE]
> An accessibility element can have multiple points for a drop, provided they have different descriptions.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
