.class public Landroid/provider/ThemesContract$MixnMatchColumns;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ThemesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixnMatchColumns"
.end annotation


# static fields
.field public static final COL_KEY:Ljava/lang/String; = "key"

.field public static final COL_PREV_VALUE:Ljava/lang/String; = "previous_value"

.field public static final COL_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final COL_VALUE:Ljava/lang/String; = "value"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEY_ALARM:Ljava/lang/String; = "mixnmatch_alarm"

.field public static final KEY_BOOT_ANIM:Ljava/lang/String; = "mixnmatch_boot_anim"

.field public static final KEY_FONT:Ljava/lang/String; = "mixnmatch_font"

.field public static final KEY_HOMESCREEN:Ljava/lang/String; = "mixnmatch_homescreen"

.field public static final KEY_ICONS:Ljava/lang/String; = "mixnmatch_icons"

.field public static final KEY_LOCKSCREEN:Ljava/lang/String; = "mixnmatch_lockscreen"

.field public static final KEY_NAVIGATION_BAR:Ljava/lang/String; = "mixnmatch_navigation_bar"

.field public static final KEY_NOTIFICATIONS:Ljava/lang/String; = "mixnmatch_notifications"

.field public static final KEY_OVERLAYS:Ljava/lang/String; = "mixnmatch_overlays"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "mixnmatch_ringtone"

.field public static final KEY_STATUS_BAR:Ljava/lang/String; = "mixnmatch_status_bar"

.field public static final ROWS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 271
    sget-object v0, Landroid/provider/ThemesContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "mixnmatch"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 313
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mixnmatch_homescreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mixnmatch_lockscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mixnmatch_icons"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mixnmatch_status_bar"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mixnmatch_boot_anim"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mixnmatch_font"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mixnmatch_notifications"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mixnmatch_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mixnmatch_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mixnmatch_overlays"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mixnmatch_navigation_bar"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/ThemesContract$MixnMatchColumns;->ROWS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static componentToImageColName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 333
    const-string v0, "mixnmatch_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "homescreen_uri"

    .line 358
    :goto_0
    return-object v0

    .line 335
    :cond_0
    const-string v0, "mixnmatch_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const-string v0, "lockscreen_uri"

    goto :goto_0

    .line 337
    :cond_1
    const-string v0, "mixnmatch_boot_anim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    const-string v0, "bootanim_uri"

    goto :goto_0

    .line 339
    :cond_2
    const-string v0, "mixnmatch_font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    const-string v0, "font_uri"

    goto :goto_0

    .line 341
    :cond_3
    const-string v0, "mixnmatch_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    const-string v0, "icon_uri"

    goto :goto_0

    .line 343
    :cond_4
    const-string v0, "mixnmatch_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 344
    const-string v0, "status_uri"

    goto :goto_0

    .line 345
    :cond_5
    const-string v0, "mixnmatch_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notifications mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_6
    const-string v0, "mixnmatch_ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ringtone mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_7
    const-string v0, "mixnmatch_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 350
    const-string v0, "overlays_uri"

    goto :goto_0

    .line 351
    :cond_8
    const-string v0, "mixnmatch_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Status bar mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_9
    const-string v0, "mixnmatch_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Navigation bar mixnmatch component does not have a related column"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string v0, "mods_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "mixnmatch_homescreen"

    .line 389
    :goto_0
    return-object v0

    .line 368
    :cond_0
    const-string v0, "mods_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "mixnmatch_icons"

    goto :goto_0

    .line 370
    :cond_1
    const-string v0, "mods_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const-string v0, "mixnmatch_lockscreen"

    goto :goto_0

    .line 372
    :cond_2
    const-string v0, "mods_fonts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    const-string v0, "mixnmatch_font"

    goto :goto_0

    .line 374
    :cond_3
    const-string v0, "mods_bootanim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    const-string v0, "mixnmatch_boot_anim"

    goto :goto_0

    .line 376
    :cond_4
    const-string v0, "mods_alarms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 377
    const-string v0, "mixnmatch_alarm"

    goto :goto_0

    .line 378
    :cond_5
    const-string v0, "mods_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 379
    const-string v0, "mixnmatch_notifications"

    goto :goto_0

    .line 380
    :cond_6
    const-string v0, "mods_ringtones"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 381
    const-string v0, "mixnmatch_ringtone"

    goto :goto_0

    .line 382
    :cond_7
    const-string v0, "mods_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 383
    const-string v0, "mixnmatch_overlays"

    goto :goto_0

    .line 384
    :cond_8
    const-string v0, "mods_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 385
    const-string v0, "mixnmatch_status_bar"

    goto :goto_0

    .line 386
    :cond_9
    const-string v0, "mods_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 387
    const-string v0, "mixnmatch_navigation_bar"

    goto :goto_0

    .line 389
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mixNMatchKeyToComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "mixnmatchKey"    # Ljava/lang/String;

    .prologue
    .line 397
    const-string v0, "mixnmatch_homescreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "mods_homescreen"

    .line 420
    :goto_0
    return-object v0

    .line 399
    :cond_0
    const-string v0, "mixnmatch_icons"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    const-string v0, "mods_icons"

    goto :goto_0

    .line 401
    :cond_1
    const-string v0, "mixnmatch_lockscreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    const-string v0, "mods_lockscreen"

    goto :goto_0

    .line 403
    :cond_2
    const-string v0, "mixnmatch_font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    const-string v0, "mods_fonts"

    goto :goto_0

    .line 405
    :cond_3
    const-string v0, "mixnmatch_boot_anim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    const-string v0, "mods_bootanim"

    goto :goto_0

    .line 407
    :cond_4
    const-string v0, "mixnmatch_alarm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    const-string v0, "mods_alarms"

    goto :goto_0

    .line 409
    :cond_5
    const-string v0, "mixnmatch_notifications"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 410
    const-string v0, "mods_notifications"

    goto :goto_0

    .line 411
    :cond_6
    const-string v0, "mixnmatch_ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 412
    const-string v0, "mods_ringtones"

    goto :goto_0

    .line 413
    :cond_7
    const-string v0, "mixnmatch_overlays"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 414
    const-string v0, "mods_overlays"

    goto :goto_0

    .line 415
    :cond_8
    const-string v0, "mixnmatch_status_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 416
    const-string v0, "mods_status_bar"

    goto :goto_0

    .line 417
    :cond_9
    const-string v0, "mixnmatch_navigation_bar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 418
    const-string v0, "mods_navigation_bar"

    goto :goto_0

    .line 420
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method
