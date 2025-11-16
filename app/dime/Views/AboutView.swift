//
//  AboutView.swift
//  Artha
//
//  Created for Indian market adaptation
//

import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) var dismiss
    
    var appVersion: String {
        UIApplication.appVersion ?? "1.0"
    }
    
    var buildNumber: String {
        UIApplication.buildNumber ?? "1"
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                // App Icon and Name
                VStack(spacing: 10) {
                    Image("AppIcon1_EG")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    
                    Text("Artha")
                        .font(.system(size: 32, weight: .bold, design: .rounded))
                        .foregroundColor(.PrimaryText)
                    
                    Text("अर्थ")
                        .font(.system(size: 24, weight: .medium, design: .rounded))
                        .foregroundColor(.SubtitleText)
                    
                    Text("Sanskrit: Wealth, Prosperity")
                        .font(.system(.footnote, design: .rounded).weight(.medium))
                        .foregroundColor(.SubtitleText)
                    
                    Text("Version \(appVersion) (\(buildNumber))")
                        .font(.system(.caption, design: .rounded).weight(.medium))
                        .foregroundColor(.SubtitleText)
                }
                .padding(.top, 20)
                
                Divider()
                    .padding(.horizontal)
                
                // Based on Dime
                VStack(spacing: 12) {
                    Text("Built on Open Source")
                        .font(.system(.headline, design: .rounded).weight(.semibold))
                        .foregroundColor(.PrimaryText)
                    
                    Text("Artha is based on Dime, an excellent open-source budget tracker created by Rafael Soh. We've adapted it specifically for the Indian market with features like Lakh/Crore format, Hindi language, and Financial Year support.")
                        .font(.system(.subheadline, design: .rounded).weight(.medium))
                        .foregroundColor(.SubtitleText)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Link(destination: URL(string: "https://github.com/rarfell/dimeApp")!) {
                        HStack(spacing: 8) {
                            Image(systemName: "arrow.triangle.branch")
                                .font(.system(.body, design: .rounded).weight(.semibold))
                            Text("View Original: Dime")
                                .font(.system(.body, design: .rounded).weight(.semibold))
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .background(Color.DarkBackground, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                    
                    Text("Created by Rafael Soh (@rarfell)")
                        .font(.system(.caption, design: .rounded).weight(.medium))
                        .foregroundColor(.SubtitleText)
                }
                .padding(.horizontal, 30)
                
                Divider()
                    .padding(.horizontal)
                
                // What Makes Artha Different
                VStack(spacing: 12) {
                    Text("What Makes Artha Unique?")
                        .font(.system(.headline, design: .rounded).weight(.semibold))
                        .foregroundColor(.PrimaryText)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        FeatureRow(icon: "🔢", text: "Indian number format (₹10L, ₹1Cr)")
                        FeatureRow(icon: "🗣️", text: "Hindi language support (हिंदी)")
                        FeatureRow(icon: "📊", text: "Financial Year tracking (April-March)")
                        FeatureRow(icon: "🏪", text: "40+ Indian categories (Auto, Kirana, LPG)")
                        FeatureRow(icon: "🪔", text: "Festival calendar (Diwali, Holi, Eid)")
                        FeatureRow(icon: "💳", text: "Payment tracking (UPI, Cash, Card)")
                        FeatureRow(icon: "📱", text: "Bill splitting with friends")
                        FeatureRow(icon: "🏦", text: "EMI & lending tracker")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 30)
                
                Divider()
                    .padding(.horizontal)
                
                // Open Source License
                VStack(spacing: 12) {
                    Text("Open Source & Free Forever")
                        .font(.system(.headline, design: .rounded).weight(.semibold))
                        .foregroundColor(.PrimaryText)
                    
                    Text("Artha is licensed under GNU General Public License v3.0. This means the app is completely free, with no ads or paywalls, and the source code is publicly available.")
                        .font(.system(.subheadline, design: .rounded).weight(.medium))
                        .foregroundColor(.SubtitleText)
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Link(destination: URL(string: "https://github.com/yourusername/artha-budget-tracker")!) {
                        HStack(spacing: 8) {
                            Image(systemName: "chevron.left.forwardslash.chevron.right")
                                .font(.system(.body, design: .rounded).weight(.semibold))
                            Text("View Source Code")
                                .font(.system(.body, design: .rounded).weight(.semibold))
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .background(Color.IncomeGreen, in: RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                    
                    Text("⚠️ Update this URL with your GitHub repository")
                        .font(.system(.caption2, design: .rounded).weight(.medium))
                        .foregroundColor(.AlertRed)
                        .padding(.top, 5)
                }
                .padding(.horizontal, 30)
                
                Divider()
                    .padding(.horizontal)
                
                // Copyright Notice
                VStack(spacing: 8) {
                    Text("Copyright © 2024 Artha")
                        .font(.system(.caption, design: .rounded).weight(.medium))
                        .foregroundColor(.SubtitleText)
                    
                    Text("Original Dime © 2022 Rafael Soh")
                        .font(.system(.caption, design: .rounded).weight(.medium))
                        .foregroundColor(.SubtitleText)
                    
                    Text("Licensed under GPL v3.0")
                        .font(.system(.caption, design: .rounded).weight(.medium))
                        .foregroundColor(.SubtitleText)
                }
                .padding(.bottom, 30)
            }
        }
        .navigationBarTitle("About Artha", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                            .font(.system(.body, design: .rounded).weight(.semibold))
                        Text("Settings")
                            .font(.system(.body, design: .rounded))
                    }
                    .foregroundColor(.PrimaryText)
                }
            }
        }
        .background(Color.PrimaryBackground)
    }
}

struct FeatureRow: View {
    let icon: String
    let text: String
    
    var body: some View {
        HStack(spacing: 12) {
            Text(icon)
                .font(.system(size: 24))
                .frame(width: 32)
            
            Text(text)
                .font(.system(.subheadline, design: .rounded).weight(.medium))
                .foregroundColor(.PrimaryText)
        }
    }
}

