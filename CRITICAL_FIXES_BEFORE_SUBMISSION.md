# CRITICAL FIXES BEFORE SUBMISSION ⚠️

**These issues WILL cause App Store rejection or major problems. Fix ALL of these before submitting!**

---

## 🔴 CRITICAL - App Store Will Reject

### 1. Change Bundle Identifiers (HIGHEST PRIORITY)

**Current**: `com.rafaelsoh.dime`
**Must Change To**: `com.yourname.artha` (or `com.yourcompany.artha`)

**Where to Fix**:
1. **Open Xcode** → Select project "dime" in navigator
2. **Select each target** and update:

**Main App Target (`dime`)**:
- General tab → Bundle Identifier: `com.yourname.artha`
- Signing & Capabilities → Update Team

**Widget Extension (`ExpenditureWidget`)**:
- Bundle Identifier: `com.yourname.artha.ExpenditureWidget`

**BudgetIntent**:
- Bundle Identifier: `com.yourname.artha.BudgetIntent`

**BudgetIntentUI**:
- Bundle Identifier: `com.yourname.artha.BudgetIntentUI`

**Also Update**:
- All `.entitlements` files (iCloud container, App Groups)
- DataController.swift (App Group identifier)
- All UserDefaults with suite name

**Search & Replace** (use caution):
```
Find: com.rafaelsoh.dime
Replace: com.yourname.artha
```

---

### 2. Change App Display Name

**Current**: "Dime" (shows on home screen)
**Must Change To**: "Artha"

**Where to Fix**:
1. **Xcode** → Select project → Select `dime` target
2. **Build Settings** → Search "Product Name"
3. Change to: `Artha`

**OR** in `project.pbxproj`:
```
INFOPLIST_KEY_CFBundleDisplayName = Artha;
```

Update for ALL targets:
- Main app: `Artha`
- Widget: `Artha Widget` (optional, user won't see this)
- Intent extensions: Can keep generic names

---

### 3. Change Support Email

**Current**: Users email Rafael at `rafasohhh@gmail.com`
**Must Change To**: YOUR email

**File**: `app/dime/Views/Settings/SettingsView.swift` (line 85-87)

**Replace**:
```swift
let supportEmail = SupportEmail(toAddress: "rafasohhh@gmail.com", subject: "Support Email")
let featureRequestEmail = SupportEmail(
  toAddress: "rafasohhh@gmail.com", subject: "Feature Request")
```

**With**:
```swift
let supportEmail = SupportEmail(toAddress: "your.email@gmail.com", subject: "Artha Support")
let featureRequestEmail = SupportEmail(
  toAddress: "your.email@gmail.com", subject: "Artha Feature Request")
```

---

### 4. Remove/Update Social Media Links

**File**: `app/dime/Views/Settings/SettingsView.swift`

**Current buttons link to**:
- Line 428: Dime's Twitter (@budgetwithdime)
- Line 437: Rafael's Twitter (@rarfell)

**Options**:

**Option A: Remove entirely** (Recommended if you don't have social accounts):
```swift
// DELETE these button blocks:
// - "Follow Dime on X"
// - "Follow Rafael on X"
```

**Option B: Update to your accounts** (if you have them):
```swift
Button {
  if let url = URL(string: "https://www.x.com/yourhandle") {
    UIApplication.shared.open(url)
  }
} label: {
  SettingsRowView(systemImage: "bird.fill", title: "Follow Artha on X", colour: 128)
}
```

**Also Update** line 574 - the "Made with ❤️" link:
```swift
// Current:
string.link = URL(string: "https://www.x.com/rarfell")

// Change to:
// Either remove the link entirely, or link to your profile
string.link = URL(string: "https://www.x.com/yourhandle")
// OR make it not a link:
// Just show "Made with ❤️ for India 🇮🇳"
```

---

### 5. Update App Store Review URL

**File**: `app/dime/Views/Settings/SettingsView.swift` (line 413)

**Current**:
```swift
let url = "https://apps.apple.com/app/id1635280255?action=write-review"
```

**Change to**:
```swift
// You won't have this URL until AFTER approval
// For now, comment it out or:
let url = "https://apps.apple.com/app/artha" // Replace after you get app ID
```

**Better**: After App Store approval, update with your actual app ID.

---

### 6. Update "Share with Friends" Link

**File**: `app/dime/Views/Settings/SettingsView.swift` (line 422)

**Current**:
```swift
shareSheet(url: "https://apps.apple.com/app/id1635280255")
```

**Change to**:
```swift
shareSheet(url: "https://apps.apple.com/app/artha") // Update after approval
```

---

### 7. Update iCloud Container & App Group

**Already discussed, but critical:**

**All `.entitlements` files:**

Change:
```xml
<string>iCloud.com.arthaapp.artha</string>
```
To:
```xml
<string>iCloud.com.yourname.artha</string>
```

Change:
```xml
<string>group.com.arthaapp.artha</string>
```
To:
```xml
<string>group.com.yourname.artha</string>
```

**Files to update**:
- `app/dime/dime.entitlements`
- `app/ExpenditureWidgetExtension.entitlements`
- `app/BudgetIntentUI/BudgetIntentUI.entitlements`
- `app/BudgetIntent/BudgetIntent.entitlements`

**Also in DataController.swift** (line 55, 57, 103, etc.):
```swift
// All instances of:
"group.com.arthaapp.artha"
// Change to:
"group.com.yourname.artha"
```

---

## ⚠️ IMPORTANT - Highly Recommended

### 8. Update Footer Text

**File**: `app/dime/Views/Settings/SettingsView.swift` (line 473)

**Current**:
```swift
Text("Made with ❤️ by \(makeAttributedString()) from 🇸🇬")
```
Where `makeAttributedString()` creates a link to Rafael's Twitter.

**Change to**:
```swift
Text("Made with ❤️ for India 🇮🇳")
  .font(.system(.footnote, design: .rounded).weight(.medium))
  .foregroundColor(Color.SubtitleText)
  .multilineTextAlignment(.center)
```

**Or** if you want attribution:
```swift
Text("Made with ❤️ for India 🇮🇳 • Based on Dime")
```

---

### 9. Update Privacy Policy URL

**File**: `docs/privacypolicy.md` (line 56)

**Current**: References Rafael's email

**Create Your Own**:
1. Copy template from this project
2. Update contact email to yours
3. Host on GitHub Pages or your website
4. Add URL to App Store Connect

---

### 10. Clean Up README.md

**File**: `README.md`

- Update all references to match Artha
- Update contact information
- Update bundle identifiers in documentation
- Add your name/organization

---

## 🔧 Quick Search & Replace Guide

**Use Xcode's "Find and Replace" (Cmd+Shift+F):**

| Find | Replace | Scope | Notes |
|------|---------|-------|-------|
| `com.rafaelsoh.dime` | `com.yourname.artha` | All files | Be careful with strings in documentation |
| `rafasohhh@gmail.com` | `your.email@gmail.com` | Code files only | Exclude CONTACT_ORIGINAL_AUTHOR.md |
| `group.com.arthaapp.artha` | `group.com.yourname.artha` | All files | App Group identifier |
| `iCloud.com.arthaapp.artha` | `iCloud.com.yourname.artha` | All files | CloudKit container |

**CAUTION**: Don't replace in these files (they're for reference):
- `CONTACT_ORIGINAL_AUTHOR.md`
- `APP_STORE_LISTING.md` (only in attribution section)
- `AboutView.swift` and `LicenseView.swift` (attribution links should stay)

---

## 📋 Apple Developer Portal Setup

After changing identifiers, you MUST:

### In Apple Developer Portal (developer.apple.com):

1. **Register New App ID**:
   - Identifier: `com.yourname.artha`
   - Enable capabilities: iCloud, App Groups, Push Notifications

2. **Create iCloud Container**:
   - Container ID: `iCloud.com.yourname.artha`

3. **Create App Group**:
   - Group ID: `group.com.yourname.artha`

4. **Update Provisioning Profiles**:
   - Create new development profile
   - Create new distribution profile
   - Download and install in Xcode

5. **Register Widget & Extension IDs**:
   - `com.yourname.artha.ExpenditureWidget`
   - `com.yourname.artha.BudgetIntent`
   - `com.yourname.artha.BudgetIntentUI`

---

## ✅ Verification Checklist

Before building:

- [ ] Changed ALL bundle identifiers (search for "rafaelsoh")
- [ ] Changed app display name to "Artha"
- [ ] Updated support email to yours
- [ ] Removed or updated social media links
- [ ] Updated App Store review URL (or commented out)
- [ ] Changed iCloud container identifier
- [ ] Changed App Group identifier
- [ ] Updated footer text in Settings
- [ ] Created privacy policy with your contact
- [ ] Registered new identifiers in Apple Developer Portal
- [ ] Updated provisioning profiles in Xcode
- [ ] Tested app builds successfully
- [ ] Verified app name shows "Artha" when installed

**Build Test**:
```bash
# Clean build
cd /Users/khushwantparihar/dimeApp---Indian
xcodebuild clean -project app/dime.xcodeproj -scheme dime
xcodebuild build -project app/dime.xcodeproj -scheme dime
```

If build fails after changes, it's likely due to:
- Provisioning profile mismatch
- Missing capabilities in Developer Portal
- Entitlements file errors

---

## 🎯 Priority Order

**Do these in order**:

1. ✅ Bundle Identifiers (critical)
2. ✅ App Display Name (critical)
3. ✅ Support Email (critical)
4. ✅ Apple Developer Portal setup (critical)
5. ⚠️ Social media links (important)
6. ⚠️ App Store URLs (important)
7. ⚠️ iCloud/App Group IDs (important)
8. 💡 Footer text (recommended)
9. 💡 Privacy policy (recommended)
10. 💡 README cleanup (optional)

---

## 🆘 If You Get Errors

**"No provisioning profiles found"**:
→ You need to register the new bundle ID in Developer Portal

**"iCloud container not found"**:
→ Create the container in Developer Portal and wait 10 minutes

**"App Groups capability missing"**:
→ Enable in Xcode Signing & Capabilities tab

**"Code signing failed"**:
→ Check your Developer account in Xcode preferences
→ Verify bundle ID matches exactly what's registered

---

## 📧 Support During Review

When Apple reviews your app:
- They may email questions to your contact email
- Respond within 24 hours
- Be ready to explain GPL compliance
- Have links to source code ready

---

**Estimated Time**: 2-4 hours to fix everything thoroughly

**IMPORTANT**: Do NOT submit until ALL critical items are fixed. Apple will reject immediately if bundle ID or support email are wrong.

