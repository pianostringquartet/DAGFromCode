---
title: editMode
description: An indication of whether the user can edit the contents of a view associated with this environment.
source: https://developer.apple.com/documentation/swiftui/environmentvalues/editmode
timestamp: 2025-10-29T00:11:09.135Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [environmentvalues](/documentation/swiftui/environmentvalues)

**Instance Property**

# editMode

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> An indication of whether the user can edit the contents of a view associated with this environment.

```swift
var editMode: Binding<EditMode>? { get set }
```

## Discussion

Read this environment value to receive a optional binding to the edit mode state. The binding contains an [Edit Mode](/documentation/swiftui/editmode) value that indicates whether edit mode is active, and that you can use to change the mode. To learn how to read an environment value, see [Environment Values](/documentation/swiftui/environmentvalues).

Certain built-in views automatically alter their appearance and behavior in edit mode. For example, a [List](/documentation/swiftui/list) with a [For Each](/documentation/swiftui/foreach) that’s configured with the [onDelete(perform:)](/documentation/swiftui/dynamicviewcontent/ondelete(perform:)) or [onMove(perform:)](/documentation/swiftui/dynamicviewcontent/onmove(perform:)) modifier provides controls to delete or move list items while in edit mode. On devices without an attached keyboard and mouse or trackpad, people can make multiple selections in lists only when edit mode is active.

You can also customize your own views to react to edit mode. The following example replaces a read-only [Text](/documentation/swiftui/text) view with an editable [Text Field](/documentation/swiftui/textfield), checking for edit mode by testing the wrapped value’s [is Editing](/documentation/swiftui/editmode/isediting) property:

```swift
@Environment(\.editMode) private var editMode
@State private var name = "Maria Ruiz"

var body: some View {
    Form {
        if editMode?.wrappedValue.isEditing == true {
            TextField("Name", text: $name)
        } else {
            Text(name)
        }
    }
    .animation(nil, value: editMode?.wrappedValue)
    .toolbar { // Assumes embedding this view in a NavigationView.
        EditButton()
    }
}
```

You can set the edit mode through the binding, or you can rely on an [Edit Button](/documentation/swiftui/editbutton) to do that for you, as the example above demonstrates. The button activates edit mode when the user taps the Edit button, and disables editing mode when the user taps Done.

## Editing a list

- [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:))
- [deleteDisabled(_:)](/documentation/swiftui/view/deletedisabled(_:))
- [EditMode](/documentation/swiftui/editmode)
- [EditActions](/documentation/swiftui/editactions)
- [EditableCollectionContent](/documentation/swiftui/editablecollectioncontent)
- [IndexedIdentifierCollection](/documentation/swiftui/indexedidentifiercollection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
