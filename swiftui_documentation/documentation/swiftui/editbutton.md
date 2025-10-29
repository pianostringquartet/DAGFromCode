---
title: EditButton
description: A button that toggles the edit mode environment value.
source: https://developer.apple.com/documentation/swiftui/editbutton
timestamp: 2025-10-29T00:09:54.610Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# EditButton

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, visionOS 1.0+

> A button that toggles the edit mode environment value.

```swift
struct EditButton
```

## Overview

An edit button toggles the environment’s [edit Mode](/documentation/swiftui/environmentvalues/editmode) value for content within a container that supports edit mode. In the following example, an edit button placed inside a [Navigation View](/documentation/swiftui/navigationview) supports editing of a [List](/documentation/swiftui/list):

```swift
@State private var fruits = [
    "Apple",
    "Banana",
    "Papaya",
    "Mango"
]

var body: some View {
    NavigationView {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
            }
            .onDelete { fruits.remove(atOffsets: $0) }
            .onMove { fruits.move(fromOffsets: $0, toOffset: $1) }
        }
        .navigationTitle("Fruits")
        .toolbar {
            EditButton()
        }
    }
}
```

Because the [For Each](/documentation/swiftui/foreach) in the above example defines behaviors for [onDelete(perform:)](/documentation/swiftui/dynamicviewcontent/ondelete(perform:)) and [onMove(perform:)](/documentation/swiftui/dynamicviewcontent/onmove(perform:)), the editable list displays the delete and move UI when the user taps Edit. Notice that the Edit button displays the title “Done” while edit mode is active:



You can also create custom views that react to changes in the edit mode state, as described in [Edit Mode](/documentation/swiftui/editmode).

## Conforms To

- [View](/documentation/swiftui/view)

## Creating an edit button

- [init()](/documentation/swiftui/editbutton/init()) Creates an Edit button instance.

## Creating special-purpose buttons

- [PasteButton](/documentation/swiftui/pastebutton)
- [RenameButton](/documentation/swiftui/renamebutton)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
