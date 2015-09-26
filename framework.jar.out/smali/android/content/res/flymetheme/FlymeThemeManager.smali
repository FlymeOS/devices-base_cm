.class public Landroid/content/res/flymetheme/FlymeThemeManager;
.super Ljava/lang/Object;
.source "FlymeThemeManager.java"


# static fields
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

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->DEBUG:Z

    .line 41
    const-string v1, "flyme_theme_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/flymetheme/IFlymeThemeManager;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    .line 43
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mContext:Landroid/content/Context;

    .line 44
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
    .line 114
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 115
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->cancelChangeWallpaper()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelWakeUpTrialService()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 76
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1}, Landroid/content/res/flymetheme/IFlymeThemeManager;->cancelWakeUpTrialService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
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
    .line 96
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 97
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/res/flymetheme/IFlymeThemeManager;->createChangeWallpaper(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
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
    .line 57
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeManager;->mService:Landroid/content/res/flymetheme/IFlymeThemeManager;

    if-nez v1, :cond_0

    .line 58
    const-string v1, "FlymeThemeManager"

    const-string v2, "FlymeThemeService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 62
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

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
