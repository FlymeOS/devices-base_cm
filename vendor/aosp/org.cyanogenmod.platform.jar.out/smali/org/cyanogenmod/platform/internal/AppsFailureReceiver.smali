.class public Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppsFailureReceiver.java"


# static fields
.field private static final EXPIRATION_TIME_IN_MILLISECONDS:I = 0x7530

.field private static final FAILURES_THRESHOLD:I = 0x3


# instance fields
.field private mFailuresCount:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    .line 38
    return-void
.end method

.method private postThemeResetNotification(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x3f080058

    .line 104
    const-string/jumbo v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 105
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "title":Ljava/lang/String;
    const v4, 0x3f080059

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "body":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    const/4 v5, 0x1

    .line 107
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 109
    const/4 v5, 0x0

    .line 107
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 112
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 107
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 113
    const v5, 0x1080078

    .line 107
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 107
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 115
    const-string/jumbo v5, "sys"

    .line 107
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 116
    const/4 v5, 0x2

    .line 107
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 118
    .local v2, "notice":Landroid/app/Notification;
    invoke-virtual {v1, v8, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 55
    .local v2, "currentTime":J
    const-string/jumbo v7, "cyanogenmod.intent.action.APP_FAILURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    iget-wide v8, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x7530

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 58
    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    .line 59
    const/4 v7, 0x0

    iput v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    .line 61
    :cond_0
    iget v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    const/4 v8, 0x3

    if-gt v7, v8, :cond_1

    .line 62
    iget v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    .line 63
    iget v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 66
    const-string/jumbo v7, "cmthemes"

    .line 65
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcyanogenmod/themes/IThemeService$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/themes/IThemeService;

    move-result-object v6

    .line 67
    .local v6, "tm":Lcyanogenmod/themes/IThemeService;
    const-string/jumbo v5, "system"

    .line 68
    .local v5, "themePkgName":Ljava/lang/String;
    new-instance v1, Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    invoke-direct {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 69
    .local v1, "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    const-string/jumbo v7, "system"

    invoke-virtual {v1, v7}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setOverlay(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 70
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setStatusBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 71
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setNavBar(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 72
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setIcons(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 73
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setFont(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 74
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setBootanimation(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 75
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 76
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setLockWallpaper(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 77
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setAlarm(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 78
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setNotification(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 79
    const-string/jumbo v8, "system"

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setRingtone(Ljava/lang/String;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    move-result-object v7

    .line 80
    sget-object v8, Lcyanogenmod/themes/ThemeChangeRequest$RequestType;->THEME_RESET:Lcyanogenmod/themes/ThemeChangeRequest$RequestType;

    .line 69
    invoke-virtual {v7, v8}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->setRequestType(Lcyanogenmod/themes/ThemeChangeRequest$RequestType;)Lcyanogenmod/themes/ThemeChangeRequest$Builder;

    .line 84
    :try_start_0
    invoke-virtual {v1}, Lcyanogenmod/themes/ThemeChangeRequest$Builder;->build()Lcyanogenmod/themes/ThemeChangeRequest;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lcyanogenmod/themes/IThemeService;->requestThemeChange(Lcyanogenmod/themes/ThemeChangeRequest;Z)V

    .line 85
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->postThemeResetNotification(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .end local v5    # "themePkgName":Ljava/lang/String;
    .end local v6    # "tm":Lcyanogenmod/themes/IThemeService;
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    const-string/jumbo v7, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    iput-wide v2, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mStartTime:J

    .line 94
    const/4 v7, 0x0

    iput v7, p0, Lorg/cyanogenmod/platform/internal/AppsFailureReceiver;->mFailuresCount:I

    goto :goto_0

    .line 86
    .restart local v1    # "builder":Lcyanogenmod/themes/ThemeChangeRequest$Builder;
    .restart local v5    # "themePkgName":Ljava/lang/String;
    .restart local v6    # "tm":Lcyanogenmod/themes/IThemeService;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
