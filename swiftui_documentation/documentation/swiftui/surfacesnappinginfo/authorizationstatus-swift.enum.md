---
title: SurfaceSnappingInfo.AuthorizationStatus
description: A type representing whether the user has granted permissions to provide more detailed information about the surface a scene is snapped to.
source: https://developer.apple.com/documentation/swiftui/surfacesnappinginfo/authorizationstatus-swift.enum
timestamp: 2025-10-29T00:14:51.860Z
---

**Navigation:** [Swiftui](/documentation/swiftui) › [surfacesnappinginfo](/documentation/swiftui/surfacesnappinginfo)

**Enumeration**

# SurfaceSnappingInfo.AuthorizationStatus

**Available on:** visionOS 26.0+

> A type representing whether the user has granted permissions to provide more detailed information about the surface a scene is snapped to.

```swift
enum AuthorizationStatus
```

## Overview

To provide `ARKit/SurfaceClassification` data, the user must allow the app to access information about their surroundings. To request this data, set `UIWantsDetailedSurfaceInfo` to `YES` and set `NSWorldSensingUsageDescription` to provide a description of why your app is requesting this information. These values are set in your app’s `Info.plist` file.

## Conforms To

- [Copyable](/documentation/Swift/Copyable)
- [Equatable](/documentation/Swift/Equatable)
- [Hashable](/documentation/Swift/Hashable)
- [Sendable](/documentation/Swift/Sendable)
- [SendableMetatype](/documentation/Swift/SendableMetatype)

## Enumeration Cases

- [SurfaceSnappingInfo.AuthorizationStatus.authorized](/documentation/swiftui/surfacesnappinginfo/authorizationstatus-swift.enum/authorized) The user has authorized sharing information about their surroundings.
- [SurfaceSnappingInfo.AuthorizationStatus.denied](/documentation/swiftui/surfacesnappinginfo/authorizationstatus-swift.enum/denied) The user denied providing access to information about their surroundings.
- [SurfaceSnappingInfo.AuthorizationStatus.notDetermined](/documentation/swiftui/surfacesnappinginfo/authorizationstatus-swift.enum/notdetermined) The user has not yet authorized or denied providing information about their surroundings. Set  to  in your  to request information about the user’s surroundings when they first snap a scene from your app.
- [SurfaceSnappingInfo.AuthorizationStatus.restricted](/documentation/swiftui/surfacesnappinginfo/authorizationstatus-swift.enum/restricted) The user is unable to grant authorization to share detailed information about their surroundings.

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
