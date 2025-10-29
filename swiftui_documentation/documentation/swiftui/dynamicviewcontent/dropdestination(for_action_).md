---
title: dropDestination(for:action:)
description: Sets the insert action for the dynamic view.
source: https://developer.apple.com/documentation/swiftui/dynamicviewcontent/dropdestination(for:action:)
timestamp: 2025-10-29T00:15:32.186Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [dynamicviewcontent](/documentation/swiftui/dynamicviewcontent)

**Instance Method**

# dropDestination(for:action:)

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> Sets the insert action for the dynamic view.

```swift
nonisolated func dropDestination<T>(for payloadType: T.Type = T.self, action: @escaping ([T], Int) -> Void) -> some DynamicViewContent where T : Transferable
```

## Parameters

**payloadType**

Type of the models that are dropped.



**action**

A closure that SwiftUI invokes when elements are added to the view. The closure takes two arguments: The first argument is the offset relative to the dynamic view’s underlying collection of data. The second argument is an array of `Transferable` items that represents the data that you want to insert.



## Return Value

A view that calls `action` when elements are inserted into the original view.

## Discussion

```swift
struct Profile: Identifiable {
    let givenName: String
    let familyName: String
    let id = UUID()
}

@State private var profiles: [Profile] = [
    Person(givenName: "Juan", familyName: "Chavez"),
    Person(givenName: "Mei", familyName: "Chen"),
    Person(givenName: "Tom", familyName: "Clark"),
    Person(givenName: "Gita", familyName: "Kumar")
]

var body: some View {
    List {
        ForEach(profiles) { profile in
            Text(profile.givenName)
        }
        .dropDestination(for: Profile.self) { receivedProfiles, offset in
            profiles.insert(contentsOf: receivedProfiles, at: offset)
        }
    }
}
```

## Responding to updates

- [onDelete(perform:)](/documentation/swiftui/dynamicviewcontent/ondelete(perform:))
- [onInsert(of:perform:)](/documentation/swiftui/dynamicviewcontent/oninsert(of:perform:)-418bq)
- [onMove(perform:)](/documentation/swiftui/dynamicviewcontent/onmove(perform:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
