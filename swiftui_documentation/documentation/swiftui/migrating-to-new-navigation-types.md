---
title: Migrating to new navigation types
description: Improve navigation behavior in your app by replacing navigation views with navigation stacks and navigation split views.
source: https://developer.apple.com/documentation/swiftui/migrating-to-new-navigation-types
timestamp: 2025-10-29T00:12:43.989Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Migrating to new navigation types

> Improve navigation behavior in your app by replacing navigation views with navigation stacks and navigation split views.

## Overview

If your app has a minimum deployment target of iOS 16, iPadOS 16, macOS 13, tvOS 16, watchOS 9, or visionOS 1, or later, transition away from using [Navigation View](/documentation/swiftui/navigationview). In its place, use [Navigation Stack](/documentation/swiftui/navigationstack) and [Navigation Split View](/documentation/swiftui/navigationsplitview) instances. How you use these depends on whether you perform navigation in one column or across multiple columns. With these newer containers, you get better control over view presentation, container configuration, and programmatic navigation.

### Update single column navigation

If your app uses a [Navigation View](/documentation/swiftui/navigationview) that you style using the [stack](/documentation/swiftui/navigationviewstyle/stack) navigation view style, where people navigate by pushing a new view onto a stack, switch to [Navigation Stack](/documentation/swiftui/navigationstack).

In particular, stop doing this:

```swift
NavigationView { // This is deprecated.
    /* content */
}
.navigationViewStyle(.stack)
```

Instead, create a navigation stack:

```swift
NavigationStack {
    /* content */
}
```

### Update multicolumn navigation

If your app uses a two- or three-column [Navigation View](/documentation/swiftui/navigationview), or for apps that have multiple columns in some cases and a single column in others — which is typical for apps that run on iPhone and iPad — switch to [Navigation Split View](/documentation/swiftui/navigationsplitview).

Instead of using a two-column navigation view:

```swift
NavigationView { // This is deprecated.
    /* column 1 */
    /* column 2 */
}
```

Create a navigation split view that has explicit sidebar and detail content using the [init(sidebar:detail:)](/documentation/swiftui/navigationsplitview/init(sidebar:detail:)) initializer:

```swift
NavigationSplitView {
    /* column 1 */
} detail: {
    /* column 2 */
}
```

Similarly, instead of using a three-column navigation view:

```swift
NavigationView { // This is deprecated.
    /* column 1 */
    /* column 2 */
    /* column 3 */
}
```

Create a navigation split view that has explicit sidebar, content, and detail components using the [init(sidebar:content:detail:)](/documentation/swiftui/navigationsplitview/init(sidebar:content:detail:)) initializer:

```swift
NavigationSplitView {
    /* column 1 */
} content: {
    /* column 2 */
} detail: {
    /* column 3 */
}
```

If you need navigation within a column, embed a navigation stack in that column. This arrangement provides finer control over what each column displays. [Navigation Split View](/documentation/swiftui/navigationsplitview) also enables you to customize column visibility and width.

### Update programmatic navigation

If you perform programmatic navigation using one of the [Navigation Link](/documentation/swiftui/navigationlink) initializers that has an `isActive` input parameter, move the automation to the enclosing stack. Do this by changing your navigation links to use the [init(value:label:)](/documentation/swiftui/navigationlink/init(value:label:)) initializer, then use one of the navigation stack initializers that takes a path input, like [init(path:root:)](/documentation/swiftui/navigationstack/init(path:root:)).

For example, if you have a navigation view with links that activate in response to individual state variables:

```swift
@State private var isShowingPurple = false
@State private var isShowingPink = false
@State private var isShowingOrange = false

var body: some View {
    NavigationView { // This is deprecated.
        List {
            NavigationLink("Purple", isActive: $isShowingPurple) {
                ColorDetail(color: .purple)
            }
            NavigationLink("Pink", isActive: $isShowingPink) {
                ColorDetail(color: .pink)
            }
            NavigationLink("Orange", isActive: $isShowingOrange) {
                ColorDetail(color: .orange)
            }
        }
    }
    .navigationViewStyle(.stack) 
}
```

When some other part of your code sets one of the state variables to true, the navigation link that has the matching tag activates in response.

Rewrite this as a navigation stack that takes a path input:

```swift
@State private var path: [Color] = [] // Nothing on the stack by default.

var body: some View {
    NavigationStack(path: $path) {
        List {
            NavigationLink("Purple", value: .purple)
            NavigationLink("Pink", value: .pink)
            NavigationLink("Orange", value: .orange)
        }
        .navigationDestination(for: Color.self) { color in
            ColorDetail(color: color)
        }
    }
}
```

This version uses the [navigationDestination(for:destination:)](/documentation/swiftui/view/navigationdestination(for:destination:)) view modifier to detach the presented data from the corresponding view. That makes it possible for the `path` array to represent every view on the stack. Changes that you make to the array affect what the container displays right now, as well as what people encounter as they navigate through the stack. You can support even more sophisticated programmatic navigation if you use a [Navigation Path](/documentation/swiftui/navigationpath) to store the path information, rather than a plain collection of data. For more information, see [Navigation Stack](/documentation/swiftui/navigationstack).

### Update selection-based navigation

If you perform programmatic navigation on [List](/documentation/swiftui/list) elements that use one of the [Navigation Link](/documentation/swiftui/navigationlink) initializers with a `selection` input parameter, you can move the selection to the list. For example, suppose you have a navigation view with links that activate in response to a `selection` state variable:

```swift
let colors: [Color] = [.purple, .pink, .orange]
@State private var selection: Color? = nil // Nothing selected by default.

var body: some View {
    NavigationView { // This is deprecated.
        List {
            ForEach(colors, id: \.self) { color in
                NavigationLink(color.description, tag: color, selection: $selection) {
                    ColorDetail(color: color)
                }
            }
        }
        Text("Pick a color")
    }
}
```

Using the same properties, you can rewrite the body as:

```swift
var body: some View {
    NavigationSplitView {
        List(colors, id: \.self, selection: $selection) { color in
            NavigationLink(color.description, value: color)
        }
    } detail: {
        if let color = selection {
            ColorDetail(color: color)
        } else {
            Text("Pick a color")
        }
    }
}
```

The list coordinates with the navigation logic so that changing the selection state variable in another part of your code activates the navigation link with the corresponding color. Similarly, if someone chooses the navigation link associated with a particular color, the list updates the selection value that other parts of your code can read.

### Provide backward compatibility with an availability check

If your app needs to run on platform versions earlier than iOS 16, iPadOS 16, macOS 13, tvOS 16, watchOS 9, or visionOS 1, you can start migration while continuing to support older clients by using an [#Availability](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/statements/#Availability-Condition). For example, you can create a custom wrapper view that conditionally uses either [Navigation Split View](/documentation/swiftui/navigationsplitview) or [Navigation View](/documentation/swiftui/navigationview):

```swift
struct NavigationSplitViewWrapper<Sidebar, Content, Detail>: View
    where Sidebar: View, Content: View, Detail: View
{
    private var sidebar: Sidebar
    private var content: Content
    private var detail: Detail
    
    init(
        @ViewBuilder sidebar: () -> Sidebar,
        @ViewBuilder content: () -> Content,
        @ViewBuilder detail:  () -> Detail
    ) {
        self.sidebar = sidebar()
        self.content = content()
        self.detail = detail()
    }
    
    var body: some View {
        if #available(iOS 16, macOS 13, tvOS 16, watchOS 9, visionOS 1, *) {
            // Use the latest API.
            NavigationSplitView {
                sidebar
            } content: {
                content
            } detail: {
                detail
            }
        } else {
            // Support previous platform versions.
            NavigationView {
                sidebar
                content
                detail
            }
            .navigationViewStyle(.columns)
        }
    }
}
```

Customize the wrapper to meet your app’s needs. For example, you can add a navigation split view style modifier like [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:)) to the [Navigation Split View](/documentation/swiftui/navigationsplitview) in the appropriate branch of the availability check.

## Presenting views in columns

- [Bringing robust navigation structure to your SwiftUI app](/documentation/swiftui/bringing-robust-navigation-structure-to-your-swiftui-app)
- [NavigationSplitView](/documentation/swiftui/navigationsplitview)
- [navigationSplitViewStyle(_:)](/documentation/swiftui/view/navigationsplitviewstyle(_:))
- [navigationSplitViewColumnWidth(_:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:))
- [navigationSplitViewColumnWidth(min:ideal:max:)](/documentation/swiftui/view/navigationsplitviewcolumnwidth(min:ideal:max:))
- [NavigationSplitViewVisibility](/documentation/swiftui/navigationsplitviewvisibility)
- [NavigationLink](/documentation/swiftui/navigationlink)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
