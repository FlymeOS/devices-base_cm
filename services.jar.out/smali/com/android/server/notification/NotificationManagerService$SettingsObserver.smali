.class Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 969
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 963
    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 965
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 970
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 973
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 974
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 976
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 978
    const-string v1, "notification_light_pulse_default_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 981
    const-string v1, "notification_light_pulse_default_led_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 984
    const-string v1, "notification_light_pulse_default_led_off"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 987
    const-string v1, "notification_light_pulse_custom_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 990
    const-string v1, "notification_light_pulse_custom_values"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 993
    const-string v1, "notification_light_screen_on_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 996
    const-string v1, "zen_disable_ducking_during_media_playback"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 999
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAdjustableNotificationLedBrightness:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    const-string v1, "notification_light_brightness_level"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMultipleNotificationLeds:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1005
    const-string v1, "notification_light_multiple_leds_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1009
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1010
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1013
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1014
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    .line 1017
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1020
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$2402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1024
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_color"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$2502(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1029
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_led_on"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2600(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$2602(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1034
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_pulse_default_led_off"

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$2702(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1039
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseCustomLedValues:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2800(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1040
    const-string v1, "notification_light_pulse_custom_enable"

    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_pulse_custom_values"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/notification/NotificationManagerService;->parseNotificationPulseCustomValuesString(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$2900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1049
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mAdjustableNotificationLedBrightness:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v4, "notification_light_brightness_level"

    const/16 v5, 0xff

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLedBrightnessLevel:I
    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$3002(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1056
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMultipleNotificationLeds:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1057
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "notification_light_multiple_leds_enable"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMultipleNotificationLeds:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v0, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mMultipleLedsEnabledSetting:Z
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3102(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1063
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v5, "notification_light_screen_on_enable"

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOnDefault:Z
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$3200(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    invoke-static {v0, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOnEnabled:Z
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->access$1202(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1067
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1069
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$3400(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "zen_disable_ducking_during_media_playback"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_8

    :goto_5
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDisableDuckingWhileMedia:Z
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$3302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1071
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateDisableDucking()V
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1072
    return-void

    :cond_3
    move v1, v3

    .line 1020
    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 1057
    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v3

    .line 1063
    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    move v2, v3

    .line 1069
    goto :goto_5
.end method
