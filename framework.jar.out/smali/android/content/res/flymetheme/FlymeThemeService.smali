.class public Landroid/content/res/flymetheme/FlymeThemeService;
.super Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;
.source "FlymeThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/flymetheme/FlymeThemeService$1;,
        Landroid/content/res/flymetheme/FlymeThemeService$2;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "FlymeThemeService"


# instance fields
.field private final CHANGE_WALLPAPER_MESSAGE:I

.field private final DEBUG:Z

.field private final WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE:I

.field private final WAKE_UP_THEME_TRIAL_SERVICE_MESSAGE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCCScreenOffIntent:Landroid/content/Intent;

.field private mChangeWallpaperIntent:Ljava/lang/String;

.field private mChangeWallpaperTime:J

.field private mChangeWallpaperType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFontIntervalTime:I

.field private mFontPackageName:Ljava/lang/String;

.field private mFontWakeUpCount:I

.field private mFontWakeUpIntent:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private mThemeIntervalTime:I

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeWakeUpCount:I

.field private mThemeWakeUpIntent:Landroid/content/Intent;

.field private mTrialFontStartTime:J

.field private mTrialThemeStartTime:J


# direct methods
.method static synthetic -get0(Landroid/content/res/flymetheme/FlymeThemeService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mCCScreenOffIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get10(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get11(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    return v0
.end method

.method static synthetic -get12(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    return v0
.end method

.method static synthetic -get14(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get15(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    return-wide v0
.end method

.method static synthetic -get16(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    return-wide v0
.end method

.method static synthetic -get2(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    return-wide v0
.end method

.method static synthetic -get4(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    return v0
.end method

.method static synthetic -get7(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    return v0
.end method

.method static synthetic -get9(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -set0(Landroid/content/res/flymetheme/FlymeThemeService;I)I
    .locals 0

    iput p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    return p1
.end method

.method static synthetic -set1(Landroid/content/res/flymetheme/FlymeThemeService;I)I
    .locals 0

    iput p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/res/flymetheme/FlymeThemeService;)Z
    .locals 1

    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->isNeedSendCCScreenOffBroadcast()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;-><init>()V

    .line 26
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    .line 30
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->WAKE_UP_THEME_TRIAL_SERVICE_MESSAGE:I

    .line 31
    const/16 v0, 0x3ea

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->CHANGE_WALLPAPER_MESSAGE:I

    .line 32
    const/16 v0, 0x3eb

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE:I

    .line 34
    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    .line 35
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    .line 36
    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    .line 37
    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    .line 38
    new-instance v0, Landroid/content/Intent;

    .line 39
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    .line 38
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;

    .line 41
    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    .line 42
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    .line 43
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    .line 45
    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    .line 46
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    .line 47
    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    .line 48
    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    .line 49
    new-instance v0, Landroid/content/Intent;

    .line 50
    sget-object v1, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    .line 49
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;

    .line 51
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_CUSTOMIZE_SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mCCScreenOffIntent:Landroid/content/Intent;

    .line 53
    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeService$1;

    invoke-direct {v0, p0}, Landroid/content/res/flymetheme/FlymeThemeService$1;-><init>(Landroid/content/res/flymetheme/FlymeThemeService;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeService$2;

    invoke-direct {v0, p0}, Landroid/content/res/flymetheme/FlymeThemeService$2;-><init>(Landroid/content/res/flymetheme/FlymeThemeService;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    .line 80
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    .line 79
    return-void

    :cond_0
    move v0, v1

    .line 26
    goto :goto_0
.end method

.method private checkSystemApp()Z
    .locals 4

    .prologue
    .line 234
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "mClient":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 236
    const-string/jumbo v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkSystemApp------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeService;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeService;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isNeedSendCCScreenOffBroadcast()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    .line 68
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 69
    iget-object v8, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/content/res/flymetheme/FlymeThemeManager;->SEND_CC_SCREEN_OFF_BROADCAST_MIN_TIME_INTERVAL:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 70
    .local v2, "minTimeInterval":J
    iget-object v8, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/content/res/flymetheme/FlymeThemeManager;->LAST_TIME_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 71
    .local v0, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v0

    .line 72
    .local v4, "timeInterval":J
    cmp-long v8, v4, v2

    if-gez v8, :cond_0

    cmp-long v8, v4, v10

    if-gez v8, :cond_2

    .line 73
    :cond_0
    iget-object v8, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/content/res/flymetheme/FlymeThemeManager;->IS_NEED_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0

    .line 76
    .end local v0    # "lastTime":J
    .end local v2    # "minTimeInterval":J
    .end local v4    # "timeInterval":J
    :cond_2
    return v7
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 244
    return v4

    .line 247
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 248
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 249
    return v5

    .line 250
    :cond_1
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    .line 251
    return v5

    .line 253
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    return v4

    .line 257
    .end local v0    # "e1":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    return v4
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 92
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method


# virtual methods
.method public cancelChangeWallpaper()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 225
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "cancelChangeWallpaper------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    return-void
.end method

.method public cancelFontWakeUpTrialService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 282
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "cancelFontWakeUpTrialService------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    .line 290
    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    .line 291
    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    .line 280
    return-void
.end method

.method public cancelWakeUpTrialService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 182
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "canceWakeUpTrialService------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    .line 190
    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    .line 191
    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    .line 180
    return-void
.end method

.method public createChangeWallpaper(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "changeType"    # Ljava/lang/String;
    .param p3, "sendTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3ea

    .line 203
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 204
    const-string/jumbo v0, "FlymeThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createChangeWallpaper------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iput-wide p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    .line 212
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 202
    return-void
.end method

.method public isTrialFontAvailable()Z
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 299
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "isTrialFontAvailable------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public startFontWakeUpTrialService(JLjava/lang/String;II)V
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "fontPackageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    const/16 v4, 0x3eb

    .line 265
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    iput-wide p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    .line 270
    iput-object p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    .line 271
    iput p4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    .line 272
    iput p5, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    .line 273
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    .line 264
    return-void
.end method

.method public startWakeUpTrialService(JLjava/lang/String;II)V
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    const/16 v4, 0x3e9

    .line 162
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iput-wide p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    .line 167
    iput-object p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    .line 168
    iput p4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    .line 169
    iput p5, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    .line 170
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    .line 161
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->registerBroadcastReceiver()V

    .line 83
    return-void
.end method
