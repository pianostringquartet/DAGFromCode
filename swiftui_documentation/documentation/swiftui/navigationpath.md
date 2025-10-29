---
title: NavigationPath
description: A type-erased list of data representing the content of a navigation stack.
source: https://developer.apple.com/documentation/swiftui/navigationpath
timestamp: 2025-10-29T00:13:17.856Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**Structure**

# NavigationPath

**Available on:** iOS 16.0+, iPadOS 16.0+, Mac Catalyst 16.0+, macOS 13.0+, tvOS 16.0+, visionOS 1.0+, watchOS 9.0+

> A type-erased list of data representing the content of a navigation stack.

```swift
struct NavigationPath
```

## Overview

You can manage the state of a [Navigation Stack](/documentation/swiftui/navigationstack) by initializing the stack with a binding to a collection of data. The stack stores data items in the collection for each view on the stack. You also can read and write the collection to observe and alter the stack’s state.

When a stack displays views that rely on only one kind of data, you can use a standard collection, like an array, to hold the data. If you need to present different kinds of data in a single stack, use a navigation path instead. The path uses type erasure so you can manage a collection of heterogeneous elements. The path also provides the usual collection controls for adding, counting, and removing data elements.

### Serialize the path

When the values you present on the navigation stack conform to the [Codable](/documentation/Swift/Codable) protocol, you can use the path’s [codable](/documentation/swiftui/navigationpath/codable) property to get a serializable representation of the path. Use that representation to save and restore the contents of the stack. For example, you can define an [Observable Object](/documentation/Combine/ObservableObject) that handles serializing and deserializing the path:

```swift
class MyModelObject: ObservableObject {
    @Published var path: NavigationPath

    static func readSerializedData() -> Data? {
        // Read data representing the path from app's persistent storage.
    }

    static func writeSerializedData(_ data: Data) {
        // Write data representing the path to app's persistent storage.
    }

    init() {
        if let data = Self.readSerializedData() {
            do {
                let representation = try JSONDecoder().decode(
                    NavigationPath.CodableRepresentation.self,
                    from: data)
                self.path = NavigationPath(representation)
            } catch {
                self.path = NavigationPath()
            }
        } else {
            self.path = NavigationPath()
        }
    }

    func save() {
        guard let representation = path.codable else { return }
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(representation)
            Self.writeSerializedData(data)
        } catch {
            // Handle error.
        }
    }
}
```

Then, using that object in your view, you can save the state of the navigation path when the [Scene](/documentation/swiftui/scene) enters the [background](/documentation/swiftui/scenephase/background) state:

```swift
@StateObject private var pathState = MyModelObject()
@Environment(\.scenePhase) private var scenePhase

var body: some View {
    NavigationStack(path: $pathState.path) {
        // Add a root view here.
    }
    .onChange(of: scenePhase) { phase in
        if phase == .background {
            pathState.save()
        }
    }
}
```

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)

## Creating a navigation path

- [init()](/documentation/swiftui/navigationpath/init()) Creates a new, empty navigation path.
- [init(_:)](/documentation/swiftui/navigationpath/init(_:)) Creates a new navigation path from a serializable version.

## Managing path contents

- [isEmpty](/documentation/swiftui/navigationpath/isempty) A Boolean that indicates whether this path is empty.
- [count](/documentation/swiftui/navigationpath/count) The number of elements in this path.
- [append(_:)](/documentation/swiftui/navigationpath/append(_:)) Appends a new codable value to the end of this path.
- [removeLast(_:)](/documentation/swiftui/navigationpath/removelast(_:)) Removes values from the end of this path.

## Encoding a path

- [codable](/documentation/swiftui/navigationpath/codable) A value that describes the contents of this path in a serializable format.
- [NavigationPath.CodableRepresentation](/documentation/swiftui/navigationpath/codablerepresentation) A serializable representation of a navigation path.

## Stacking views in one column

- [NavigationStack](/documentation/swiftui/navigationstack)
- [navigationDestination(for:destination:)](/documentation/swiftui/view/navigationdestination(for:destination:))
- [navigationDestination(isPresented:destination:)](/documentation/swiftui/view/navigationdestination(ispresented:destination:))
- [navigationDestination(item:destination:)](/documentation/swiftui/view/navigationdestination(item:destination:))

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
