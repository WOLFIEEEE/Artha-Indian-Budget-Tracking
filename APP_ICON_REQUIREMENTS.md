# App Icon Requirements for Artha

## ⚠️ IMPORTANT
**Current app icons are from Dime and MUST be replaced before App Store submission!**

## Design Brief

### Concept
Artha (Sanskrit: अर्थ, meaning "wealth, prosperity") needs a unique icon that:
- Represents Indian financial management
- Differentiates from Dime's branding
- Is recognizable at all sizes
- Follows Apple's design guidelines

### Design Suggestions

#### Option 1: ₹ Symbol
- Modern, stylized rupee symbol (₹)
- Gradient using Indian flag colors
- Minimalist and professional

#### Option 2: Devanagari Text
- अर्थ (Artha) in Devanagari script
- Bold, readable typography
- Color: Saffron or Gold on dark background

#### Option 3: Lotus + Coin
- Simplified lotus flower (prosperity symbol)
- Integrated with coin/currency element
- Traditional yet modern aesthetic

#### Option 4: Piggy Bank + Indian Elements
- Stylized piggy bank or money pot
- Indian artistic style (Madhubani/Warli inspired)
- Vibrant colors

### Color Palette

Use colors from Indian flag and prosperity themes:
- **Primary**: Indian Saffron (#FF9933)
- **Secondary**: Indian Green (#138808)
- **Accent**: Indian Gold (#FFD700)
- **Alternative**: Artha Orange (#FF6B35)
- **Navy**: #000080 (for contrast)

Consider:
- Gradient from Saffron to Gold
- Two-tone: Saffron + Green
- Monochrome: Gold on dark background

## Technical Requirements

### All Required Sizes

Apple requires these icon sizes (in points):

#### iPhone
- 20pt (2x: 40px, 3x: 60px)
- 29pt (2x: 58px, 3x: 87px)
- 40pt (2x: 80px, 3x: 120px)
- 60pt (2x: 120px, 3x: 180px)

#### iPad
- 20pt (1x: 20px, 2x: 40px)
- 29pt (1x: 29px, 2x: 58px)
- 40pt (1x: 40px, 2x: 80px)
- 76pt (1x: 76px, 2x: 152px)
- 83.5pt (2x: 167px)

#### App Store
- 1024x1024px (no alpha channel)

#### macOS (if supporting Catalyst)
- 16pt, 32pt, 128pt, 256pt, 512pt (all at 1x and 2x)

### Design Specifications

1. **Format**: PNG (no transparency for most sizes, except where noted)
2. **Shape**: Square (iOS automatically applies rounded corners)
3. **Safe Area**: Keep important elements 10% away from edges
4. **No Text**: Avoid small text that becomes unreadable
5. **Test at Small Sizes**: Icon must be recognizable at 20pt
6. **No Alpha Channel**: App Store icon (1024x1024) cannot have transparency
7. **Color Space**: sRGB or Display P3

### Design Guidelines

- **Simplicity**: Simple shapes work better at small sizes
- **Focus**: One main element, not cluttered
- **Color**: 2-3 colors maximum
- **Contrast**: Works on both light and dark backgrounds
- **Unique**: Doesn't look like existing finance apps
- **Cultural**: Subtle Indian elements without stereotypes

## Where to Get Icons Designed

### Budget Options ($50-100)
1. **Fiverr**: Search "iOS app icon design"
   - Look for designers with Apple HIG experience
   - Provide this document as brief
   - Request all sizes + source files

2. **99designs**: Run a design contest
   - Get multiple concepts
   - Choose best design

3. **Upwork**: Hire freelance designer
   - Filter for iOS icon experience

### Premium Options ($200-500)
1. **Dribbble Designers**: Browse dribbble.com/tags/app-icon
2. **App Icon Design Services**: Specialized agencies
3. **Local Indian Designers**: Can better understand cultural elements

### DIY Options (Free)
1. **Canva**: Has app icon templates
   - Limited customization
   - Good for temporary/testing

2. **Figma**: Design yourself
   - Free tool
   - Many tutorials available
   - Export at all required sizes

## Asset Generation Tools

Once you have the main design (1024x1024):

1. **App Icon Generator** (appicon.co)
   - Upload 1024x1024 PNG
   - Generates all sizes
   - Free

2. **MakeAppIcon** (makeappicon.com)
   - Similar to above
   - Includes Android if needed

3. **Xcode Asset Catalog**
   - Drag 1024x1024 into AppIcon set
   - Xcode generates other sizes (iOS 11+)

## Implementation Steps

1. **Design Phase** (1-2 weeks if hiring designer)
   - Share this brief with designer
   - Review 3-5 concept sketches
   - Choose one for final design
   - Request revisions if needed

2. **Get All Sizes**
   - Receive 1024x1024 master + all required sizes
   - Get source files (AI, Sketch, Figma, etc.)

3. **Add to Xcode**
   - Open `app/dime/Assets.xcassets/AppIcon.appiconset/`
   - Replace all icon files
   - Update `Contents.json` if needed
   - Delete old Dime icons

4. **Test**
   - Build app on device
   - Check home screen
   - Verify in Settings
   - Test in Spotlight search
   - Check App Store preview

5. **Update App Icon Variants**
   - AppIcon1, AppIcon2, AppIcon3, AppIcon4 sets
   - Create alternate icons for user choice
   - Use different colors/styles of same design

## Checklist Before Submission

- [ ] All required sizes generated (20pt - 1024pt)
- [ ] App Store icon is 1024x1024 PNG without transparency
- [ ] Icon looks good at small sizes (20pt)
- [ ] Icon is distinct from Dime's branding
- [ ] Colors follow Indian theme
- [ ] Tested on actual device (not just simulator)
- [ ] No copyrighted elements
- [ ] Source files saved for future updates
- [ ] Designer credited (if applicable)

## Design Keywords for Brief

When communicating with designer, use these keywords:
- Indian budget app
- Rupee symbol
- Wealth/prosperity
- Modern + traditional fusion
- Indian flag colors
- Sanskrit theme
- Minimalist
- iOS design guidelines
- Finance/money management

## Examples to Avoid

Don't copy these, but learn from them:
- Generic calculator icons
- Stock piggy banks
- Clipart rupee symbols
- Too complex patterns
- Gradient-only designs
- Text-heavy icons

## Timeline

- **Concept Selection**: 3-7 days
- **Final Design**: 7-14 days
- **Revisions**: 2-3 days
- **Asset Generation**: 1 day
- **Implementation**: 1 day
- **Testing**: 2-3 days

**Total**: 2-4 weeks (can be done while building other features)

## Budget

- **DIY**: $0 (your time)
- **Fiverr**: $50-150
- **Upwork**: $100-300
- **Professional Agency**: $500-2000
- **Recommended**: $75-150 (good quality on Fiverr/Upwork)

## Next Steps

1. Review this document
2. Decide on budget
3. Search for designers OR start designing
4. Share this entire document as design brief
5. Approve concept before final design
6. Implement in Xcode
7. Update README with designer credit

---

**Note**: Do NOT submit to App Store with current Dime icons. Apple may reject for copyright/branding confusion.

