.class Lcom/android/server/am/LockTaskNotify$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LockTaskNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LockTaskNotify;


# direct methods
.method constructor <init>(Lcom/android/server/am/LockTaskNotify;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify$SettingsObserver;->this$0:Lcom/android/server/am/LockTaskNotify;

    .line 108
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 109
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify$SettingsObserver;->this$0:Lcom/android/server/am/LockTaskNotify;

    # getter for: Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/LockTaskNotify;->access$100(Lcom/android/server/am/LockTaskNotify;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "dev_force_show_navbar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/LockTaskNotify$SettingsObserver;->onChange(Z)V

    .line 118
    return-void
.end method

.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify$SettingsObserver;->this$0:Lcom/android/server/am/LockTaskNotify;

    # getter for: Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/LockTaskNotify;->access$100(Lcom/android/server/am/LockTaskNotify;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/server/am/LockTaskNotify$SettingsObserver;->this$0:Lcom/android/server/am/LockTaskNotify;

    const-string v4, "dev_force_show_navbar"

    const/4 v5, -0x2

    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    # setter for: Lcom/android/server/am/LockTaskNotify;->mDevForceNavbar:Z
    invoke-static {v3, v1}, Lcom/android/server/am/LockTaskNotify;->access$202(Lcom/android/server/am/LockTaskNotify;Z)Z

    .line 124
    return-void

    :cond_0
    move v1, v2

    .line 122
    goto :goto_0
.end method
