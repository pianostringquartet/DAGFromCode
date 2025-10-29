---
title: ControlGroup
description: A container view that displays semantically-related controls in a visually-appropriate manner for the context
source: https://developer.apple.com/documentation/swiftui/controlgroup
timestamp: 2025-10-29T00:11:04.781Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# ControlGroup

**Available on:** iOS 15.0+, iPadOS 15.0+, Mac Catalyst 15.0+, macOS 12.0+, tvOS 17.0+, visionOS 1.0+

> A container view that displays semantically-related controls in a visually-appropriate manner for the context

```swift
struct ControlGroup<Content> where Content : View
```

## Overview

You can provide an optional label to this view that describes its children. This view may be used in different ways depending on the surrounding context. For example, when you place the control group in a toolbar item, SwiftUI uses the label when the group is moved to the toolbar’s overflow menu.

```swift
ContentView()
    .toolbar(id: "items") {
        ToolbarItem(id: "media") {
            ControlGroup {
                MediaButton()
                ChartButton()
                GraphButton()
            } label: {
                Label("Plus", systemImage: "plus")
            }
        }
    }
```

## Conforms To

- [View](/documentation/swiftui/view)

## Creating a control group

- [init(content:)](/documentation/swiftui/controlgroup/init(content:)) Creates a new ControlGroup with the specified children
- [init(content:label:)](/documentation/swiftui/controlgroup/init(content:label:)) Creates a new control group with the specified content and a label.
- [init(_:content:)](/documentation/swiftui/controlgroup/init(_:content:)) Creates a new control group with the specified content that generates its label from a string.

## Creating a control group with an image

- [init(_:image:content:)](/documentation/swiftui/controlgroup/init(_:image:content:)) Creates a new control group with the specified content that generates its label from a string and image name.
- [init(_:systemImage:content:)](/documentation/swiftui/controlgroup/init(_:systemimage:content:)) Creates a new control group with the specified content that generates its label from a string and image name.

## Creating a configured control group

- [init(_:)](/documentation/swiftui/controlgroup/init(_:)) Creates a control group based on a style configuration.

## Supporting types

- [LabeledControlGroupContent](/documentation/swiftui/labeledcontrolgroupcontent) A view that represents the body of a control group with a specified label.

## Presenting a group of controls

- [controlGroupStyle(_:)](/documentation/swiftui/view/controlgroupstyle(_:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
