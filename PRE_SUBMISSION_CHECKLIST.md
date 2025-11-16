# Pre-Submission Checklist for Artha

**Use this checklist before submitting to the App Store to ensure legal compliance and technical readiness.**

---

## 1. GPL v3.0 Compliance ⚖️

### Attribution & Licensing

- [ ] **LICENSE file present** in repository root
  - Location: `/LICENSE`
  - Contains: Full GPL v3.0 text
  - Status: ✅ Already present

- [ ] **AboutView.swift created** with proper attribution
  - Path: `app/dime/Views/AboutView.swift`
  - Contains link to original Dime repository
  - Credits Rafael Soh as original author
  - Links to Artha source code (update URL!)
  - Status: ✅ Created

- [ ] **LicenseView.swift created** with GPL text
  - Path: `app/dime/Views/LicenseView.swift`
  - Displays GPL v3.0 license
  - Links to gnu.org for full text
  - Status: ✅ Created

- [ ] **Legal section added to Settings**
  - "About Artha" link functional
  - "Based on Dime (Open Source)" link opens GitHub
  - "GPL v3.0 License" link functional
  - Status: ✅ Added

- [ ] **All links tested and working**
  - Original Dime repo: https://github.com/rarfell/dimeApp
  - Your Artha repo: [UPDATE THIS URL]
  - GPL license: https://www.gnu.org/licenses/gpl-3.0.html
  - Status: ⚠️ Needs testing

### Source Code

- [ ] **Copyright notices preserved** in original code files
  - Check: Rafael Soh's copyright in Dime files
  - Your additions should add, not replace
  - Status: Review manually

- [ ] **NOTICES or ATTRIBUTION file** (optional but recommended)
  - Create file listing all contributors
  - Mention Rafael Soh prominently
  - Status: Optional

- [ ] **Source code will be published** before or with App Store launch
  - GitHub repository created
  - Code pushed to public repo
  - URL added to About screen
  - Status: ⚠️ Must do before submission

### App Store Description

- [ ] **GPL v3.0 mentioned** in App Store description
  - "Open source under GPL v3.0" is in description
  - Status: ✅ In APP_STORE_LISTING.md

- [ ] **Attribution to Dime included** in App Store description
  - Credits Rafael Soh
  - Links to original Dime repo
  - Status: ✅ In APP_STORE_LISTING.md

---

## 2. App Branding & Differentiation 🎨

### App Name & Identity

- [ ] **App name changed from "Dime" to "Artha"** everywhere
  - Display name in Xcode project
  - Info.plist CFBundleDisplayName
  - WelcomeSheetView.swift (done ✅)
  - All user-facing text
  - Status: ⚠️ Check all locations

- [ ] **No "Dime" branding** visible in UI (except attribution)
  - Checked all screens
  - Removed Dime logos (except in attribution context)
  - Status: ⚠️ Visual audit needed

- [ ] **Bundle Identifier unique**
  - Not: com.rafaelsoh.dime
  - Use: com.yourname.artha or similar
  - Status: ⚠️ Check in Xcode

### Visual Differentiation

- [ ] **Indian colors applied** to key UI elements
  - IndianSaffron used for "Artha" title (✅)
  - IndianGreen used for primary buttons (✅)
  - Colors defined in Assets.xcassets (✅)
  - Color.swift accessors added (✅)
  - Status: ✅ Partially done

- [ ] **App icon replaced**
  - Current Dime icons removed
  - Custom Artha icon designed
  - All sizes (20pt - 1024pt) generated
  - Added to AppIcon.appiconset
  - Status: ⚠️ CRITICAL - Must replace before submission

### Alternate Icons

- [ ] **Alternate icons updated** (AppIcon1, AppIcon2, AppIcon3, AppIcon4)
  - Create Artha-themed alternates
  - Remove Dime-branded alternates
  - Status: ⚠️ Update after main icon done

---

## 3. Code Quality & Testing 🧪

### Build & Compilation

- [ ] **App builds without errors**
  - Xcode build succeeds
  - No compiler errors
  - Status: ⚠️ Build and check

- [ ] **No warnings** (or warnings addressed)
  - Check Xcode warnings
  - Fix or document why ignored
  - Status: ⚠️ Check after build

- [ ] **Linter passes** (if using SwiftLint)
  - Run linter
  - Fix critical issues
  - Status: ⚠️ Run linter

### Functional Testing

- [ ] **All Indian features work**
  - Lakh/Crore formatting displays correctly
  - Hindi localization works (if added)
  - Financial Year tracking accurate (Apr-Mar)
  - Festival calendar shows correct dates
  - Payment method tracking functional
  - Status: ⚠️ Manual testing needed

- [ ] **Core features work**
  - Add transaction
  - Create budget
  - View analytics
  - Bill splitting
  - EMI tracking
  - iCloud sync (if enabled)
  - Face ID / Touch ID
  - Status: ⚠️ Full regression test

- [ ] **About/License screens functional**
  - Navigate to Settings > Legal & Credits
  - Open "About Artha" - displays correctly
  - Tap link to Dime repo - opens in browser
  - Tap link to Artha repo - opens in browser
  - Open "GPL v3.0 License" - displays text
  - Status: ⚠️ Must test

- [ ] **No crashes on common actions**
  - Test on multiple devices/simulators
  - Test on iOS 16, iOS 17, iOS 18
  - Test on iPhone and iPad
  - Status: ⚠️ Testing needed

### Data & Privacy

- [ ] **No data leaks** to external servers
  - App works offline
  - No analytics tracking
  - No crash reporting (or only Apple's)
  - Status: ✅ By design (inherited from Dime)

- [ ] **iCloud sync optional and clear**
  - User can opt out
  - Clear messaging about what's synced
  - Status: ⚠️ Verify in Settings

---

## 4. App Store Requirements 🏪

### Metadata Prepared

- [ ] **App name finalized**
  - "Artha - Indian Budget Tracker" or similar
  - Max 30 characters
  - Status: ✅ In APP_STORE_LISTING.md

- [ ] **Subtitle finalized**
  - "Track Expenses in Lakhs & Crores"
  - Max 30 characters
  - Status: ✅ In APP_STORE_LISTING.md

- [ ] **Keywords researched and finalized**
  - Max 100 characters
  - Mix of English and Hindi
  - Status: ✅ In APP_STORE_LISTING.md

- [ ] **Description written**
  - 3950 characters max
  - Highlights Indian features
  - Includes GPL attribution
  - Status: ✅ In APP_STORE_LISTING.md

- [ ] **Promotional text written**
  - 170 characters max
  - Status: ✅ In APP_STORE_LISTING.md

- [ ] **What's New text** (Release Notes)
  - For version 1.0
  - Status: ✅ In APP_STORE_LISTING.md

### Screenshots

- [ ] **Screenshots captured** (6-8 required)
  1. Home screen with Indian categories
  2. Lakh/Crore format example
  3. Hindi UI
  4. Festival calendar
  5. Bill splitting
  6. EMI tracker
  7. Financial Year view
  8. Analytics
  - Status: ⚠️ Follow SCREENSHOT_GUIDE.md

- [ ] **Screenshots for all required sizes**
  - iPhone 6.5" (1284x2778) - Required
  - iPhone 6.7" (1290x2796) - Optional but recommended
  - iPad 12.9" (2048x2732) - If supporting iPad
  - Status: ⚠️ Capture after testing

- [ ] **App Preview video** (optional but recommended)
  - 15-30 seconds
  - Highlights unique features
  - Status: Optional

### Support Materials

- [ ] **Privacy Policy URL ready**
  - Hosted on GitHub Pages or your website
  - States no data collection
  - Status: ⚠️ Create and host

- [ ] **Support URL ready**
  - GitHub repo, website, or email
  - Where users can get help
  - Status: ⚠️ Setup before submission

- [ ] **App icon (1024x1024)** ready
  - PNG, no transparency
  - App Store marketing icon
  - Status: ⚠️ Need custom icon

### Categories & Ratings

- [ ] **Primary category selected**: Finance
- [ ] **Secondary category selected**: Productivity (optional)
- [ ] **Age rating determined**: 4+ (suitable for all)
- [ ] **Copyright year**: 2024 or current year

---

## 5. Developer Account Setup 👨‍💻

### Apple Developer Program

- [ ] **Enrolled in Apple Developer Program**
  - $99/year membership active
  - Status: ⚠️ Required for submission

- [ ] **Certificates configured**
  - iOS App Development certificate
  - iOS Distribution certificate
  - Status: ⚠️ Check in Xcode

- [ ] **App ID registered**
  - Identifier: com.yourname.artha
  - Bundle ID matches Xcode project
  - Status: ⚠️ Register on developer.apple.com

- [ ] **Provisioning profiles created**
  - Development profile
  - Distribution profile (App Store)
  - Status: ⚠️ Xcode can auto-manage

### App Store Connect

- [ ] **App created in App Store Connect**
  - Bundle ID matches
  - Name "Artha" reserved
  - Status: ⚠️ Create at appstoreconnect.apple.com

- [ ] **Bank account added** (for paid apps)
  - Not needed if free forever
  - Status: N/A (free app)

- [ ] **Tax forms completed**
  - Required even for free apps in some countries
  - Status: ⚠️ Check App Store Connect

---

## 6. GitHub Repository Setup 🐙

### Repository Creation

- [ ] **GitHub repository created**
  - Name: artha-budget-tracker or similar
  - Status: ⚠️ Create before submission

- [ ] **Repository is public**
  - GPL requires source distribution
  - Status: ⚠️ Set to public

- [ ] **README.md created** with:
  - [ ] Artha description
  - [ ] Indian features highlighted
  - [ ] Credit to Dime / Rafael Soh
  - [ ] GPL v3.0 license badge
  - [ ] Installation instructions
  - [ ] Contributing guidelines
  - [ ] Contact information
  - Status: ⚠️ Create comprehensive README

- [ ] **LICENSE file present** (GPL v3.0)
  - Already in repo: ✅
  - Status: ✅

- [ ] **.gitignore configured**
  - Don't commit: xcuserdata, DerivedData, .DS_Store
  - Status: ⚠️ Review .gitignore

- [ ] **All code committed and pushed**
  - git add .
  - git commit -m "Initial Artha release"
  - git push origin main
  - Status: ⚠️ Do before submission

### Repository URL

- [ ] **GitHub URL added to About screen**
  - Update AboutView.swift line with GitHub URL
  - Test link opens correctly
  - Status: ⚠️ Update after repo creation

- [ ] **GitHub URL added to App Store description**
  - Replace [YOUR_GITHUB_URL_HERE] placeholder
  - Status: ⚠️ Update in App Store Connect

---

## 7. Communication with Original Author 📧

### Rafael Soh (Dime Creator)

- [ ] **Email drafted** to Rafael Soh
  - Use template from CONTACT_ORIGINAL_AUTHOR.md
  - Personalize with your details
  - Status: ⚠️ Draft email

- [ ] **Email sent** to Rafael Soh
  - rafasohhh@gmail.com
  - Inform about Artha
  - Ensure GPL compliance understood
  - Ask for feedback/concerns
  - Status: ⚠️ Send before or shortly after submission

- [ ] **Social media mention** (optional)
  - Tag @rarfell on Twitter/X if announcing
  - Credit in launch posts
  - Status: Optional but courteous

---

## 8. Final Pre-Flight Checks ✈️

### Xcode Project

- [ ] **Version number set**
  - Version: 1.0
  - Build: 1 (or current build number)
  - Status: ⚠️ Check in Xcode

- [ ] **Bundle Identifier correct**
  - Not Dime's bundle ID
  - Matches App Store Connect
  - Status: ⚠️ Verify

- [ ] **Signing configured**
  - Automatically manage signing: ON (recommended)
  - Or manual signing with correct certificates
  - Status: ⚠️ Check signing

- [ ] **Deployment target set**
  - iOS 16.0+ recommended
  - Or whatever minimum you're supporting
  - Status: ⚠️ Check in project settings

### Archive & Upload

- [ ] **Archive created successfully**
  - Product > Archive in Xcode
  - Build succeeds
  - Status: ⚠️ Do when ready

- [ ] **Archive uploaded to App Store Connect**
  - Distribute App > App Store Connect
  - Upload succeeds
  - Status: ⚠️ Do after archive

- [ ] **Build appears in App Store Connect**
  - Wait 10-30 minutes for processing
  - Build shows under TestFlight
  - Status: ⚠️ Verify after upload

### App Store Connect Final Review

- [ ] **All metadata entered**
  - Name, subtitle, description
  - Keywords
  - Screenshots for all required sizes
  - Category, age rating
  - Status: ⚠️ Enter before submission

- [ ] **Privacy policy URL added**
  - Required field
  - Status: ⚠️ Must add

- [ ] **Support URL added**
  - Required field
  - Status: ⚠️ Must add

- [ ] **App Review Information filled**
  - Contact email
  - Contact phone
  - Notes for reviewer (mention GPL compliance)
  - Status: ⚠️ Fill out

- [ ] **Build selected** for submission
  - Choose uploaded build
  - Status: ⚠️ Select after upload

- [ ] **Export compliance** (if applicable)
  - If using encryption, declare it
  - Most apps: No encryption beyond standard iOS
  - Status: ⚠️ Answer questionnaire

---

## 9. Legal & Compliance Double-Check ⚖️

### GPL Compliance Final Verification

- [ ] **Source code published BEFORE submission**
  - GPL requires you provide source to users
  - Can't submit without public repo
  - Status: ⚠️ CRITICAL

- [ ] **All modifications clearly marked**
  - Indian features documented
  - New files have copyright headers
  - Status: ⚠️ Review

- [ ] **No additional restrictions added**
  - GPL prohibits adding restrictions
  - App Store terms compatible (GPL allows this)
  - Status: ✅ By design

### Trademark Check

- [ ] **"Artha" name checked** for conflicts
  - Search App Store for existing "Artha"
  - Check if trademarked in your country
  - Status: ⚠️ Do basic search

- [ ] **No use of "Dime" trademark** in marketing
  - Except for attribution/credit
  - Not in app name or branding
  - Status: ⚠️ Verify

---

## 10. Post-Submission Monitoring 📱

### After Clicking "Submit for Review"

- [ ] **Submission confirmation received**
  - Email from App Store Connect
  - Status changes to "Waiting for Review"

- [ ] **Monitor review status daily**
  - Check App Store Connect
  - Respond quickly to any questions

- [ ] **App goes "In Review"**
  - Usually 24-48 hours after submission
  - Review typically takes 24-48 hours

- [ ] **If rejected**
  - Read rejection reason carefully
  - Fix issues
  - Resubmit

- [ ] **If approved**
  - Celebrate! 🎉
  - App goes live (or scheduled date)

---

## 11. Launch Day Checklist 🚀

### When App Goes Live

- [ ] **Verify app is live** on App Store
  - Search for "Artha" on iPhone
  - Download and test

- [ ] **Post launch announcement** on social media
  - Twitter, LinkedIn, Reddit
  - r/IndiaInvestments, r/India

- [ ] **Send email to Rafael Soh**
  - Thank him
  - Share App Store link
  - Request feedback

- [ ] **Monitor reviews and ratings**
  - Respond to reviews
  - Fix reported bugs quickly

- [ ] **Plan first update**
  - Bug fixes
  - User-requested features
  - Within 2-4 weeks

---

## Critical Path Summary

**MUST DO BEFORE SUBMISSION:**

1. ✅ Create Indian color assets (DONE)
2. ✅ Add Legal & Credits section to Settings (DONE)
3. ✅ Create About and License views (DONE)
4. ⚠️ Replace app icon with custom Artha icon (**CRITICAL**)
5. ⚠️ Create GitHub repository and push code (**CRITICAL**)
6. ⚠️ Update AboutView with real GitHub URL (**CRITICAL**)
7. ⚠️ Test all attribution links work
8. ⚠️ Capture 6-8 screenshots
9. ⚠️ Create privacy policy and host it
10. ⚠️ Set up App Store Connect listing
11. ⚠️ Build, archive, and upload to App Store Connect
12. ⚠️ Submit for review

---

## Time Estimates

- **App Icon Design**: 1-2 weeks (if hiring designer)
- **GitHub Setup**: 1-2 hours
- **Testing**: 2-3 days (thorough testing)
- **Screenshots**: 1-2 days
- **App Store Connect Setup**: 2-4 hours
- **Archive & Upload**: 1-2 hours
- **Review Time**: 1-3 days (Apple's side)

**Total Time to Launch**: 2-4 weeks (can be faster if using placeholder icon)

---

## Need Help?

- **GPL Questions**: https://www.gnu.org/licenses/gpl-faq.html
- **App Store Review**: https://developer.apple.com/app-store/review/guidelines/
- **Xcode Help**: https://developer.apple.com/documentation/
- **Original Dime Issues**: https://github.com/rarfell/dimeApp/issues

---

**Last Updated**: November 2024

**Status Legend**:
- ✅ Complete
- ⚠️ Needs Action
- N/A Not Applicable

