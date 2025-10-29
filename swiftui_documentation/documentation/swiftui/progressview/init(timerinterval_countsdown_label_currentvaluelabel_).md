---
title: init(timerInterval:countsDown:label:currentValueLabel:)
description: Creates a progress view for showing continuous progress as time passes, with descriptive and current progress labels.
source: https://developer.apple.com/documentation/swiftui/progressview/init(timerinterval:countsdown:label:currentvaluelabel:)
timestamp: 2025-10-29T00:10:49.618Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [progressview](/documentation/swiftui/progressview)

**Initializer**

# init(timerInterval:countsDown:label:currentValueLabel:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Creates a progress view for showing continuous progress as time passes, with descriptive and current progress labels.

```swift
nonisolated init(timerInterval: ClosedRange<Date>, countsDown: Bool = true, @ViewBuilder label: () -> Label, @ViewBuilder currentValueLabel: () -> CurrentValueLabel)
```

## Parameters

**timerInterval**

The date range over which the view should progress.



**countsDown**

A Boolean value that determines whether the view empties or fills as time passes. If `true` (the default), the view empties.



**label**

An optional view that describes the purpose of the progress view.



**currentValueLabel**

A view that displays the current value of the timer.



## Discussion

Use this initializer to create a view that shows continuous progress within a date range. The following example initializes a progress view with a range of `start...end`, where `start` is 30 seconds in the past and `end` is 90 seconds in the future. As a result, the progress view begins at 25 percent complete. This example also provides custom views for a descriptive label (Progress) and a current value label that shows the date range.

```swift
struct ContentView: View {
    let start = Date().addingTimeInterval(-30)
    let end = Date().addingTimeInterval(90)

    var body: some View {
        ProgressView(interval: start...end,
                     countsDown: false) {
            Text("Progress")
        } currentValueLabel: {
            Text(start...end)
         }
     }
}
```



By default, the progress view empties as time passes from the start of the date range to the end, but you can use the `countsDown` parameter to create a progress view that fills as time passes, as the above example demonstrates.

> [!NOTE]
> Date-relative progress views, such as those created with this initializer, don’t support custom styles.

## Create a progress view spanning a date range

- [init(timerInterval:countsDown:)](/documentation/swiftui/progressview/init(timerinterval:countsdown:))
- [init(timerInterval:countsDown:label:)](/documentation/swiftui/progressview/init(timerinterval:countsdown:label:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
