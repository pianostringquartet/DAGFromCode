---
title: healthDataAccessRequest(store:readTypes:trigger:completion:)
description: Requests permission to read the specified HealthKit data types.
source: https://developer.apple.com/documentation/swiftui/view/healthdataaccessrequest(store:readtypes:trigger:completion:)
timestamp: 2025-10-29T00:11:17.035Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [view](/documentation/swiftui/view)

**Instance Method**

# healthDataAccessRequest(store:readTypes:trigger:completion:)

**Available on:** iOS 17.0+, iPadOS 17.0+, Mac Catalyst 17.0+, macOS 14.0+, visionOS 1.0+, watchOS 10.2+

> Requests permission to read the specified HealthKit data types.

```swift
@preconcurrency nonisolated func healthDataAccessRequest(store: HKHealthStore, readTypes: Set<HKObjectType>, trigger: some Equatable, completion: @escaping (Result<Bool, any Error>) -> Void) -> some View
```

## Parameters

**store**

The HealthKit store where you’re requesting authorization.



**readTypes**

An optional set containing the data types you want to read. This set can contain any concrete subclass of the [HKObject Type](/documentation/HealthKit/HKObjectType) class (any of the [HKCharacteristic Type](/documentation/HealthKit/HKCharacteristicType), [HKQuantity Type](/documentation/HealthKit/HKQuantityType), [HKCategory Type](/documentation/HealthKit/HKCategoryType), [HKWorkout Type](/documentation/HealthKit/HKWorkoutType), or [HKCorrelation Type](/documentation/HealthKit/HKCorrelationType) classes ). If the user grants permission, your app can read these data types from the HealthKit store.



**trigger**

A value used to trigger the request. This value must be a [State](/documentation/SwiftUI/State) variable. Any change to the variable triggers a request.



**completion**

A block that the system calls after the request is complete. The system passes the result parameter.



## Discussion

HealthKit performs this request asynchronously when you modify the trigger’s value. If you call this method with a new data type (a type of data that the user hasn’t previously granted or denied permission for in this app), the system automatically displays the authorization sheet when you modify the trigger’s value. The authorization sheet lists all the requested permissions. After the user finishes responding, HealthKit calls the completion block on a background queue. If the user has already chosen to grant or prohibit access to all of the types specified, HealthKit calls the completion when you modify the trigger without prompting the user.

Customize the messages displayed on the permissions sheet by setting the following key:

- [NSHealth Share Usage Description](/documentation/BundleResources/Information-Property-List/NSHealthShareUsageDescription) customizes the message for reading data.

> [!WARNING]
> You must set the usage key, or your app crashes when you request authorization.

Set the key in the Target Properties list on the app’s Info tab.

After users set the permissions for your app, they can always change them using either the Settings or the Health app. Your app appears in the Health app’s Sources tab, even if the user didn’t allow permission to read data.

## Accessing health data

- [healthDataAccessRequest(store:objectType:predicate:trigger:completion:)](/documentation/swiftui/view/healthdataaccessrequest(store:objecttype:predicate:trigger:completion:))
- [healthDataAccessRequest(store:shareTypes:readTypes:trigger:completion:)](/documentation/swiftui/view/healthdataaccessrequest(store:sharetypes:readtypes:trigger:completion:))
- [workoutPreview(_:isPresented:)](/documentation/swiftui/view/workoutpreview(_:ispresented:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
