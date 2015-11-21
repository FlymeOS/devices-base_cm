.class Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ALLOW_LIGHTS:Landroid/net/Uri;

.field private final NONE_IS_SILENT:Landroid/net/Uri;

.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 541
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 536
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 537
    const-string v0, "none_is_silent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->NONE_IS_SILENT:Landroid/net/Uri;

    .line 538
    const-string v0, "allow_lights"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ALLOW_LIGHTS:Landroid/net/Uri;

    .line 542
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$200(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 546
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 547
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->NONE_IS_SILENT:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 548
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ALLOW_LIGHTS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 549
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 550
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 554
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 555
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->readZenModeFromSetting()V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->NONE_IS_SILENT:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->readSilentModeFromSetting()V

    goto :goto_0

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ALLOW_LIGHTS:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->readLightsAllowedModeFromSetting()V

    goto :goto_0
.end method
