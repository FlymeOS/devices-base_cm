.class final Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShortCodePatternMatcher"
.end annotation


# instance fields
.field private final mFreeShortCodePattern:Ljava/util/regex/Pattern;

.field private final mPremiumShortCodePattern:Ljava/util/regex/Pattern;

.field private final mShortCodePattern:Ljava/util/regex/Pattern;

.field private final mStandardShortCodePattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "shortCodeRegex"    # Ljava/lang/String;
    .param p2, "premiumShortCodeRegex"    # Ljava/lang/String;
    .param p3, "freeShortCodeRegex"    # Ljava/lang/String;
    .param p4, "standardShortCodeRegex"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    .line 198
    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    .line 200
    if-eqz p3, :cond_3

    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    .line 202
    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    .line 204
    return-void

    :cond_1
    move-object v0, v1

    .line 197
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 198
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 200
    goto :goto_2
.end method


# virtual methods
.method getNumberCategory(Ljava/lang/String;)I
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mFreeShortCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mStandardShortCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const/4 v0, 0x2

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mPremiumShortCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const/4 v0, 0x4

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->mShortCodePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    const/4 v0, 0x3

    goto :goto_0

    .line 222
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
