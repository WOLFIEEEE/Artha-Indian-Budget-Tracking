# Apple Developer Portal Setup Guide for Artha

This guide walks you through setting up your app in Apple Developer Portal before submitting to the App Store.

## Prerequisites

- [ ] Apple Developer Account ($99/year) - https://developer.apple.com
- [ ] macOS with Xcode installed
- [ ] Artha project code with updated bundle identifiers

## Step 1: Create App IDs

### Main App ID

1. Go to https://developer.apple.com
2. Navigate to **Certificates, Identifiers & Profiles**
3. Click **Identifiers** → **+** (Add button)
4. Select **App IDs** → **Continue**
5. Select **App** → **Continue**
6. Fill in details:
   - **Description:** Artha - Main App
   - **Bundle ID:** Explicit → `com.arthaapp.artha`
   - **Capabilities:** Check the following:
     - ✅ App Groups
     - ✅ iCloud (with CloudKit support)
     - ✅ Push Notifications
7. Click **Continue** → **Register**

### Widget Extension ID

Repeat the above steps with:
- **Description:** Artha - Widget Extension
- **Bundle ID:** `com.arthaapp.artha.ExpenditureWidget`
- **Capabilities:** 
  - ✅ App Groups
  - ✅ iCloud (with CloudKit support)

### Budget Intent ID

Repeat with:
- **Description:** Artha - Budget Intent
- **Bundle ID:** `com.arthaapp.artha.BudgetIntent`
- **Capabilities:** 
  - ✅ App Groups
  - ✅ iCloud (with CloudKit support)

### Budget Intent UI ID

Repeat with:
- **Description:** Artha - Budget Intent UI
- **Bundle ID:** `com.arthaapp.artha.BudgetIntentUI`
- **Capabilities:** 
  - ✅ App Groups
  - ✅ iCloud (with CloudKit support)

## Step 2: Create App Group

1. Still in **Identifiers**, click **+** (Add button)
2. Select **App Groups** → **Continue**
3. Fill in details:
   - **Description:** Artha App Group
   - **Identifier:** `group.com.arthaapp.artha`
4. Click **Continue** → **Register**

## Step 3: Create iCloud Container

1. Click **+** (Add button)
2. Select **iCloud Containers** → **Continue**
3. Fill in details:
   - **Description:** Artha iCloud Container
   - **Identifier:** `iCloud.com.arthaapp.artha`
4. Click **Continue** → **Register**

## Step 4: Link Capabilities to App IDs

### For Each App ID (Main + 3 Extensions):

1. Go back to **Identifiers**
2. Click on the App ID (e.g., `com.arthaapp.artha`)
3. Scroll to **App Groups**:
   - Check **App Groups** if not already checked
   - Click **Configure**
   - Select `group.com.arthaapp.artha`
   - Click **Continue** → **Save**
4. Scroll to **iCloud**:
   - Check **iCloud** if not already checked
   - Click **Configure**
   - Select **Include CloudKit support**
   - Under **Containers**, check `iCloud.com.arthaapp.artha`
   - Click **Continue** → **Save**
5. Click **Save** at the top to save the App ID

**Repeat for all 4 App IDs.**

## Step 5: Create Provisioning Profiles

### Development Provisioning Profile (for testing)

1. Go to **Profiles** → **+** (Add button)
2. Select **iOS App Development** → **Continue**
3. Select App ID: `com.arthaapp.artha` → **Continue**
4. Select your development certificate → **Continue**
5. Select your test devices (you need to register devices first) → **Continue**
6. Name: `Artha Development` → **Generate**
7. Download the profile
8. **Repeat for all 4 App IDs** (main app + 3 extensions)

### Distribution Provisioning Profile (for App Store)

1. Go to **Profiles** → **+** (Add button)
2. Select **App Store** → **Continue**
3. Select App ID: `com.arthaapp.artha` → **Continue**
4. Select your distribution certificate (create one if you don't have it) → **Continue**
5. Name: `Artha App Store` → **Generate**
6. Download the profile
7. **Repeat for all 4 App IDs**

## Step 6: Install Provisioning Profiles in Xcode

1. Double-click each downloaded `.mobileprovision` file
2. Or drag them to Xcode icon in Dock
3. Xcode will install them automatically

## Step 7: Update Xcode Project Settings

1. Open `dime.xcodeproj` in Xcode
2. Select the project in the navigator
3. For each target (dime, ExpenditureWidget, BudgetIntent, BudgetIntentUI):
   - Select the target
   - Go to **Signing & Capabilities** tab
   - **Team:** Select your Apple Developer team
   - **Provisioning Profile:** 
     - Development: Select "Artha Development"
     - Release: Select "Artha App Store"
   - Verify bundle identifier matches what you created
   - Verify capabilities are enabled:
     - ✅ App Groups → `group.com.arthaapp.artha`
     - ✅ iCloud → CloudKit + Container: `iCloud.com.arthaapp.artha`

## Step 8: Create App in App Store Connect

1. Go to https://appstoreconnect.apple.com
2. Click **My Apps** → **+** → **New App**
3. Fill in details:
   - **Platforms:** iOS
   - **Name:** Artha
   - **Primary Language:** English (U.S.)
   - **Bundle ID:** Select `com.arthaapp.artha`
   - **SKU:** `artha-ios` (or your choice)
   - **User Access:** Full Access
4. Click **Create**

## Step 9: Fill App Information

### In App Store Connect:

1. Click on your new app
2. Go to **App Information**:
   - **Category:** Finance
   - **Age Rating:** Click **Edit** → Complete questionnaire → Finance app, no mature content
   - **Privacy Policy URL:** https://yourusername.github.io/artha/privacy (or your hosted URL)
3. Go to **Pricing and Availability**:
   - **Price:** Free
   - **Availability:** India (select India, or worldwide if you prefer)

## Step 10: Prepare App Store Listing

Use the content from `APP_STORE_LISTING.md`:

1. **App Name:** Artha - Expense Tracker
2. **Subtitle:** Indian-Focused Finance Manager
3. **Description:** (Copy from APP_STORE_LISTING.md)
4. **Keywords:** (Copy from APP_STORE_LISTING.md)
5. **Support URL:** Your website or GitHub repository
6. **Marketing URL:** (optional)

## Step 11: Upload Screenshots

Follow `SCREENSHOT_GUIDE.md` to capture screenshots:
- 6.7" Display (iPhone 15 Pro Max): Required
- 5.5" Display (iPhone 8 Plus): Required
- iPad Pro: Optional

Upload to App Store Connect under **App Screenshots** section.

## Step 12: Complete Privacy Details

In App Store Connect → **App Privacy**:

1. Click **Get Started**
2. **Do you collect data from this app?** → **No**
3. Submit

## Step 13: Build and Upload to App Store Connect

### In Xcode:

1. Select **Product** → **Archive**
2. Wait for build to complete
3. In Organizer window:
   - Click **Distribute App**
   - Select **App Store Connect** → **Next**
   - Select **Upload** → **Next**
   - Choose provisioning profile → **Next**
   - Review and click **Upload**
4. Wait for upload to complete

### Verify Upload:

1. Go to App Store Connect
2. Click your app → **TestFlight** tab
3. Your build should appear in "iOS Builds" (may take 5-10 minutes)
4. Once processed, it will show "Ready to Submit"

## Step 14: Submit for Review

1. Go to your app → **App Store** tab
2. Click **+** next to "iOS App" to create version 1.0
3. Fill in **What's New in This Version** (from APP_STORE_LISTING.md)
4. Scroll down to **Build** → Click **+** → Select your uploaded build
5. Complete all required sections (screenshots, description, etc.)
6. Scroll to bottom → Click **Submit for Review**

## Checklist Before Submission

Use `PRE_SUBMISSION_CHECKLIST.md` to verify everything is ready:

- [ ] All bundle IDs updated
- [ ] App Groups configured
- [ ] iCloud containers configured
- [ ] Provisioning profiles installed
- [ ] GPL license attribution included
- [ ] Privacy policy hosted and linked
- [ ] Screenshots uploaded
- [ ] App Store listing complete
- [ ] Build uploaded and selected
- [ ] App tested on real device

## Expected Timeline

- **Build Processing:** 5-30 minutes
- **Review Wait Time:** 1-7 days
- **Review Process:** 24-48 hours
- **Total:** Usually 2-7 days from submission to approval

## Common Issues and Solutions

### "Provisioning profile doesn't support capability"
**Solution:** Make sure you configured App Groups and iCloud for each App ID in Step 4.

### "Bundle identifier doesn't match"
**Solution:** Verify bundle IDs in Xcode match exactly what you created in Developer Portal.

### "Missing compliance information"
**Solution:** In App Store Connect, go to **App Store** → **App Information** → **Export Compliance** → Select "No" (since Artha doesn't use encryption beyond what iOS provides).

### "Invalid CloudKit container"
**Solution:** Make sure the container identifier in code (`DataController.swift`) matches what you created in Developer Portal.

### Build fails with "Signing for X requires a development team"
**Solution:** Select your team in **Signing & Capabilities** for all 4 targets.

## After Approval

Once approved:

1. Update the commented-out App Store URLs in `SettingsView.swift` with your actual App Store ID
2. Host your privacy policy permanently
3. Consider setting up TestFlight for beta testing
4. Monitor reviews and feedback

## Support

If you encounter issues:
- Apple Developer Forums: https://developer.apple.com/forums/
- App Store Connect Help: https://developer.apple.com/support/app-store-connect/
- Contact Apple Developer Support (requires active Developer account)

## Notes on Bundle Identifiers

Current bundle IDs used in the code:
- Main app: `com.arthaapp.artha`
- Widget: `com.arthaapp.artha.ExpenditureWidget`
- Budget Intent: `com.arthaapp.artha.BudgetIntent`
- Budget Intent UI: `com.arthaapp.artha.BudgetIntentUI`
- App Group: `group.com.arthaapp.artha`
- iCloud Container: `iCloud.com.arthaapp.artha`

**If you want to use different identifiers:**
1. Update them in Apple Developer Portal first
2. Then run find-and-replace in the codebase
3. Clean build folder in Xcode (Cmd+Shift+K)
4. Rebuild the project

---

**Good luck with your App Store submission!** 🚀

