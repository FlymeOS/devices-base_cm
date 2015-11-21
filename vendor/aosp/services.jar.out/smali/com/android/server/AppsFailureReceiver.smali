.class public Lcom/android/server/AppsFailureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppsFailureReceiver.java"


# static fields
.field private static final EXPIRATION_TIME_IN_MILLISECONDS:I = 0x7530

.field private static final FAILURES_THRESHOLD:I = 0x3

.field private static final THEME_RESET_NOTIFICATION_ID:I = 0x4641494c


# instance fields
.field private mFailuresCount:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppsFailureReceiver;->mFailuresCount:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AppsFailureReceiver;->mStartTime:J

    return-void
.end method

.method private postThemeResetNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 103
    .local v1, "nm":Landroid/app/NotificationManager;
    const v4, 0x1040091

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "title":Ljava/lang/String;
    const v4, 0x1040092

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "body":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x1080078

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 116
    .local v2, "notice":Landroid/app/Notification;
    const v4, 0x4641494c

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string v7, "com.tmobile.intent.action.APP_FAILURE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 53
    .local v2, "currentTime":J
    const-string v7, "package"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "pkgName":Ljava/lang/String;
    iget-wide v8, p0, Lcom/android/server/AppsFailureReceiver;->mStartTime:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x7530

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 56
    iput-wide v2, p0, Lcom/android/server/AppsFailureReceiver;->mStartTime:J

    .line 57
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AppsFailureReceiver;->mFailuresCount:I

    .line 59
    :cond_0
    iget v7, p0, Lcom/android/server/AppsFailureReceiver;->mFailuresCount:I

    const/4 v8, 0x3

    if-gt v7, v8, :cond_1

    .line 60
    iget v7, p0, Lcom/android/server/AppsFailureReceiver;->mFailuresCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/AppsFailureReceiver;->mFailuresCount:I

    .line 61
    iget v7, p0, Lcom/android/server/AppsFailureReceiver;->mFailuresCount:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 63
    const-string v7, "themes"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/ThemeManager;

    .line 65
    .local v6, "tm":Landroid/content/res/ThemeManager;
    const-string v5, "system"

    .line 66
    .local v5, "themePkgName":Ljava/lang/String;
    new-instance v1, Landroid/content/res/ThemeChangeRequest$Builder;

    invoke-direct {v1}, Landroid/content/res/ThemeChangeRequest$Builder;-><init>()V

    .line 67
    .local v1, "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    const-string v7, "system"

    invoke-virtual {v1, v7}, Landroid/content/res/ThemeChangeRequest$Builder;->setOverlay(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setStatusBar(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setNavBar(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setIcons(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setFont(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setBootanimation(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setWallpaper(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setLockWallpaper(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setAlarm(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setNotification(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setRingtone(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    move-result-object v7

    sget-object v8, Landroid/content/res/ThemeChangeRequest$RequestType;->THEME_RESET:Landroid/content/res/ThemeChangeRequest$RequestType;

    invoke-virtual {v7, v8}, Landroid/content/res/ThemeChangeRequest$Builder;->setRequestType(Landroid/content/res/ThemeChangeRequest$RequestType;)Landroid/content/res/ThemeChangeRequest$Builder;

    .line 81
    invoke-virtual {v1}, Landroid/content/res/ThemeChangeRequest$Builder;->build()Landroid/content/res/ThemeChangeRequest;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/ThemeManager;->requestThemeChange(Landroid/content/res/ThemeChangeRequest;Z)V

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/AppsFailureReceiver;->postThemeResetNotification(Landroid/content/Context;)V

    .line 94
    .end local v1    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    .end local v2    # "currentTime":J
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "themePkgName":Ljava/lang/String;
    .end local v6    # "tm":Landroid/content/res/ThemeManager;
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    const-string v7, "com.tmobile.intent.action.APP_FAILURE_RESET"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    :cond_3
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AppsFailureReceiver;->mFailuresCount:I

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/AppsFailureReceiver;->mStartTime:J

    goto :goto_0

    .line 89
    :cond_4
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    :cond_5
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/AppsFailureReceiver;->mFailuresCount:I

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/AppsFailureReceiver;->mStartTime:J

    goto :goto_0
.end method
