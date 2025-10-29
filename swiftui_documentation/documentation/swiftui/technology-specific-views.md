---
title: Technology-specific views
description: Use SwiftUI views that other Apple frameworks provide.
source: https://developer.apple.com/documentation/swiftui/technology-specific-views
timestamp: 2025-10-29T00:13:33.521Z
---

**Navigation:** [Swiftui](/documentation/swiftui)

**API Collection**

# Technology-specific views

> Use SwiftUI views that other Apple frameworks provide.

## Overview

To access SwiftUI views that another framework defines, import both SwiftUI and the other framework into the file where you use the view. You can find the framework to import by looking at the availability information on the view’s documentation page.



For example, to use the [Map](/documentation/MapKit/Map) view in your app, import both SwiftUI and MapKit.

```swift
import SwiftUI
import MapKit

struct MyMapView: View {
    // Center the map on Joshua Tree National Park.
    var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )

    var body: some View {
        Map(initialPosition: .region(region))
    }
}
```

For design guidance, see [technologies](/design/Human-Interface-Guidelines/technologies) in the Human Interface Guidelines.

## Displaying web content

- [WebView](/documentation/WebKit/WebView-swift.struct) A view that displays some web content.
- [WebPage](/documentation/WebKit/WebPage) An object that controls and manages the behavior of interactive web content.
- [webViewBackForwardNavigationGestures(_:)](/documentation/swiftui/view/webviewbackforwardnavigationgestures(_:)) Determines whether horizontal swipe gestures trigger backward and forward page navigation.
- [webViewContentBackground(_:)](/documentation/swiftui/view/webviewcontentbackground(_:)) Specifies the visibility of the webpage’s natural background color within this view.
- [webViewContextMenu(menu:)](/documentation/swiftui/view/webviewcontextmenu(menu:)) Adds an item-based context menu to a WebView, replacing the default set of context menu items.
- [webViewElementFullscreenBehavior(_:)](/documentation/swiftui/view/webviewelementfullscreenbehavior(_:)) Determines whether a web view can display content full screen.
- [webViewLinkPreviews(_:)](/documentation/swiftui/view/webviewlinkpreviews(_:)) Determines whether pressing a link displays a preview of the destination for the link.
- [webViewMagnificationGestures(_:)](/documentation/swiftui/view/webviewmagnificationgestures(_:)) Determines whether magnify gestures change the view’s magnification.
- [webViewOnScrollGeometryChange(for:of:action:)](/documentation/swiftui/view/webviewonscrollgeometrychange(for:of:action:)) Adds an action to be performed when a value, created from a scroll geometry, changes.
- [webViewScrollInputBehavior(_:for:)](/documentation/swiftui/view/webviewscrollinputbehavior(_:for:)) Enables or disables scrolling in web views when using particular inputs.
- [webViewScrollPosition(_:)](/documentation/swiftui/view/webviewscrollposition(_:)) Associates a binding to a scroll position with the web view.
- [webViewTextSelection(_:)](/documentation/swiftui/view/webviewtextselection(_:)) Determines whether to allow people to select or otherwise interact with text.

## Accessing Apple Pay and Wallet

- [PayWithApplePayButton](/documentation/PassKit/PayWithApplePayButton) A type that provides a button to pay with Apple pay.
- [AddPassToWalletButton](/documentation/PassKit/AddPassToWalletButton) A type that provides a button that enables people to add a new or existing pass to Apple Wallet.
- [VerifyIdentityWithWalletButton](/documentation/PassKit/VerifyIdentityWithWalletButton) A type that displays a button to present the identity verification flow.
- [addOrderToWalletButtonStyle(_:)](/documentation/swiftui/view/addordertowalletbuttonstyle(_:)) Sets the button’s style.
- [addPassToWalletButtonStyle(_:)](/documentation/swiftui/view/addpasstowalletbuttonstyle(_:)) Sets the style to be used by the button. (see ).
- [onApplePayCouponCodeChange(perform:)](/documentation/swiftui/view/onapplepaycouponcodechange(perform:)) Called when a user has entered or updated a coupon code. This is required if the user is being asked to provide a coupon code.
- [onApplePayPaymentMethodChange(perform:)](/documentation/swiftui/view/onapplepaypaymentmethodchange(perform:)) Called when a payment method has changed and asks for an update payment request. If this modifier isn’t provided Wallet will assume the payment method is valid.
- [onApplePayShippingContactChange(perform:)](/documentation/swiftui/view/onapplepayshippingcontactchange(perform:)) Called when a user selected a shipping address. This is required if the user is being asked to provide a shipping contact.
- [onApplePayShippingMethodChange(perform:)](/documentation/swiftui/view/onapplepayshippingmethodchange(perform:)) Called when a user selected a shipping method. This is required if the user is being asked to provide a shipping method.
- [payLaterViewAction(_:)](/documentation/swiftui/view/paylaterviewaction(_:)) Sets the action on the PayLaterView. See .
- [payLaterViewDisplayStyle(_:)](/documentation/swiftui/view/paylaterviewdisplaystyle(_:)) Sets the display style on the PayLaterView. See .
- [payWithApplePayButtonStyle(_:)](/documentation/swiftui/view/paywithapplepaybuttonstyle(_:)) Sets the style to be used by the button. (see ).
- [verifyIdentityWithWalletButtonStyle(_:)](/documentation/swiftui/view/verifyidentitywithwalletbuttonstyle(_:)) Sets the style to be used by the button. (see ).
- [AsyncShareablePassConfiguration](/documentation/PassKit/AsyncShareablePassConfiguration)
- [transactionTask(_:action:)](/documentation/swiftui/view/transactiontask(_:action:)) Provides a task to perform before this view appears

## Authorizing and authenticating

- [LocalAuthenticationView](/documentation/LocalAuthentication/LocalAuthenticationView) A SwiftUI view that displays an authentication interface.
- [SignInWithAppleButton](/documentation/AuthenticationServices/SignInWithAppleButton) A SwiftUI view that creates the Sign in with Apple button for display.
- [signInWithAppleButtonStyle(_:)](/documentation/swiftui/view/signinwithapplebuttonstyle(_:)) Sets the style used for displaying the control (see ).
- [authorizationController](/documentation/swiftui/environmentvalues/authorizationcontroller) A value provided in the SwiftUI environment that views can use to perform authorization requests.
- [webAuthenticationSession](/documentation/swiftui/environmentvalues/webauthenticationsession) A value provided in the SwiftUI environment that views can use to authenticate a user through a web service.

## Configuring Family Sharing

- [FamilyActivityPicker](/documentation/FamilyControls/FamilyActivityPicker) A view in which users specify applications, web domains, and categories without revealing their choices to the app.
- [familyActivityPicker(isPresented:selection:)](/documentation/swiftui/view/familyactivitypicker(ispresented:selection:)) Presents an activity picker view as a sheet.
- [familyActivityPicker(headerText:footerText:isPresented:selection:)](/documentation/swiftui/view/familyactivitypicker(headertext:footertext:ispresented:selection:)) Presents an activity picker view as a sheet.

## Reporting on device activity

- [DeviceActivityReport](/documentation/DeviceActivity/DeviceActivityReport) A view that reports the user’s application, category, and web domain activity in a privacy-preserving way.

## Working with managed devices

- [managedContentStyle(_:)](/documentation/swiftui/view/managedcontentstyle(_:)) Applies a managed content style to the view.
- [automatedDeviceEnrollmentAddition(isPresented:)](/documentation/swiftui/view/automateddeviceenrollmentaddition(ispresented:)) Presents a modal view that enables users to add devices to their organization.

## Creating graphics

- [Chart](/documentation/Charts/Chart) A SwiftUI view that displays a chart.
- [SceneView](/documentation/SceneKit/SceneView) A SwiftUI view for displaying 3D SceneKit content.
- [SpriteView](/documentation/SpriteKit/SpriteView) A SwiftUI view that renders a SpriteKit scene.

## Getting location information

- [LocationButton](/documentation/CoreLocationUI/LocationButton) A SwiftUI button that grants one-time location authorization.
- [Map](/documentation/MapKit/Map) A view that displays an embedded map interface.
- [mapStyle(_:)](/documentation/swiftui/view/mapstyle(_:)) Specifies the map style to be used.
- [mapScope(_:)](/documentation/swiftui/view/mapscope(_:)) Creates a mapScope that SwiftUI uses to connect map controls to an associated map.
- [mapFeatureSelectionDisabled(_:)](/documentation/swiftui/view/mapfeatureselectiondisabled(_:)) Specifies which map features should have selection disabled.
- [mapFeatureSelectionAccessory(_:)](/documentation/swiftui/view/mapfeatureselectionaccessory(_:)) Specifies the selection accessory to display for a 
- [mapFeatureSelectionContent(content:)](/documentation/swiftui/view/mapfeatureselectioncontent(content:)) Specifies a custom presentation for the currently selected feature.
- [mapControls(_:)](/documentation/swiftui/view/mapcontrols(_:)) Configures all  views in the associated environment to have standard size and position controls
- [mapControlVisibility(_:)](/documentation/swiftui/view/mapcontrolvisibility(_:)) Configures all Map controls in the environment to have the specified visibility
- [mapCameraKeyframeAnimator(trigger:keyframes:)](/documentation/swiftui/view/mapcamerakeyframeanimator(trigger:keyframes:)) Uses the given keyframes to animate the camera of a  when the given trigger value changes.
- [lookAroundViewer(isPresented:scene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)](/documentation/swiftui/view/lookaroundviewer(ispresented:scene:allowsnavigation:showsroadlabels:pointsofinterest:ondismiss:))
- [lookAroundViewer(isPresented:initialScene:allowsNavigation:showsRoadLabels:pointsOfInterest:onDismiss:)](/documentation/swiftui/view/lookaroundviewer(ispresented:initialscene:allowsnavigation:showsroadlabels:pointsofinterest:ondismiss:))
- [onMapCameraChange(frequency:_:)](/documentation/swiftui/view/onmapcamerachange(frequency:_:)) Performs an action when Map camera framing changes
- [mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:)) Presents a map item detail popover.
- [mapItemDetailPopover(isPresented:item:displaysMap:attachmentAnchor:arrowEdge:)](/documentation/swiftui/view/mapitemdetailpopover(ispresented:item:displaysmap:attachmentanchor:arrowedge:)) Presents a map item detail popover.
- [mapItemDetailPopover(item:displaysMap:attachmentAnchor:)](/documentation/swiftui/view/mapitemdetailpopover(item:displaysmap:attachmentanchor:)) Presents a map item detail popover.
- [mapItemDetailPopover(item:displaysMap:attachmentAnchor:arrowEdge:)](/documentation/swiftui/view/mapitemdetailpopover(item:displaysmap:attachmentanchor:arrowedge:)) Presents a map item detail popover.
- [mapItemDetailSheet(isPresented:item:displaysMap:)](/documentation/swiftui/view/mapitemdetailsheet(ispresented:item:displaysmap:)) Presents a map item detail sheet.
- [mapItemDetailSheet(item:displaysMap:)](/documentation/swiftui/view/mapitemdetailsheet(item:displaysmap:)) Presents a map item detail sheet.

## Displaying media

- [CameraView](/documentation/HomeKit/CameraView) A SwiftUI view into which a video stream or an image snapshot is rendered.
- [NowPlayingView](/documentation/WatchKit/NowPlayingView) A view that displays the system’s Now Playing interface so that the user can control audio.
- [VideoPlayer](/documentation/AVKit/VideoPlayer) A view that displays content from a player and a native user interface to control playback.
- [continuityDevicePicker(isPresented:onDidConnect:)](/documentation/swiftui/view/continuitydevicepicker(ispresented:ondidconnect:)) A  should be used to discover and connect nearby continuity device through a button interface or other form of activation. On tvOS, this presents a fullscreen continuity device picker experience when selected. The modal view covers as much the screen of  as possible when a given condition is true.
- [cameraAnchor(isActive:)](/documentation/swiftui/view/cameraanchor(isactive:)) Specifies the view that should act as the virtual camera for Apple Vision Pro 2D Persona stream.

## Selecting photos

- [PhotosPicker](/documentation/PhotosUI/PhotosPicker) A view that displays a Photos picker for choosing assets from the photo library.
- [photosPicker(isPresented:selection:matching:preferredItemEncoding:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:)) Presents a Photos picker that selects a .
- [photosPicker(isPresented:selection:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:matching:preferreditemencoding:photolibrary:)) Presents a Photos picker that selects a  from a given photo library.
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:)) Presents a Photos picker that selects a collection of .
- [photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)](/documentation/swiftui/view/photospicker(ispresented:selection:maxselectioncount:selectionbehavior:matching:preferreditemencoding:photolibrary:)) Presents a Photos picker that selects a collection of  from a given photo library.
- [photosPickerAccessoryVisibility(_:edges:)](/documentation/swiftui/view/photospickeraccessoryvisibility(_:edges:)) Sets the accessory visibility of the Photos picker. Accessories include anything between the content and the edge, like the navigation bar or the sidebar.
- [photosPickerDisabledCapabilities(_:)](/documentation/swiftui/view/photospickerdisabledcapabilities(_:)) Disables capabilities of the Photos picker.
- [photosPickerStyle(_:)](/documentation/swiftui/view/photospickerstyle(_:)) Sets the mode of the Photos picker.

## Previewing content

- [quickLookPreview(_:)](/documentation/swiftui/view/quicklookpreview(_:)) Presents a Quick Look preview of the contents of a single URL.
- [quickLookPreview(_:in:)](/documentation/swiftui/view/quicklookpreview(_:in:)) Presents a Quick Look preview of the URLs you provide.

## Interacting with networked devices

- [DevicePicker](/documentation/DeviceDiscoveryUI/DevicePicker) A SwiftUI view that displays other devices on the network, and creates an encrypted connection to a copy of your app running on that device.
- [devicePickerSupports](/documentation/swiftui/environmentvalues/devicepickersupports) Checks for support to present a DevicePicker.

## Configuring a Live Activity

- [activitySystemActionForegroundColor(_:)](/documentation/swiftui/view/activitysystemactionforegroundcolor(_:)) The text color for the auxiliary action button that the system shows next to a Live Activity on the Lock Screen.
- [activityBackgroundTint(_:)](/documentation/swiftui/view/activitybackgroundtint(_:)) Sets the tint color for the background of a Live Activity that appears on the Lock Screen.
- [isActivityFullscreen](/documentation/swiftui/environmentvalues/isactivityfullscreen) A Boolean value that indicates whether the Live Activity appears in a full-screen presentation.
- [activityFamily](/documentation/swiftui/environmentvalues/activityfamily) The size family of the current Live Activity.

## Interacting with the App Store and Apple Music

- [appStoreOverlay(isPresented:configuration:)](/documentation/swiftui/view/appstoreoverlay(ispresented:configuration:)) Presents a StoreKit overlay when a given condition is true.
- [manageSubscriptionsSheet(isPresented:)](/documentation/swiftui/view/managesubscriptionssheet(ispresented:))
- [refundRequestSheet(for:isPresented:onDismiss:)](/documentation/swiftui/view/refundrequestsheet(for:ispresented:ondismiss:)) Display the refund request sheet for the given transaction.
- [offerCodeRedemption(isPresented:onCompletion:)](/documentation/swiftui/view/offercoderedemption(ispresented:oncompletion:)) Presents a sheet that enables users to redeem subscription offer codes that you configure in App Store Connect.
- [musicSubscriptionOffer(isPresented:options:onLoadCompletion:)](/documentation/swiftui/view/musicsubscriptionoffer(ispresented:options:onloadcompletion:)) Initiates the process of presenting a sheet with subscription offers for Apple Music when the  binding is .
- [currentEntitlementTask(for:priority:action:)](/documentation/swiftui/view/currententitlementtask(for:priority:action:)) Declares the view as dependent on the entitlement of an In-App Purchase product, and returns a modified view.
- [inAppPurchaseOptions(_:)](/documentation/swiftui/view/inapppurchaseoptions(_:)) Add a function to call before initiating a purchase from StoreKit view within this view, providing a set of options for the purchase.
- [manageSubscriptionsSheet(isPresented:subscriptionGroupID:)](/documentation/swiftui/view/managesubscriptionssheet(ispresented:subscriptiongroupid:))
- [onInAppPurchaseCompletion(perform:)](/documentation/swiftui/view/oninapppurchasecompletion(perform:)) Add an action to perform when a purchase initiated from a StoreKit view within this view completes.
- [onInAppPurchaseStart(perform:)](/documentation/swiftui/view/oninapppurchasestart(perform:)) Add an action to perform when a user triggers the purchase button on a StoreKit view within this view.
- [productIconBorder()](/documentation/swiftui/view/producticonborder()) Adds a standard border to an in-app purchase product’s icon .
- [productViewStyle(_:)](/documentation/swiftui/view/productviewstyle(_:)) Sets the style for In-App Purchase product views within a view.
- [productDescription(_:)](/documentation/swiftui/view/productdescription(_:)) Configure the visibility of labels displaying an in-app purchase product description within the view.
- [storeButton(_:for:)](/documentation/swiftui/view/storebutton(_:for:)) Specifies the visibility of auxiliary buttons that store view and subscription store view instances may use.
- [storeProductTask(for:priority:action:)](/documentation/swiftui/view/storeproducttask(for:priority:action:)) Declares the view as dependent on an In-App Purchase product and returns a modified view.
- [storeProductsTask(for:priority:action:)](/documentation/swiftui/view/storeproductstask(for:priority:action:)) Declares the view as dependent on a collection of In-App Purchase products and returns a modified view.
- [subscriptionStatusTask(for:priority:action:)](/documentation/swiftui/view/subscriptionstatustask(for:priority:action:)) Declares the view as dependent on the status of an auto-renewable subscription group, and returns a modified view.
- [subscriptionStoreButtonLabel(_:)](/documentation/swiftui/view/subscriptionstorebuttonlabel(_:)) Configures subscription store view instances within a view to use the provided button label.
- [subscriptionStoreControlIcon(icon:)](/documentation/swiftui/view/subscriptionstorecontrolicon(icon:)) Sets a view to use to decorate individual subscription options within a subscription store view.
- [subscriptionStoreControlStyle(_:)](/documentation/swiftui/view/subscriptionstorecontrolstyle(_:)) Sets the control style for subscription store views within a view.
- [subscriptionStoreControlStyle(_:placement:)](/documentation/swiftui/view/subscriptionstorecontrolstyle(_:placement:)) Sets the control style and control placement for subscription store views within a view.
- [subscriptionStoreOptionGroupStyle(_:)](/documentation/swiftui/view/subscriptionstoreoptiongroupstyle(_:)) Sets the style subscription store views within this view use to display groups of subscription options.
- [subscriptionStorePickerItemBackground(_:)](/documentation/swiftui/view/subscriptionstorepickeritembackground(_:)) Sets the background style for picker items of the subscription store view instances within a view.
- [subscriptionStorePickerItemBackground(_:in:)](/documentation/swiftui/view/subscriptionstorepickeritembackground(_:in:)) Sets the background shape and style for subscription store view picker items within a view.
- [subscriptionStorePolicyDestination(for:destination:)](/documentation/swiftui/view/subscriptionstorepolicydestination(for:destination:)) Configures a view as the destination for a policy button action in subscription store views.
- [subscriptionStorePolicyDestination(url:for:)](/documentation/swiftui/view/subscriptionstorepolicydestination(url:for:)) Configures a URL as the destination for a policy button action in subscription store views.
- [subscriptionStorePolicyForegroundStyle(_:)](/documentation/swiftui/view/subscriptionstorepolicyforegroundstyle(_:)) Sets the style for the terms of service and privacy policy buttons within a subscription store view.
- [subscriptionStorePolicyForegroundStyle(_:_:)](/documentation/swiftui/view/subscriptionstorepolicyforegroundstyle(_:_:)) Sets the primary and secondary style for the terms of service and privacy policy buttons within a subscription store view.
- [subscriptionStoreSignInAction(_:)](/documentation/swiftui/view/subscriptionstoresigninaction(_:)) Adds an action to perform when a person uses the sign-in button on a subscription store view within a view.
- [subscriptionStoreControlBackground(_:)](/documentation/swiftui/view/subscriptionstorecontrolbackground(_:)) Set a standard effect to use for the background of subscription store view controls within the view.
- [subscriptionPromotionalOffer(offer:signature:)](/documentation/swiftui/view/subscriptionpromotionaloffer(offer:signature:)) Selects a promotional offer to apply to a purchase a customer makes from a subscription store view.
- [preferredSubscriptionOffer(_:)](/documentation/swiftui/view/preferredsubscriptionoffer(_:)) Selects a subscription offer to apply to a purchase that a customer makes from a subscription store view, a store view, or a product view.

## Accessing health data

- [healthDataAccessRequest(store:objectType:predicate:trigger:completion:)](/documentation/swiftui/view/healthdataaccessrequest(store:objecttype:predicate:trigger:completion:)) Asynchronously requests permission to read a data type that requires per-object authorization (such as vision prescriptions).
- [healthDataAccessRequest(store:readTypes:trigger:completion:)](/documentation/swiftui/view/healthdataaccessrequest(store:readtypes:trigger:completion:)) Requests permission to read the specified HealthKit data types.
- [healthDataAccessRequest(store:shareTypes:readTypes:trigger:completion:)](/documentation/swiftui/view/healthdataaccessrequest(store:sharetypes:readtypes:trigger:completion:)) Requests permission to save and read the specified HealthKit data types.
- [workoutPreview(_:isPresented:)](/documentation/swiftui/view/workoutpreview(_:ispresented:)) Presents a preview of the workout contents as a modal sheet

## Providing tips

- [popoverTip(_:arrowEdge:action:)](/documentation/swiftui/view/popovertip(_:arrowedge:action:)) Presents a popover tip on the modified view.
- [tipBackground(_:)](/documentation/swiftui/view/tipbackground(_:)) Sets the tip’s view background to a style. Currently this only applies to inline tips, not popover tips.
- [tipCornerRadius(_:antialiased:)](/documentation/swiftui/view/tipcornerradius(_:antialiased:)) Sets the corner radius for an inline tip view.
- [tipImageSize(_:)](/documentation/swiftui/view/tipimagesize(_:)) Sets the size for a tip’s image.
- [tipViewStyle(_:)](/documentation/swiftui/view/tipviewstyle(_:)) Sets the given style for TipView within the view hierarchy.
- [tipImageStyle(_:)](/documentation/swiftui/view/tipimagestyle(_:)) Sets the style for a tip’s image.
- [tipImageStyle(_:_:)](/documentation/swiftui/view/tipimagestyle(_:_:)) Sets the style for a tip’s image.
- [tipImageStyle(_:_:_:)](/documentation/swiftui/view/tipimagestyle(_:_:_:)) Sets the style for a tip’s image.

## Showing a translation

- [translationPresentation(isPresented:text:attachmentAnchor:arrowEdge:replacementAction:)](/documentation/swiftui/view/translationpresentation(ispresented:text:attachmentanchor:arrowedge:replacementaction:)) Presents a translation popover when a given condition is true.
- [translationTask(_:action:)](/documentation/swiftui/view/translationtask(_:action:)) Adds a task to perform before this view appears or when the translation configuration changes.
- [translationTask(source:target:action:)](/documentation/swiftui/view/translationtask(source:target:action:)) Adds a task to perform before this view appears or when the specified source or target languages change.

## Presenting journaling suggestions

- [journalingSuggestionsPicker(isPresented:onCompletion:)](/documentation/swiftui/view/journalingsuggestionspicker(ispresented:oncompletion:)) Presents a visual picker interface that contains events and images that a person can select to retrieve more information.

## Managing contact access

- [contactAccessButtonCaption(_:)](/documentation/swiftui/view/contactaccessbuttoncaption(_:))
- [contactAccessButtonStyle(_:)](/documentation/swiftui/view/contactaccessbuttonstyle(_:))
- [contactAccessPicker(isPresented:completionHandler:)](/documentation/swiftui/view/contactaccesspicker(ispresented:completionhandler:)) Modally present UI which allows the user to select which contacts your app has access to.

## Handling game controller events

- [handlesGameControllerEvents(matching:)](/documentation/swiftui/view/handlesgamecontrollerevents(matching:)) Specifies the game controllers events which should be delivered through the GameController framework when the view, or one of its descendants has focus.

## Creating a tabletop game

- [tabletopGame(_:parent:automaticUpdate:)](/documentation/swiftui/view/tabletopgame(_:parent:automaticupdate:)) Adds a tabletop game to a view.
- [tabletopGame(_:parent:automaticUpdate:interaction:)](/documentation/swiftui/view/tabletopgame(_:parent:automaticupdate:interaction:)) Supplies a closure which returns a new interaction whenever needed.

## Configuring camera controls

- [realityViewCameraControls](/documentation/swiftui/environmentvalues/realityviewcameracontrols) The camera controls for the reality view.
- [realityViewCameraControls(_:)](/documentation/swiftui/view/realityviewcameracontrols(_:)) Adds gestures that control the position and direction of a virtual camera.

## Interacting with transactions

- [transactionPicker(isPresented:selection:)](/documentation/swiftui/view/transactionpicker(ispresented:selection:)) Presents a picker that selects a collection of transactions.

## Framework integration

- [AppKit integration](/documentation/swiftui/appkit-integration)
- [UIKit integration](/documentation/swiftui/uikit-integration)
- [WatchKit integration](/documentation/swiftui/watchkit-integration)

---

*Extracted by [sosumi.ai](https://sosumi.ai) - Making Apple docs AI-readable.*
*This is unofficial content. All documentation belongs to Apple Inc.*
