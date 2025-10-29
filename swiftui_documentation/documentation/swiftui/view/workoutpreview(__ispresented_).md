---
title: workoutPreview(_:isPresented:)
description: Presents a preview of the workout contents as a modal sheet
source: https://developer.apple.com/documentation/swiftui/view/workoutpreview(_:ispresented:)
timestamp: 2025-10-29T00:11:44.533Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# workoutPreview(_:isPresented:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 18.0+, macOS 15.0+, watchOS 11.0+

> Presents a preview of the workout contents as a modal sheet

```swift
nonisolated func workoutPreview(_ workout: WorkoutPlan, isPresented: Binding<Bool>) -> some View
```

## Parameters

**workout**

The `WorkoutContainer` the preview displays



**isPresented**

A binding to a Boolean value that determines whether to present the preview



## Discussion

```swift
struct WorkoutPreviewer: View {
    let workout: WorkoutPlan
    @State var presented: Bool = false
    var body: some View {
        Button {
            isPresented = true
        } label: {
            WorkoutContainerView(workout)
        }
        .workoutPreview(workout, isPresented: $presented)
    }
}
```

## Accessing health data

- [healthDataAccessRequest(store:objectType:predicate:trigger:completion:)](/documentation/swiftui/view/healthdataaccessrequest(store:objecttype:predicate:trigger:completion:))
- [healthDataAccessRequest(store:readTypes:trigger:completion:)](/documentation/swiftui/view/healthdataaccessrequest(store:readtypes:trigger:completion:))
- [healthDataAccessRequest(store:shareTypes:readTypes:trigger:completion:)](/documentation/swiftui/view/healthdataaccessrequest(store:sharetypes:readtypes:trigger:completion:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
