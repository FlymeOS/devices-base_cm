.class public Lcom/android/internal/telephony/SmsUsageMonitor;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserverHandler;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserver;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;,
        Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    }
.end annotation


# static fields
.field private static final ATTR_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_FREE:Ljava/lang/String; = "free"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_SMS_POLICY:Ljava/lang/String; = "sms-policy"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_PREMIUM:Ljava/lang/String; = "premium"

.field private static final ATTR_STANDARD:Ljava/lang/String; = "standard"

.field static final CATEGORY_FREE_SHORT_CODE:I = 0x1

.field static final CATEGORY_NOT_SHORT_CODE:I = 0x0

.field static final CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field static final CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field static final CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field private static final DBG:Z = true

.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0xea60

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x1e

.field public static final PREMIUM_SMS_PERMISSION_ALWAYS_ALLOW:I = 0x3

.field public static final PREMIUM_SMS_PERMISSION_ASK_USER:I = 0x1

.field public static final PREMIUM_SMS_PERMISSION_NEVER_ALLOW:I = 0x2

.field public static final PREMIUM_SMS_PERMISSION_UNKNOWN:I = 0x0

.field private static final SHORT_CODE_PATH:Ljava/lang/String; = "/data/misc/sms/codes"

.field private static final SMS_POLICY_FILE_DIRECTORY:Ljava/lang/String; = "/data/misc/sms"

.field private static final SMS_POLICY_FILE_NAME:Ljava/lang/String; = "premium_sms_policy.xml"

.field private static final TAG:Ljava/lang/String; = "SmsUsageMonitor"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCODE:Ljava/lang/String; = "shortcode"

.field private static final TAG_SHORTCODES:Ljava/lang/String; = "shortcodes"

.field private static final TAG_SMS_POLICY_BODY:Ljava/lang/String; = "premium-sms-policy"

.field private static final VDBG:Z


# instance fields
.field private final mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCheckPeriod:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentCountry:Ljava/lang/String;

.field private mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

.field private mMaxAllowed:I

.field private final mPatternFile:Ljava/io/File;

.field private mPatternFileLastModified:J

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPremiumSmsPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

.field private final mSmsLimitObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserverHandler;

.field private final mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/sms/codes"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    .line 304
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    .line 306
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserverHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserverHandler;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsLimitObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SmsLimitObserverHandler;

    .line 308
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    .line 310
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->loadPremiumSmsPolicyDb()V

    .line 311
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/SmsUsageMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/SmsUsageMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->writePremiumSmsPolicyDb()V

    return-void
.end method

.method private static checkCallerIsSystemOrPhoneApp()V
    .locals 5

    .prologue
    .line 643
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 644
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 645
    .local v0, "appId":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_0

    if-nez v1, :cond_1

    .line 646
    :cond_0
    return-void

    .line 648
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed call for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 627
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_1

    .line 640
    :cond_0
    return-void

    .line 631
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 633
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 634
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 638
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 8
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, "patternReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 322
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .local v3, "patternReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 324
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 325
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 331
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 332
    if-eqz v3, :cond_0

    .line 334
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 338
    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    :goto_1
    return-object v4

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "SmsUsageMonitor"

    const-string v5, "Short Code Pattern File not found"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 332
    if-eqz v2, :cond_1

    .line 334
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 338
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 328
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_5
    const-string v4, "SmsUsageMonitor"

    const-string v5, "XML parser exception reading short code pattern file"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 331
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 332
    if-eqz v2, :cond_1

    .line 334
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 335
    :catch_2
    move-exception v4

    goto :goto_3

    .line 331
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 332
    if-eqz v2, :cond_2

    .line 334
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 335
    :cond_2
    :goto_6
    throw v4

    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    goto :goto_6

    .line 331
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_5

    .line 328
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_4

    .line 326
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 342
    const v0, 0x1110011

    .line 343
    .local v0, "id":I
    const/4 v1, 0x0

    .line 345
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 346
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 348
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v2
.end method

.method private getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 355
    :try_start_0
    const-string v7, "shortcodes"

    invoke-static {p1, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 359
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 361
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Parsing pattern data found null"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 384
    .end local v2    # "element":Ljava/lang/String;
    :goto_1
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Country ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 385
    :goto_2
    return-object v7

    .line 365
    .restart local v2    # "element":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v7, "shortcode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 366
    const/4 v7, 0x0

    const-string v9, "country"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "currentCountry":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 369
    const/4 v7, 0x0

    const-string v9, "pattern"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "pattern":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "premium"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "premium":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "free"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "free":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "standard"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "standard":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-direct {v7, v4, v5, v3, v6}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 379
    .end local v0    # "currentCountry":Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "free":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/lang/String;
    .end local v5    # "premium":Ljava/lang/String;
    .end local v6    # "standard":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "SmsUsageMonitor"

    const-string v9, "XML parser exception reading short code patterns"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 376
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "element":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: skipping unknown XML tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 381
    .end local v2    # "element":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 382
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SmsUsageMonitor"

    const-string v9, "I/O exception reading short code patterns"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private isUnderLimit(Ljava/util/ArrayList;I)Z
    .locals 10
    .param p2, "smsWaiting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "sent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 672
    .local v2, "ct":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v8, v4

    sub-long v0, v6, v8

    .line 676
    .local v0, "beginCheckPeriod":J
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-gez v4, :cond_0

    .line 677
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, p2

    iget v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    if-gt v4, v6, :cond_2

    .line 681
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 682
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 684
    :cond_1
    const/4 v4, 0x1

    .line 686
    .end local v3    # "i":I
    :goto_2
    return v4

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method private loadPremiumSmsPolicyDb()V
    .locals 11

    .prologue
    .line 481
    iget-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v8

    .line 482
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v7, :cond_0

    .line 483
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/misc/sms"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, "dir":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "premium_sms_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    .line 486
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    const/4 v3, 0x0

    .line 490
    .local v3, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 491
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 492
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 494
    const-string v7, "premium-sms-policy"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 497
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 499
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 500
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 527
    if-eqz v3, :cond_0

    .line 529
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "infile":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 536
    return-void

    .line 502
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v3    # "infile":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_4
    const-string v7, "package"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 503
    const/4 v7, 0x0

    const-string v9, "name"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "sms-policy"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 505
    .local v6, "policy":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 506
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Error: missing package name attribute"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 518
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 527
    if-eqz v3, :cond_0

    .line 529
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 530
    :catch_1
    move-exception v7

    goto :goto_1

    .line 507
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "policy":Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_3

    .line 508
    :try_start_6
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Error: missing package policy attribute"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 520
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 521
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to read premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 527
    if-eqz v3, :cond_0

    .line 529
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 530
    :catch_3
    move-exception v7

    goto :goto_1

    .line 510
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "policy":Ljava/lang/String;
    :cond_3
    :try_start_9
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 511
    :catch_4
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: non-numeric policy type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 522
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 523
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to parse premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 527
    if-eqz v3, :cond_0

    .line 529
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    .line 530
    :catch_6
    move-exception v7

    goto :goto_1

    .line 515
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_d
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: skipping unknown XML tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 524
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v1

    .line 525
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to parse premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 527
    if-eqz v3, :cond_0

    .line 529
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_1

    .line 530
    :catch_8
    move-exception v7

    goto/16 :goto_1

    .line 527
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_5

    .line 529
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 531
    :cond_5
    :goto_2
    :try_start_11
    throw v7

    .line 535
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "infile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    throw v7

    .line 530
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v3    # "infile":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9
    move-exception v7

    goto/16 :goto_1

    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v9

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 690
    const-string v0, "SmsUsageMonitor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void
.end method

.method public static mergeShortCodeCategories(II)I
    .locals 0
    .param p0, "type1"    # I
    .param p1, "type2"    # I

    .prologue
    .line 95
    if-le p0, p1, :cond_0

    .line 96
    .end local p0    # "type1":I
    :goto_0
    return p0

    .restart local p0    # "type1":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method private removeExpiredTimestamps()V
    .locals 10

    .prologue
    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v8, v5

    sub-long v0, v6, v8

    .line 658
    .local v0, "beginCheckPeriod":J
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v6

    .line 659
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 660
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 661
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 662
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 663
    .local v4, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v0

    if-gez v5, :cond_0

    .line 664
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 667
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    .end local v4    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    return-void
.end method

.method private writePremiumSmsPolicyDb()V
    .locals 9

    .prologue
    .line 543
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v6

    .line 544
    const/4 v3, 0x0

    .line 546
    .local v3, "outfile":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 548
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 549
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 551
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 553
    const/4 v5, 0x0

    const-string v7, "premium-sms-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 555
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 556
    .local v4, "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 557
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    const/4 v7, 0x0

    const-string v8, "sms-policy"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 559
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 566
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "SmsUsageMonitor"

    const-string v7, "Unable to write premium SMS policy database"

    invoke-static {v5, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    if-eqz v3, :cond_0

    .line 569
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 572
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    return-void

    .line 562
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    const-string v7, "premium-sms-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 563
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 565
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 572
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "smsWaiting"    # I

    .prologue
    .line 404
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v2

    .line 405
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->removeExpiredTimestamps()V

    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 408
    .local v0, "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .restart local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->isUnderLimit(Ljava/util/ArrayList;I)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 414
    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkDestination(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    monitor-enter v1

    .line 434
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    const-string v2, "SmsUsageMonitor"

    const-string v3, "isEmergencyNumber"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    monitor-exit v1

    .line 470
    :goto_0
    return v0

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 440
    const-string v2, "SmsUsageMonitor"

    const-string v3, "check disabled"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    monitor-exit v1

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 444
    :cond_1
    if-eqz p2, :cond_5

    .line 445
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 447
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    .line 448
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    const-string v2, "SmsUsageMonitor"

    const-string v3, "Loading SMS Short Code patterns from file"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    .line 454
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    if-nez v2, :cond_4

    .line 455
    const-string v2, "SmsUsageMonitor"

    const-string v3, "Loading SMS Short Code patterns from resource"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    .line 458
    :cond_4
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    .line 462
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    if-eqz v2, :cond_6

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->getNumberCategory(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 466
    :cond_6
    const-string v2, "SmsUsageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No patterns for \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": using generic short code rule"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_7

    .line 468
    const/4 v0, 0x3

    monitor-exit v1

    goto/16 :goto_0

    .line 470
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method dispose()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 391
    return-void
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-static {p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 588
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v2

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 590
    .local v0, "policy":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 591
    const/4 v1, 0x0

    monitor-exit v2

    .line 593
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 595
    .end local v0    # "policy":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 608
    invoke-static {}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneApp()V

    .line 609
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SMS permission type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v1

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsUsageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 623
    return-void

    .line 615
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
