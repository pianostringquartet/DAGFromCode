---
title: Creating performant scrollable stacks
description: Display large numbers of repeated views efficiently with scroll views, stack views, and lazy stacks.
source: https://developer.apple.com/documentation/swiftui/creating-performant-scrollable-stacks
timestamp: 2025-10-29T00:10:53.955Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Article**

# Creating performant scrollable stacks

> Display large numbers of repeated views efficiently with scroll views, stack views, and lazy stacks.

## Overview

Your apps often need to display more data within a container view than there is space for on a device’s screen. Horizontal and vertical stacks are a good solution for repeating views or groups of views, but they don’t have a built-in mechanism for scrolling. You can add scrolling by wrapping stacks inside a [Scroll View](/documentation/swiftui/scrollview), and switch to lazy stacks as performance issues arise.

### Display groups of views in a scrollable container

Implementing repeating views or groups of views can be as simple as wrapping them in an [HStack](/documentation/swiftui/hstack) or [VStack](/documentation/swiftui/vstack) inside a [Scroll View](/documentation/swiftui/scrollview).

```swift
ScrollView(.horizontal) {
    HStack {
        ProfileView()
        ProfileView()
        ProfileView()
        ProfileView()
        ProfileView()
    }
}
.frame(maxWidth: 500)
```

If the `ProfileView` in the example code above has an intrinsic content size of 200 x 200 points, the maximum width of 500 points that the [frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)](/documentation/swiftui/view/frame(minwidth:idealwidth:maxwidth:minheight:idealheight:maxheight:alignment:)) view modifier applies to the [Scroll View](/documentation/swiftui/scrollview) causes the stack to scroll inside it.



For an introduction to using stacks to group views together, see [Building-Layouts-with-Stack](/documentation/swiftui/building-layouts-with-stack-views).

### Repeat views for your data

Use [For Each](/documentation/swiftui/foreach) to repeat views for the data in your app. From a list of profile data in a `profiles` array, use [For Each](/documentation/swiftui/foreach) to create one `ProfileView` per element in the array inside an [HStack](/documentation/swiftui/hstack).

```swift
ScrollView(.horizontal) {
    HStack {
        ForEach(profiles) { profile in
            ProfileView(profile: profile)
        }
    }
}
.frame(maxWidth: 500)
```

> [!NOTE]
> When you use [For Each](/documentation/swiftui/foreach), each element you iterate over must be uniquely identifiable. Either conform elements to the [Identifiable](/documentation/Swift/Identifiable) protocol, or pass a key path to a unique identifier as the `id` parameter of [init(_:id:content:)](/documentation/swiftui/foreach/init(_:id:content:)).

### Consider lazy stacks for large numbers of views

The three standard stack views, [HStack](/documentation/swiftui/hstack), [VStack](/documentation/swiftui/vstack), and [ZStack](/documentation/swiftui/zstack), all load their contained view hierarchy when they display, and loading large numbers of views all at once can result in slow runtime performance.

In the above example, `ProfileView` is a compound view that consists of nested stack views, text labels, and an image view. Loading a large number of profiles all at once causes a noticeable slowdown.

As the number of views inside a stack grows, consider using a [Lazy HStack](/documentation/swiftui/lazyhstack) and [Lazy VStack](/documentation/swiftui/lazyvstack) instead of [HStack](/documentation/swiftui/hstack) and [VStack](/documentation/swiftui/vstack). Lazy stacks load and render their subviews on-demand, providing significant performance gains when loading large numbers of subviews.



Stack views and lazy stacks have similar functionality, and they may feel interchangeable, but they each have strengths in different situations. Stack views load their child views all at once, making layout fast and reliable, because the system knows the size and shape of every subview as it loads them. Lazy stacks trade some degree of layout correctness for performance, because the system only calculates the geometry for subviews as they become visible.

When choosing the type of stack view to use, always start with a standard stack view and only switch to a lazy stack if profiling your code shows a worthwhile performance improvement.

### Profile to find performance problems

When considering which type of stack to use, use the Instruments tool to profile your application to identify the areas of your user interface code where large numbers of views are loading inside a stack.

To profile SwiftUI view loading, open the Instruments tool by selecting Profile from the Xcode Product menu and choosing the SwiftUI profiling template. This template loads four instruments: View Body, View Properties, Core Animation Commits, and Time Profiler. The combination of these instruments provides a good starting point to find opportunities to speed up your app.

> [!NOTE]
> Never profile your code using the iOS simulator. Always use real devices for performance testing.



When profiling the above code, the View Body instrument shows that 1,000 `ProfileView` instances load into memory at the same time as the [HStack](/documentation/swiftui/hstack). You can also see the same number of [Image](/documentation/swiftui/image) views load as the system loads each profile.

In this case, the solution is to replace the [HStack](/documentation/swiftui/hstack) with a [Lazy HStack](/documentation/swiftui/lazyhstack) as the following code shows:

```swift
ScrollView(.horizontal) {
    LazyHStack {
        ForEach(profiles) { profile in
            ProfileView(profile: profile)
        }
    }
}
.frame(maxWidth: 500)
```

Running another trace shows a drastic reduction in the number of initially loaded views as only four `ProfileView` instances start as visible. You can also see a corresponding decrease in the Total Duration column.



For more information about using the Instruments tool, see doc://com.apple.documentation/documentation/metrickit/improving_your_app_s_performance.

## Dynamically arranging views in one dimension

- [Grouping data with lazy stack views](/documentation/swiftui/grouping-data-with-lazy-stack-views)
- [LazyHStack](/documentation/swiftui/lazyhstack)
- [LazyVStack](/documentation/swiftui/lazyvstack)
- [PinnedScrollableViews](/documentation/swiftui/pinnedscrollableviews)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
