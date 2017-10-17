.class public Lcom/android/server/notification/CloudNotificationHelper;
.super Ljava/lang/Object;
.source "CloudNotificationHelper.java"


# static fields
.field private static CLOUD_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "com.meizu.cloud"

    sput-object v0, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callReplyIntent(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "state"    # I

    .prologue
    .line 56
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 58
    .local v9, "notification":Landroid/app/Notification;
    if-eqz v9, :cond_1

    .line 59
    iget-object v0, v9, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 61
    :try_start_0
    iget-object v11, v9, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    .line 62
    .local v11, "replyIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/server/notification/CloudNotificationHelper;->getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    .line 64
    .local v8, "id":I
    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 65
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 66
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v0, "flyme:notification_state"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const-string/jumbo v0, "flyme:notification_id"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string/jumbo v0, "flyme:notification_pkg"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 71
    const/high16 v3, 0x10000000

    .line 72
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "id":I
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "replyIntent":Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    return-void

    .line 74
    .restart local v9    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v7

    .line 75
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .local v6, "e":Landroid/content/IntentSender$SendIntentException;
    goto :goto_0
.end method

.method public static getGreenChannelType(Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v3, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 33
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "android.flymeNotificationSetting"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "json":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 36
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "fpgct"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 38
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 42
    .end local v1    # "json":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-object v1, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.originalPackageName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "originalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    return-object v0

    .line 28
    .end local v0    # "originalName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    const/4 v2, 0x0

    return v2
.end method
