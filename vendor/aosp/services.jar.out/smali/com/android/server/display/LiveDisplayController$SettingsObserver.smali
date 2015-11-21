.class final Lcom/android/server/display/LiveDisplayController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LiveDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LiveDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

.field private final DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

.field private final DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

.field private final DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/display/LiveDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LiveDisplayController;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    .line 229
    # getter for: Lcom/android/server/display/LiveDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/display/LiveDisplayController;->access$200(Lcom/android/server/display/LiveDisplayController;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 214
    const-string v0, "display_temperature_day"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    .line 216
    const-string v0, "display_temperature_night"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    .line 218
    const-string v0, "display_temperature_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    .line 220
    const-string v0, "display_auto_outdoor_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

    .line 222
    const-string v0, "display_low_power"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

    .line 224
    const-string v0, "display_color_enhance"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

    .line 226
    const-string v0, "display_color_adjustment"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

    .line 230
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    # invokes: Lcom/android/server/display/LiveDisplayController;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/display/LiveDisplayController;->access$400(Lcom/android/server/display/LiveDisplayController;)V

    .line 251
    return-void
.end method

.method public register(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 233
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/LiveDisplayController;->access$300(Lcom/android/server/display/LiveDisplayController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 234
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 236
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_NIGHT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 237
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_TEMPERATURE_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 238
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_AUTO_OUTDOOR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 239
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_LOW_POWER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ENHANCE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 241
    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$SettingsObserver;->DISPLAY_COLOR_ADJUSTMENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
