---
title: Group
description: A type that collects multiple instances of a content type — like views, scenes, or commands — into a single unit.
source: https://developer.apple.com/documentation/swiftui/group
timestamp: 2025-10-29T00:09:12.640Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# Group

**Available on:** iOS 13.0+, iPadOS 13.0+, Mac Catalyst 13.0+, macOS 10.15+, tvOS 13.0+, visionOS 1.0+, watchOS 6.0+

> A type that collects multiple instances of a content type — like views, scenes, or commands — into a single unit.

```swift
@frozen struct Group<Content>
```

## Overview

Use a group to collect multiple views into a single instance, without affecting the layout of those views, like an [HStack](/documentation/swiftui/hstack), [VStack](/documentation/swiftui/vstack), or [Section](/documentation/swiftui/section) would. After creating a group, any modifier you apply to the group affects all of that group’s members. For example, the following code applies the [headline](/documentation/swiftui/font/headline) font to three views in a group.

```swift
Group {
    Text("SwiftUI")
    Text("Combine")
    Text("Swift System")
}
.font(.headline)
```

Because you create a group of views with a [View Builder](/documentation/swiftui/viewbuilder), you can use the group’s initializer to produce different kinds of views from a conditional, and then optionally apply modifiers to them. The following example uses a `Group` to add a navigation bar title, regardless of the type of view the conditional produces:

```swift
Group {
    if isLoggedIn {
        WelcomeView()
    } else {
        LoginView()
    }
}
.navigationBarTitle("Start")
```

The modifier applies to all members of the group — and not to the group itself. For example, if you apply [onAppear(perform:)](/documentation/swiftui/view/onappear(perform:)) to the above group, it applies to all of the views produced by the `if isLoggedIn` conditional, and it executes every time `isLoggedIn` changes.

Because a group of views itself is a view, you can compose a group within other view builders, including nesting within other groups. This allows you to add large numbers of views to different view builder containers. The following example uses a `Group` to collect 10 [Text](/documentation/swiftui/text) instances, meaning that the vertical stack’s view builder returns only two views — the group, plus an additional [Text](/documentation/swiftui/text):

```swift
var body: some View {
    VStack {
        Group {
            Text("1")
            Text("2")
            Text("3")
            Text("4")
            Text("5")
            Text("6")
            Text("7")
            Text("8")
            Text("9")
            Text("10")
        }
        Text("11")
    }
}
```

You can initialize groups with several types other than [View](/documentation/swiftui/view), such as [Scene](/documentation/swiftui/scene) and [Toolbar Content](/documentation/swiftui/toolbarcontent). The closure you provide to the group initializer uses the corresponding builder type ([Scene Builder](/documentation/swiftui/scenebuilder), [Toolbar Content Builder](/documentation/swiftui/toolbarcontentbuilder), and so on), and the capabilities of these builders vary between types. For example, you can use groups to return large numbers of scenes or toolbar content instances, but not to return different scenes or toolbar content based on conditionals.

## Conforms To

- [AccessibilityRotorContent](/documentation/swiftui/accessibilityrotorcontent)
- [Commands](/documentation/swiftui/commands)
- [Copyable](/documentation/Swift/Copyable)
- [CustomizableToolbarContent](/documentation/swiftui/customizabletoolbarcontent)
- [MapContent](/documentation/MapKit/MapContent)
- [Scene](/documentation/swiftui/scene)
- [TabContent](/documentation/swiftui/tabcontent)
- [TableColumnContent](/documentation/swiftui/tablecolumncontent)
- [TableRowContent](/documentation/swiftui/tablerowcontent)
- [ToolbarContent](/documentation/swiftui/toolbarcontent)
- [View](/documentation/swiftui/view)

## Creating a group

- [init(content:)](/documentation/swiftui/group/init(content:)) Creates an instance that generates Rotor content by combining, in order, all the Rotor content specified in the passed-in result builder.

## Initializers

- [init(sections:transform:)](/documentation/swiftui/group/init(sections:transform:)) Constructs a group from the sections of the given view.
- [init(subviews:transform:)](/documentation/swiftui/group/init(subviews:transform:)) Constructs a group from the subviews of the given view.

## Grouping views into a container

- [Creating custom container views](/documentation/swiftui/creating-custom-container-views)
- [GroupElementsOfContent](/documentation/swiftui/groupelementsofcontent)
- [GroupSectionsOfContent](/documentation/swiftui/groupsectionsofcontent)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
