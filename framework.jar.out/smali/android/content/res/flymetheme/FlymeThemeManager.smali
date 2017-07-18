.class public Landroid/content/res/flymetheme/FlymeThemeManager;
.super Ljava/lang/Object;
.source "FlymeThemeManager.java"


# static fields
.field public static FLYME_CUSTOMIZE_SCREEN_OFF_INTENT:Ljava/lang/String; = null

.field public static FLYME_FONT_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String; = null

.field public static FLYME_FONT_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String; = null

.field public static FLYME_FONT_TRAIL_START_TIME_EXTRA:Ljava/lang/String; = null

.field public static FLYME_THEME_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String; = null

.field public static FLYME_THEME_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String; = null

.field public static FLYME_THEME_TRAIL_START_TIME_EXTRA:Ljava/lang/String; = null

.field public static IS_NEED_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String; = null

.field public static LAST_TIME_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String; = null

.field public static SEND_CC_SCREEN_OFF_BROADCAST_MIN_TIME_INTERVAL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FlymeThemeManager"


# instance fields
.field private final DEBUG:Z

.field final mContext:Landroid/content/Context;

.field private mService:Landroid/content/res/flymetheme/IFlymeThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "flyme_theme_trail_service_wake_up_intent"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "flyme_theme_trail_packagename"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "flyme_theme_trail_start_time"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "flyme_font_trail_service_wake_up_intent"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "flyme_font_trail_packagename"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "flyme_font_trail_start_time"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "flyme_customize_screen_off_intent"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_CUSTOMIZE_SCREEN_OFF_INTENT:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "is_need_send_cc_screen_off_broadcast"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->IS_NEED_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "last_time_send_cc_screen_off_broadcast"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->LAST_TIME_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "send_cc_screen_off_broadcast_min_time_interval"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->SEND_CC_SCREEN_OFF_BROADCAST_MIN_TIME_INTERVAL:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->DEBUG:Z

    .line 58
    const-string/jumbo v1, "flyme_theme_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/flymetheme/IFlymeThemeManager;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    .line 60
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mContext:Landroid/content/Context;

    .line 57
    return-void

    .line 26
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelChangeWallpaper()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 132
    const-string/jumbo v1, "FlymeThemeManager"

    const-string/jumbo v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 136
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->cancelChangeWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 139
    return-void
.end method

.method public cancelFontWakeUpTrialService()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 174
    const-string/jumbo v1, "FlymeThemeManager"

    const-string/jumbo v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 178
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->cancelFontWakeUpTrialService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    return-void
.end method

.method public cancelWakeUpTrialService()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 93
    const-string/jumbo v1, "FlymeThemeManager"

    const-string/jumbo v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->cancelWakeUpTrialService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 100
    return-void
.end method

.method public createChangeWallpaper(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "changeType"    # Ljava/lang/String;
    .param p3, "sendTime"    # J

    .prologue
    .line 113
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 114
    const-string/jumbo v1, "FlymeThemeManager"

    const-string/jumbo v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/res/flymetheme/IFlymeThemeManager;->createChangeWallpaper(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 121
    return-void
.end method

.method public isTrialFontAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 191
    const-string/jumbo v1, "FlymeThemeManager"

    const-string/jumbo v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v3

    .line 195
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->isTrialFontAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 199
    return v3
.end method

.method public startFontWakeUpTrialService(JLjava/lang/String;II)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "fontPackageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    .line 154
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 155
    const-string/jumbo v1, "FlymeThemeManager"

    const-string/jumbo v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 159
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/content/res/flymetheme/IFlymeThemeManager;->startFontWakeUpTrialService(JLjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 163
    return-void
.end method

.method public startWakeUpTrialService(JLjava/lang/String;II)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    .line 74
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 75
    const-string/jumbo v1, "FlymeThemeManager"

    const-string/jumbo v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/content/res/flymetheme/IFlymeThemeManager;->startWakeUpTrialService(JLjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    return-void
.end method
