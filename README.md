# hydra-sdk-ios-packages

## Table of contents
- [SDK Introduction](#sdk-introduction)
- [Requirements](#requirements)
- [Installation](#installation)
- [Versioning Scheme](#versioning-scheme)
- [SDK Release Notes](#sdk-release-notes)
- [Version Links](#version-links)
- [Developer Docs](#developer-docs)

## Developer Docs
Please refer to our developer docs to know how to make use of our SDK to track Events and User Attributes, to implement Push Notification, Notification Center and InApp messages - https://docs.capillarytech.com/reference/overview_ios_sdk

## Version Links
- [Version 1.6.2](#162---2025-02-19)
- [Version 1.6.1](#161---2025-01-29)
- [Version 1.6.0](#160---2025-01-23)
- [Version 1.5.10](#1510---2024-11-25)
- [Version 1.5.9](#159---2024-11-15)
- [Version 1.5.8](#158---2024-10-29)
- [Version 1.5.7](#157---2024-10-21)
- [Version 1.5.6](#156---2024-09-05)
- [Version 1.5.5](#155---2024-08-27)
- [Version 1.5.4](#154---2024-08-14)
- [Version 1.5.3](#153---2024-07-19)
- [Version 1.5.2](#152---2024-07-15)
- [Version 1.5.1](#151---2024-06-20)
- [Version 1.5.0](#150---2024-06-18)
- [Version 1.4.8](#148---2024-05-29)
- [Version 1.4.7](#147---2024-05-21)
- [Version 1.4.6](#146---2024-05-16)
- [Version 1.4.5](#145---2024-02-05)
- [Version 1.4.4](#144---2023-12-19)
- [Version 1.4.3](#143---2023-09-08)
- [Version 1.4.2](#142---2023-08-23)
- [Version 1.4.1](#141---2023-08-16)
- [Version 1.4.0](#140---2023-08-10)
- [Version 1.3.1](#131---2023-06-20)
- [Version 1.3.0](#130---2023-06-07)

## SDK Introduction
Capillary is a comprehensive customer engagement platform designed to help businesses create personalized experiences for their users across various touchpoints. The Hydra SDK enables seamless integration of Capillary's capabilities into mobile applications, allowing businesses to leverage advanced analytics, segmentation, and automated engagement tools directly within their apps.

## Requirements
- Minimum deployment version (iOS): 13.0+ 
- Supported Device Platform(s): Mobile(iOS), Tablet(iPadOS)

## Installation
- Via Swift Package Manager:

  ```
    let package = Package(
    name: “<Project-name>”,
    dependencies: [
      .package(url:"https://github.com/Capillary/hydra-sdk-ios-packages",upToNextMajor(from: "1.1.0"))
    ]
  )
  ```
- Via Cocoapods:
  To integrate the Hydra SDK into your project using CocoaPods, follow these steps:
  Steps:
  - Add Hydra SDK to Your Podfile
  - Update your Podfile with the following lines under the target you wish to integrate the SDK frameworks with:
    ```
    platform :ios, '14.0' # Specify the platform and minimum deployment target
    # Comment the next line if you don't want to use dynamic frameworks
    use_frameworks! 
 
    target 'MyApp' do
      # Define a constant for the shared Git repo with authentication 
      private_repo = 'https://GITHUB_USERNAME:PERSONAL_ACCESS_TOKEN@github.com/Capillary/hydra-sdk-ios-packages.git'
      # Add the required dependencies for Hydra SDK frameworks
        pod 'HydraCore', :git => private_repo
        pod 'HydraPushNotification', :git => private_repo
        pod 'HydraPushNotificationServiceExtension', :git => private_repo
        pod 'HydraInAppMessage', :git => private_repo
        pod 'HydraInboxCore', :git => private_repo
        pod 'HydraInboxUI', :git => private_repo
    end
    ```
  - Install the Pods
    ```
    pod install
    ```
  - Open the workspace
    - After the installation is complete, open the generated .xcworkspace file:
      - open YourProjectName.xcworkspace
  - Import the SDK Frameworks
    - To use the Hydra SDK in your project, import the necessary frameworks in your Swift files as required. For example:
      ```
       import HydraCore 
       import HydraPushNotification
       import HydraPushNotificationServiceExtension
       import HydraInAppMessage
       import HydraInboxCore
       import HydraInboxUI
      ```

## Versioning Scheme
We use [Semantic Versioning](https://semver.org/) for our releases. The version number follows the pattern MAJOR.MINOR.PATCH, where:
- **MAJOR**: Incompatible API changes
- **MINOR**: Backward-compatible functionality
- **PATCH**: Backward-compatible bug fixes


## SDK Release Notes

### [1.6.2] - 2025-02-19

#### New Features and Enhancements
  - **Database Improvements**
    - Added missing fields in the database.
    - Changed the type of the custom field to [[String: Any]].
  - **Shared Data Support**
    - Added support to share the Events database using App Groups.
    - Now using shared user defaults to store and fetch the push notification opt-in status.
  - **SwiftUI Support**
    - Introduced a public API to get the NotificationCenterView in SwiftUI applications.
  - **Badge Count Enhancements**
    - Reset badge count to zero on the first-time install of the app.

### [1.6.1] - 2025-01-29

#### Bug Fixes
  - **Shared Resources**
    - Resolved crashes related to handling shared resources
  - **UI Execution On Main Thread**
    - Execute UI related process on main thread

### [1.6.0] - 2025-01-23

#### Improvements and Enhancements
  - **Performance Improvements** 
    - Used backgroundContext for CRUD operations to improve Core Data efficiency.
    - Optimized database operations using asynchronous perform methods.
    - Created a separate queue for thread-safe resource access.
  - **Feature Enhancements**
    - Added public methods to update various Hydra attributes.
    - Added completion blocks for critical asynchronous operations like DLR event reporting and database insertions.
  - **Database and Notification Handling**
    - Set mergePolicy for the backgroundContext to handle conflicts gracefully.
    - Improved unread notification count retrieval with a dedicated method.
    - Updated notifications as read when a user interacts with them.
    - Enhanced pull approach by saving valid notifications into the database before further processing.

#### Bug Fixes
  - **Event Handing and Pull Approach**
    - Resolved crashes in event handling and pull notifications.

### [1.5.10] - 2024-11-25

#### New Features and Enhancements
- **Notification Handling**
  - Introduced a new NotificationReceiverType enum and updated the HydraNotificationsReceiverProtocol to include this for improved flexibility
  - Implemented filtering of notifications based on the result of the insert operation to handle data more efficiently.
  - Ensured conformance to HydraNotificationsReceiverProtocol and implemented the required methods.
- **UI and View Improvements**
  - Added a ViewModifier to detect if text is truncated, providing better handling of long messages.
  - Applied the truncation check modifier (checkTruncation) to notification titles and messages for improved UI responsiveness.
  - Updated NotificationItemViewModel.swift to support these changes.
  - Display a dropdown image for notifications when the message style is biPicture.
- **Pull Messages Manager Updates**
  - Refactored PullMessagesManager.swift to improve message fetching and management logic.

### [1.5.9] - 2024-11-15

#### New Features and Enhancements
- **Primary CTA Action on Images**
  - Added support for executing the primary call-to-action (CTA) when clicking on images in notifications.
- **Notification Improvements**
  - Multi-line titles are now supported in the notification center for better readability.
  - Badge count display is now conditioned on the user's login status, ensuring badges are only shown for logged-in users.
  - Refined badge handling, including removal of badge count upon user logout.
- **Enhanced Notification Handling**
  - The notification center now refreshes when a new notification is received in the foreground.
  - Notifications retain their expanded state when a new notification arrives, preserving user context.
  - Improved handling of deep link actions in notification trays.

#### Bug Fixes
- **Badge and User Login Status**
  - Resolved an issue where badge updates were not correctly applied based on user login status.
  - Fixed a bug preventing the storage of customer IDs if the extension target was running.
- **User Data and Synchronization**
  - Updated to pull messages as soon as the FCM token is refreshed.
  - Addressed an issue with optional phone attributes and updated the initialization method for better handling.
- **UI and Display Fixes**
  - Resolved issues causing the entire message not to display in expanded notifications and fixed overlapping image constraints.
  - Adjusted notification display for cases with deep links and external CTAs to ensure proper execution.
- **Performance Improvements**
  - Background processing enhancements for event reporting, reducing the load on the main thread.
  - Optimized message pulling in the background to improve notification performance and reliability.
  - Removed unnecessary serial queues and other unused resources to improve efficiency.
- **Database and Logging**
  - Handled duplicate entry errors in database operations, reducing unwanted conflicts and improving stability.
  - Added event reporting on insert failures due to duplicate entries, enhancing error reporting.
  - General log cleanup and serial execution adjustments for smoother operation.


### [1.5.8] - 2024-10-29
#### Summary
  - This release includes improvements to the handling and display of notifications. 
#### Key Updates:
  - Setting Shared User Defaults Accessibility:
    - Updated the shared user defaults to No Protection, enabling access in the Notification Service Extension even when the device is locked. This change ensures notifications are processed and displayed correctly in locked states.

### [1.5.7] - 2024-10-21
#### Summary
  - This release introduces significant updates and enhancements focused on notification handling and persistent data management. Key improvements involve better notification sync operations, robust data migrations, and new methods to streamline the notification flow within the SDK.

#### Key Updates:
  - **Notification Sync & Pull**
    1. Added functionality to store and fetch the last sync time for pull message requests.
    2. Enhanced the ability to update notifications inside the notification database.
    3. Defined a structured process for pulling undelivered notifications and updated the related status parsing logic.
  
  - **Core Data & Database Management**
    1. Executed migrations between non-shared and shared persistent stores, particularly for logs and notification-related data.
    2. Enabled the logs persistent store to be shared across different environments.
    3. Implemented migration steps using app group identifiers to transition data from non-shared to shared persistent stores.
  
  - **Notification Event Handling**
    1. Extended the HydraNotificationType enum with a new type: NC.
    2. Employed HydraNotificationsReceiverProtocol for receiving undelivered in-app and push notifications.
    3. Added logic to refresh the inbox when the user interacts with a notification.
  
  - **New Domains & Protocols**
    1. Introduced a new domain for the Pull Approach and extended its logic for more efficient notification management.
    2. Optimized NotificationCore+PullApproach.swift to run pull requests on a separate serial queue, improving overall system performance and preventing queue blocking.
  
  - **Miscellaneous Improvements**
    1. Added support for Codable to store server configurations in shared user defaults.
    2. Refactored and removed redundant code (self references) for better code readability.
    3. Updated EventScheduler.swift and HydraDBFactory.swift with performance optimizations.
    4. Introduced support for handling notification badge updates on the app icon and reporting DLR (Delivery Receipt) for push notifications.

### [1.5.6] - 2024-09-05
#### Key Updates:
  - **Notification center enhancement feature**
    1. Added support for custom fonts, borders, and styling for CTA buttons.
    2. Improved logic for displaying expandable content based on notification style.
    3. Updated background color functionality for primary CTAs.
    4. Introduced new CTA design options as per mockups.

### [1.5.5] - 2024-08-27
#### Key Updates:
  - **Fixed crash related to core data migration for events model**
    1. Implemented a custom mapping model for Core Data migration to ensure all events are retained during the transition.
    2. Fixed the Core Data migration crash when updating from the old data model version to the newer version.

### [1.5.4] - 2024-08-14
#### Key Updates:
  - **Introduced remote logging feature**
    1. Introduced a Remote Logger feature that syncs logs to the server, depending on the log level selected by the application.
    2. Updated the sign-up event to make all fields optional except for cuid.
    3. Now, cuid is the only required field for the sign-up event.

### [1.5.3] - 2024-07-19
#### Key Updates:
  - **Resolve bug related to date formatting**
    1. Resolve the Date formatting issue where locale change causes converting current date to future date

### [1.5.2] - 2024-07-15
#### Key Updates:
  - **SDK will show notification badge on application icon**
    1. Show notification badge count of unread notifications on application icon whenever application receives valid notification
    2. Resolve issue where application receives an in-app message in the background unable to show it when application comes to foreground

### [1.5.1] - 2024-06-20
#### Summary:
  - This release has changes to update the type of subscriptions
#### Key Updates:
  1. Accept subscriptions as list of objects of type Any
  2. Update notifications list immediately on notification click in Notification Center


### [1.5.0] - 2024-06-18
#### Summary:
  - This release enhances the SDK by implementing encryption strategies for storing sensitive information
#### Key Updates:
  1. Added a security layer to User Defaults.
  2. Encrypting local storage data.
  3. Implemented action click callbacks for Push Notification, Notification Center, and In-App Message.
  4. Added support for Subscriptions.


### [1.4.8] - 2024-05-29
#### Key Updates:
  - **Add support for default Trigger as 'INSTANT' for InAppMessages**
    1. The ‘trigger’ object of the InAppNotification Payload is optional.
    2. This release has the changes that are required to handle optional Trigger for InAppMessages


### [1.4.7] - 2024-05-21
#### Key Updates:
  - **Removed the extra check while processing deep link cta action from Notification Center**
    1. Remove check for https url scheme in case of deep link

### [1.4.6] - 2024-05-16
#### Key Updates:
  - **Removed the extra check while processing deep link cta action**
    1. Remove check for https url scheme in case of deep link

### [1.4.5] - 2024-02-05
#### Key Updates:
  - **Redesigned layouts of Header and Footer type in-app messages**
    1. The layouts for the Header and Footer type in-app messages is updated as per the given mockup
    2. Primary CTA action is provided to all the components shown on in-app messages
    3. Now user can click on the message text, image or the CTA button to perform the primary CTA action
    ## Added support to send gateway and token information in the form of an array.

### [1.4.4] - 2023-12-19
#### Key Updates:
  - **Added support for following types of in-app messages**
    1. Rating
    2. Feedback
    3. AppRating
    4. Added support for GIF images for all types of supported in-app messages

### [1.4.3] - 2023-09-08
#### Key Updates:
  - **Added required changes to resolve the issue where events are not being sent to the server**
    1. It was observed that the events that are received from the application are not sent to the server. 
    2. While debugging the issue it was found that the issue is happening only when the application is running on a simulator with iOS version 16.2.
    3. We have added the required changes to overcome the issue and with this release the events are now sent to the server as expected.

### [1.4.2] - 2023-08-23
#### Key Updates:
  - **Added support for the customising Notification Center theme**
    - The Following fields can be modified using a custom theme
      1. Background colour of the Notification Item based on the read/unread state of the notification
      2. Text colour of the Notification title, message and date label based on the read/unread state of the notification
      3. Font can be updated for Notification title, message and date label based on the read/unread state of the notification
      4. The text colour and font of the label stating "No Notifications Found"

#### NOTE - Application developers can opt for the default theme for the standard template.

### [1.4.1] - 2023-08-16
#### Key Updates:
  - **iOS 13 support**
    - Hydra SDKs are now supported iOS 13 and above
  - **Swift Tool version**
    - Updated the swift tool version to 5.7 for backward compatibility

### [1.4.0] - 2023-08-10
#### Key Updates:
  - **Notification Center**
    - Added support for notification center through which application users will have a unified and streamlined notification experience, where they can easily access and manage their notifications in one place
    - There are two frameworks HydraInboxCore and HydraInboxUI needs to be used to show Notification Center
    - Notification Center will be storing all the remote notifications locally
    - In the Notification Center the notifications will be displayed in form of a list, consisting of
      - Heading
      - A short description
      - Time and date of receiving
    - The notifications which are unread have different styling than the one which are already read
    - The user can perform actions like 
      - click on the notification
      - delete a particular notification
      - delete all available notifications from the Notification Center
    - The user can click on the notification, which will navigate them to the correct path be it an external url or a deep link inside the app
    Adding dlr event push deleted
  - **App Groups**
    - Added support for App Groups in order to function the Inbox feature seamlessly. App group is necessary to establish communication between the application and the Push Notification Service extension to perform the operations on received remote notification such as insertion in the database.
    - We added support for the App Group identifier strictly in the format group.{app bundle id}.hydra to make sure HydraInboxCore and HydraInboxUI function as expected.

### [1.3.1] - 2023-06-20
#### Key Updates:
  1. Fixes DLR event reporting for notifications received in the background.
  2. Updates sending events to the backend. SDK will now sort the events wrt event creation time before sending them to the backend.
  3. Added support for sending gateway information to the backend

### [1.3.0] - 2023-06-07
#### Key Updates:
  - Recreated the authentication flow.
  - The auth flow will be performed just before sending the event.
  - Changed APIs to async-await Swift.
  - Removed notifications as a way of communication between classes.
  - Added a new Logger system and app can now set the Logger level.
  - Added single initialiser for HydraCore object.
  - Private EventsManager object. All Events APIs are exposed via HydraCore object.
  - Optimised network calls. More efficient now.
  - Improved method descriptions.
  - Utilised SwiftUI for InAppMessages. Deprecated storyboards.
  - Utilised string constants instead of direct usage of strings in the application.
  - Added more test cases.
  - Improved test case code coverage.
  - Added single initialiser for HydraCore.

### [1.2.1] - 2023-05-08
#### Key Updates:
  - Fixed a crash in Hydra Core when creating a events manager instance
  - Added linter for swift coding guidelines

### [1.1.1] - 2023-04-26
#### Key Updates:
  - Updated the frameworks to not embed the dependent libraries
  - This resolves the issues occurring when application needs to be uploaded to app store

### [1.1.0] - 2023-04-25
#### Summary:
  - This is the first release of Hydra frameworks in a single package. 
  - Prior to this release individual frameworks have been released as a separate package.
  - This release contains below frameworks
    - Contains [HydraCore 0.2.2](https://github.com/Capillary/HydraCore/releases/tag/0.2.2)
    - Contains [HydraInAppMessage 0.1.0](https://github.com/Capillary/HydraInAppMessage/releases/tag/0.1.0)
    - Contains [HydraPushNotification 0.2.0](https://github.com/Capillary/HydraPushNotification/releases/tag/0.2.0)


# HydraInAppMessage (April 17, 2023)
### [0.1.0] - 2023-04-17
#### Key Updates:
  - InApp Notification
    - Added support for in app notification
  - Displaying user Milestone In-App notification when the application is in the foreground.
  - Displaying user broadcasts In-App notification when he launches the application for the first time. (no campaign duration supported as yet)
  - Support the following UI templates:
    - Pop up with single static text
    - Pop up with single static text and an image
    - Pop up with single static text, an image and a button (max 1 button supported for now)
    - Pop up with only the image.
    - Pop up with static text with a button
    - Pop up with image and button.
  - DLR events
  - Image caching
  - Support navigation for External_URL and Deeplink
  - Rule engine

# HydraPushNotification
### [0.2.0] - 2023-04-17
#### Key Updates:
  - Added In-App message support by parsing the notification payload
  - Establish communication between the HydraInAppMessage framework and the HydraNotification framework
  - Removed the dependency of the HydraCore framework from HydraNotification

### [0.1.1] - 2023-02-28
#### Key Updates:
  - Added dependency of Hydra Core version 0.2.1

### [0.1.0] - 2023-02-21
#### Key Updates:
  - Push Notification
    - Added support for push notification, an out-of-app alert that appears on the user’s screen when an important update occurs
    - Notification Runtime Permission
  - Token Generation
    - When SDK registers for the token with FCM
    - SDK would fetch the token from FCM using the above information, handle the expiry of the token and send it to the backend. 
    - App is handling the service registration, passes the token and payload using the hydra pushbase api’s
    - Sending callbacks to the application 
  - Support navigation on click of primary and secondary CTA’s

# HydraCore
### [0.2.2] - 2023-04-17
#### Key Updates:
  - Added support for sending below DLR events for In-App Messages
    - Inapp_message_show
    - Inapp_message_clicked
    - Inapp_message_dismissed

### [0.2.1] - 2023-02-28
#### Key Updates:
  - Preventive action taken on crash observed when access token might be empty

### [0.2.0] - 2023-02-20
#### Key Updates:
  - Hydra Core
    - Implemented the core of the sdk 
  - Initializing the sdk
  - Tracking User Events
  - Tracking Behavioral Events
  - Authorization workflow
  - Passing User preferences to the backend

### [0.1.0] - 2022-12-06
#### Key Updates:
  - Hydra core package release with Authentication flow
