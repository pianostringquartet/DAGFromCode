---
title: EditMode
description: A mode that indicates whether the user can edit a view’s content.
source: https://developer.apple.com/documentation/swiftui/editmode
timestamp: 2025-10-29T00:15:15.141Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Enumeration**

# EditMode

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, tvOS 13.0+, visionOS 1.0+

> A mode that indicates whether the user can edit a view’s content.

```swift
enum EditMode
```

## Overview

You receive an optional binding to the edit mode state when you read the [edit Mode](/documentation/swiftui/environmentvalues/editmode) environment value. The binding contains an `EditMode` value that indicates whether edit mode is active, and that you can use to change the mode. To learn how to read an environment value, see [Environment Values](/documentation/swiftui/environmentvalues).

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

You can set the edit mode through the binding, or you can rely on an [Edit Button](/documentation/swiftui/editbutton) to do that for you, as the example above demonstrates. The button activates edit mode when the user taps it, and disables the mode when the user taps again.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Getting edit modes

- [EditMode.active](/documentation/swiftui/editmode/active) The user can edit the view content.
- [EditMode.inactive](/documentation/swiftui/editmode/inactive) The user can’t edit the view content.
- [EditMode.transient](/documentation/swiftui/editmode/transient) The view is in a temporary edit mode.

## Checking for editing mode

- [isEditing](/documentation/swiftui/editmode/isediting) Indicates whether a view is being edited.

## Editing a list

- [moveDisabled(_:)](/documentation/swiftui/view/movedisabled(_:))
- [deleteDisabled(_:)](/documentation/swiftui/view/deletedisabled(_:))
- [editMode](/documentation/swiftui/environmentvalues/editmode)
- [EditActions](/documentation/swiftui/editactions)
- [EditableCollectionContent](/documentation/swiftui/editablecollectioncontent)
- [IndexedIdentifierCollection](/documentation/swiftui/indexedidentifiercollection)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
