.class public Landroid/media/MzRingtoneManager;
.super Ljava/lang/Object;
.source "MzRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MzRingtoneManager$RingtoneInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALARM_FILENAME:Ljava/lang/String;

.field private static final DEFAULT_CALENDAR_FILENAME:Ljava/lang/String;

.field public static final DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

.field private static final DEFAULT_EMAIL_FILENAME:Ljava/lang/String;

.field public static final DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

.field private static final DEFAULT_MMS_FILENAME:Ljava/lang/String;

.field public static final DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

.field private static final DEFAULT_NOTIFICATION_FILENAME:Ljava/lang/String;

.field private static final DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final EXTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

.field private static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

.field public static final INTERNAL_RINGTONE_UIR_PREFIX:Ljava/lang/String; = "content://media/internal"

.field private static final RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MzRingtoneManager"

.field public static final TYPE_CALENDAR:I = 0x400

.field public static final TYPE_EMAIL:I = 0x200

.field public static final TYPE_MMS:I = 0x100

.field private static final URI_COLUMN_INDEX:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-string v0, "mms_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "email_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    .line 56
    const-string v0, "calendar_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

    .line 65
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 68
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_NOTIFICATION_FILENAME:Ljava/lang/String;

    .line 71
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_ALARM_FILENAME:Ljava/lang/String;

    .line 74
    const-string v0, "ro.config.mms_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_FILENAME:Ljava/lang/String;

    .line 77
    const-string v0, "ro.config.email_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_FILENAME:Ljava/lang/String;

    .line 80
    const-string v0, "ro.config.calendar_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_FILENAME:Ljava/lang/String;

    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "is_music"

    aput-object v1, v0, v6

    const-string v1, "is_ringtone"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/MzRingtoneManager;->RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 94
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MzRingtoneManager;->INTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 104
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MzRingtoneManager;->EXTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAllRingtoneInfos(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MzRingtoneManager$RingtoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/media/MzRingtoneManager;->getAllRingtoneInfos(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllRingtoneInfos(Landroid/content/Context;IZZ)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "includeInternal"    # Z
    .param p3, "includeExternal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MzRingtoneManager$RingtoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/media/MzRingtoneManager;->getAudioInfos(Landroid/content/Context;IZZZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_4

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_5

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDisplayName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isInternal"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "resources":Landroid/content/res/Resources;
    sget v7, Lcom/flyme/internal/R$array;->system_ringtone_value_list:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .local v6, "ringtoneValues":[Ljava/lang/String;
    sget v7, Lcom/flyme/internal/R$array;->system_ringtone_name_list:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .local v5, "ringtoneNames":[Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "dotIndex":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_1

    move-object v3, p1

    .end local p1    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    array-length v0, v6

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v7, v6, v2

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object p1, v5, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v3, p1

    .end local p1    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private static final getInitDefaultRingtoneName(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .local v0, "initDefaultName":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_ALARM_FILENAME:Ljava/lang/String;

    goto :goto_0

    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_NOTIFICATION_FILENAME:Ljava/lang/String;

    goto :goto_0

    :cond_3
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_4

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_FILENAME:Ljava/lang/String;

    goto :goto_0

    :cond_4
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_FILENAME:Ljava/lang/String;

    goto :goto_0

    :cond_5
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_0

    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_FILENAME:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/media/MzRingtoneManager;->getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move v1, v3

    .local v1, "isInternal":Z
    :goto_0
    new-instance v0, Landroid/media/MzRingtoneManager$RingtoneInfo;

    invoke-direct {v0}, Landroid/media/MzRingtoneManager$RingtoneInfo;-><init>()V

    .local v0, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    invoke-static {p1, v1}, Landroid/media/MzRingtoneManager;->getTempName(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v2

    .local v2, "tempName":Ljava/lang/String;
    invoke-static {p0, v2, v1}, Landroid/media/MzRingtoneManager;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    const-string v5, "_data"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->path:Ljava/lang/String;

    iput-object p2, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->uri:Landroid/net/Uri;

    const-string v5, "is_music"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v3

    :goto_1
    iput-boolean v5, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isMusic:Z

    const-string v5, "is_ringtone"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_2
    iput-boolean v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isRingtone:Z

    iput-boolean v1, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isInternal:Z

    return-object v0

    .end local v0    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .end local v1    # "isInternal":Z
    .end local v2    # "tempName":Ljava/lang/String;
    :cond_0
    move v1, v4

    goto :goto_0

    .restart local v0    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .restart local v1    # "isInternal":Z
    .restart local v2    # "tempName":Ljava/lang/String;
    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method private static getTempName(Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "isInternal"    # Z

    .prologue
    if-eqz p1, :cond_1

    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "tempName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    .end local v0    # "tempName":Ljava/lang/String;
    :cond_1
    const-string v1, "_display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "tempName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 331
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getWhereClause(IZ)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # I
    .param p1, "isInternal"    # Z

    .prologue
    const-string v1, "is_ringtone"

    .local v1, "str":Ljava/lang/String;
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_2

    const-string v1, "is_ringtone"

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is_music=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is_ringtone=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_3

    const-string v1, "is_alarm"

    goto :goto_0

    :cond_3
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_4

    const-string v1, "is_notification"

    goto :goto_0

    :cond_4
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_5

    const-string v1, "is_notification"

    goto :goto_0

    :cond_5
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_6

    const-string v1, "is_notification"

    goto :goto_0

    :cond_6
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_0

    const-string v1, "is_notification"

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V

    return-void
.end method

.method private static buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 11
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    move-object p0, v6

    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .local v9, "callingUser":I
    if-eq v9, p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "buildUriWithUserId"

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "str":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .local v7, "auth":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "authWithUserId":Ljava/lang/String;
    const-string v0, "@"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_2
    const-string v0, "MzRingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " buildUriWithUserId resutl uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    .local v1, "actualDefaultUri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v7, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .local v8, "uriString":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 301
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, p2}, Landroid/media/MzRingtoneManager;->rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAllRingtoneInfos(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MzRingtoneManager$RingtoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0, p2}, Landroid/media/MzRingtoneManager;->getAllRingtoneInfos(Landroid/content/Context;IZZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllRingtoneInfos(Landroid/content/Context;IZZI)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "includeInternal"    # Z
    .param p3, "includeExternal"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZZI)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MzRingtoneManager$RingtoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/media/MzRingtoneManager;->getAudioInfos(Landroid/content/Context;IZZZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioInfos(Landroid/content/Context;IZZZI)Ljava/util/ArrayList;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "justRingtone"    # Z
    .param p3, "includeInternal"    # Z
    .param p4, "includeExternal"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZZZI)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MzRingtoneManager$RingtoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MzRingtoneManager$RingtoneInfo;>;"
    if-nez p0, :cond_0

    :goto_0
    return-object v16

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_4

    const/4 v3, 0x1

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v4

    .local v4, "internalwhereClause":Ljava/lang/String;
    :goto_1
    const/16 v17, 0x0

    .local v17, "internalCursor":Landroid/database/Cursor;
    if-eqz p3, :cond_1

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p5

    invoke-static {v3, v0}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Landroid/media/MzRingtoneManager;->INTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title_key"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v13, 0x0

    .local v13, "externalCursor":Landroid/database/Cursor;
    if-eqz p4, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .local v18, "status":Ljava/lang/String;
    const-string v3, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mounted_ro"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    const/4 v14, 0x1

    .local v14, "externalMediaMounted":Z
    :goto_2
    if-eqz v14, :cond_3

    if-eqz p2, :cond_6

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v8

    .local v8, "externalwhereClause":Ljava/lang/String;
    :goto_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p5

    invoke-static {v3, v0}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    sget-object v7, Landroid/media/MzRingtoneManager;->EXTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "title_key"

    move-object v5, v1

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .end local v2    # "uri":Landroid/net/Uri;
    .end local v8    # "externalwhereClause":Ljava/lang/String;
    .end local v14    # "externalMediaMounted":Z
    .end local v18    # "status":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    new-array v12, v3, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v17, v12, v3

    const/4 v3, 0x1

    aput-object v13, v12, v3

    .local v12, "cursors":[Landroid/database/Cursor;
    new-instance v11, Lcom/android/internal/database/SortCursor;

    const-string v3, "title_key"

    invoke-direct {v11, v12, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    .local v11, "allCursor":Landroid/database/Cursor;
    :goto_4
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v11}, Landroid/media/MzRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-static {v0, v11, v2}, Landroid/media/MzRingtoneManager;->getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v15

    .local v15, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v2    # "uri":Landroid/net/Uri;
    .end local v4    # "internalwhereClause":Ljava/lang/String;
    .end local v11    # "allCursor":Landroid/database/Cursor;
    .end local v12    # "cursors":[Landroid/database/Cursor;
    .end local v13    # "externalCursor":Landroid/database/Cursor;
    .end local v15    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .end local v17    # "internalCursor":Landroid/database/Cursor;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .restart local v4    # "internalwhereClause":Ljava/lang/String;
    .restart local v13    # "externalCursor":Landroid/database/Cursor;
    .restart local v17    # "internalCursor":Landroid/database/Cursor;
    .restart local v18    # "status":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .restart local v14    # "externalMediaMounted":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .end local v14    # "externalMediaMounted":Z
    .end local v18    # "status":Ljava/lang/String;
    .restart local v11    # "allCursor":Landroid/database/Cursor;
    .restart local v12    # "cursors":[Landroid/database/Cursor;
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .prologue
    new-instance v8, Landroid/media/MzRingtoneManager$RingtoneInfo;

    invoke-direct {v8}, Landroid/media/MzRingtoneManager$RingtoneInfo;-><init>()V

    .local v8, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    if-nez p0, :cond_0

    move-object v9, v8

    .end local v8    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .local v9, "info":Ljava/lang/Object;
    :goto_0
    return-object v9

    .end local v9    # "info":Ljava/lang/Object;
    .restart local v8    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .local v10, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez p1, :cond_1

    sget v1, Lcom/flyme/internal/R$string;->ringtone_unknown:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    move-object v9, v8

    .restart local v9    # "info":Ljava/lang/Object;
    goto :goto_0

    .end local v9    # "info":Ljava/lang/Object;
    :cond_1
    invoke-static {p1, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    const/4 v6, 0x0

    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/media/MzRingtoneManager;->RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v6, p1}, Landroid/media/MzRingtoneManager;->getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_2
    move-object v9, v8

    .restart local v9    # "info":Ljava/lang/Object;
    goto :goto_0

    .end local v9    # "info":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    sget v1, Lcom/flyme/internal/R$string;->ringtone_unknown:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    goto :goto_2
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "ringtone"

    :goto_0
    return-object v0

    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "notification_sound"

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "alarm_alert"

    goto :goto_0

    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    const-string v0, "mms_sound"

    goto :goto_0

    :cond_3
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_4

    const-string v0, "calendar_sound"

    goto :goto_0

    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    const-string v0, "email_sound"

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 13
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v4

    :cond_0
    const/4 v6, 0x0

    .local v6, "actualDefaultUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getInitDefaultRingtoneName(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "rollbackFileName":Ljava/lang/String;
    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    .local v2, "projection":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, "builder":Ljava/lang/StringBuilder;
    const-string v3, "("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_display_name=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v11}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "MzRingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getActualDefaultRingtoneUri roll back where = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, "rollBackCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .local v8, "id":I
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v8

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-static {p0, p1, v6, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V

    .end local v8    # "id":I
    :goto_1
    move-object v4, v6

    goto/16 :goto_0

    :cond_1
    const-string v3, "MzRingtoneManager"

    const-string v4, " getActualDefaultRingtoneUri roll back failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 391
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v0, v1, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
