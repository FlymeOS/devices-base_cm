.class public Landroid/content/res/flymetheme/FlymeThemeManager;
.super Ljava/lang/Object;
.source "FlymeThemeManager.java"


# static fields
.field public static FLYME_FONT_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String; = null

.field public static FLYME_FONT_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String; = null

.field public static FLYME_FONT_TRAIL_START_TIME_EXTRA:Ljava/lang/String; = null

.field public static FLYME_THEME_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String; = null

.field public static FLYME_THEME_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String; = null

.field public static FLYME_THEME_TRAIL_START_TIME_EXTRA:Ljava/lang/String; = null

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
    const-string v0, "flyme_theme_trail_service_wake_up_intent"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    .line 30
    const-string v0, "flyme_theme_trail_packagename"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    .line 32
    const-string v0, "flyme_theme_trail_start_time"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    .line 34
    const-string v0, "flyme_font_trail_service_wake_up_intent"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    .line 36
    const-string v0, "flyme_font_trail_packagename"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    .line 38
    const-string v0, "flyme_font_trail_start_time"

    sput-object v0, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->DEBUG:Z

    .line 47
    const-string v1, "flyme_theme_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/flymetheme/IFlymeThemeManager;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    .line 49
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mContext:Landroid/content/Context;

    .line 50
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
    .line 120
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 121
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->cancelChangeWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelFontWakeUpTrialService()V
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 163
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->cancelFontWakeUpTrialService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelWakeUpTrialService()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 82
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->cancelWakeUpTrialService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public createChangeWallpaper(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "changeType"    # Ljava/lang/String;
    .param p3, "sendTime"    # J

    .prologue
    .line 102
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 103
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/res/flymetheme/IFlymeThemeManager;->createChangeWallpaper(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isTrialFontAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v2, :cond_0

    .line 180
    const-string v2, "FlymeThemeManager"

    const-string v3, "FlymeThemeService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return v1

    .line 184
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v2}, Landroid/content/res/flymetheme/IFlymeThemeManager;->isTrialFontAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startFontWakeUpTrialService(JLjava/lang/String;II)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "fontPackageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    .line 143
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 144
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_0
    return-void

    .line 148
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

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startWakeUpTrialService(JLjava/lang/String;II)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    .line 63
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 64
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    return-void

    .line 68
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

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
