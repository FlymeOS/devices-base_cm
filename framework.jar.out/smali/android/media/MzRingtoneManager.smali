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

.field private static final DEFAULT_RINGTONE_2_FILENAME:Ljava/lang/String; = "05_Technology.ogg"

.field private static final DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

.field public static final DEFAULT_RINGTONE_PHONE_1_URI:Landroid/net/Uri;

.field public static final DEFAULT_RINGTONE_PHONE_2_URI:Landroid/net/Uri;

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

.field public static final TYPE_RINGTONE_1:I = 0x800

.field public static final TYPE_RINGTONE_2:I = 0x1000

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

    .line 47
    const-string/jumbo v0, "mms_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "email_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    .line 59
    const-string v0, "calendar_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

    .line 77
    const-string/jumbo v0, "ringtone_sound_phone_1"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_PHONE_1_URI:Landroid/net/Uri;

    .line 79
    const-string/jumbo v0, "ringtone_sound_phone_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_PHONE_2_URI:Landroid/net/Uri;

    .line 68
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_NOTIFICATION_FILENAME:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_ALARM_FILENAME:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "ro.config.mms_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_FILENAME:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "ro.config.email_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_FILENAME:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "ro.config.calendar_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_FILENAME:Ljava/lang/String;

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "is_music"

    aput-object v1, v0, v6

    const-string v1, "is_ringtone"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/MzRingtoneManager;->RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 97
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

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_ringtone"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MzRingtoneManager;->INTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 107
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

    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "title_key"

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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method private static buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 11
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 509
    if-nez p0, :cond_1

    move-object p0, v6

    .line 526
    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object p0

    .line 512
    .restart local p0    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 513
    .local v9, "callingUser":I
    if-eq v9, p1, :cond_0

    .line 517
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "buildUriWithUserId"

    move v2, p1

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 519
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "str":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 521
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

    .line 522
    .local v8, "authWithUserId":Ljava/lang/String;
    const-string v0, "@"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 523
    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 525
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

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 134
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    .line 167
    if-nez p0, :cond_1

    .line 168
    const/4 v1, 0x0

    .line 223
    :cond_0
    :goto_0
    return-object v1

    .line 171
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 172
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 173
    .local v8, "manager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v10, 0x1

    .line 174
    .local v10, "state1":Z
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v11, 0x1

    .line 176
    .local v11, "state2":Z
    :goto_2
    if-nez v10, :cond_6

    if-nez v11, :cond_6

    .line 177
    const/16 p1, 0x800

    .line 185
    .end local v8    # "manager":Landroid/telephony/TelephonyManager;
    .end local v10    # "state1":Z
    .end local v11    # "state2":Z
    :cond_2
    :goto_3
    const/4 v1, 0x0

    .line 186
    .local v1, "actualDefaultUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 187
    .local v12, "uriString":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v9

    .line 188
    .local v9, "setting":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v9, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 191
    :cond_3
    if-eqz v12, :cond_8

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 192
    :goto_4
    if-nez v1, :cond_a

    .line 193
    const/16 v2, 0x800

    if-ne p1, v2, :cond_9

    .line 194
    const-string/jumbo v2, "ringtone_sound_phone_1"

    invoke-static {p0, v2}, Landroid/media/MzRingtoneManager;->hasRingtoneKeySaved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const/16 v2, 0x800

    invoke-static {p0, v2, p2}, Landroid/media/MzRingtoneManager;->rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 173
    .end local v1    # "actualDefaultUri":Landroid/net/Uri;
    .end local v9    # "setting":Ljava/lang/String;
    .end local v12    # "uriString":Ljava/lang/String;
    .restart local v8    # "manager":Landroid/telephony/TelephonyManager;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 174
    .restart local v10    # "state1":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 178
    .restart local v11    # "state2":Z
    :cond_6
    if-eqz v10, :cond_7

    .line 179
    const/16 p1, 0x800

    goto :goto_3

    .line 181
    :cond_7
    const/16 p1, 0x1000

    goto :goto_3

    .line 191
    .end local v8    # "manager":Landroid/telephony/TelephonyManager;
    .end local v10    # "state1":Z
    .end local v11    # "state2":Z
    .restart local v1    # "actualDefaultUri":Landroid/net/Uri;
    .restart local v9    # "setting":Ljava/lang/String;
    .restart local v12    # "uriString":Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    .line 198
    :cond_9
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_0

    .line 199
    const-string/jumbo v2, "ringtone_sound_phone_2"

    invoke-static {p0, v2}, Landroid/media/MzRingtoneManager;->hasRingtoneKeySaved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-static {p0, p1, p2}, Landroid/media/MzRingtoneManager;->rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 207
    :cond_a
    invoke-static {v1, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 209
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 211
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_b

    .line 218
    if-eqz v6, :cond_0

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 218
    :cond_b
    if-eqz v6, :cond_c

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_c
    :goto_5
    invoke-static {p0, p1, p2}, Landroid/media/MzRingtoneManager;->rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v1

    .line 223
    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v7

    .line 216
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MzRingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActualDefaultRingtoneUri e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    if-eqz v6, :cond_c

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 218
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_d

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
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
    .line 324
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/media/MzRingtoneManager;->getAllRingtoneInfos(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
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

    .line 328
    invoke-static {p0, p1, v0, v0, p2}, Landroid/media/MzRingtoneManager;->getAllRingtoneInfos(Landroid/content/Context;IZZI)Ljava/util/ArrayList;

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
    .line 341
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
    .line 347
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
    .line 361
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v16, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MzRingtoneManager$RingtoneInfo;>;"
    if-nez p0, :cond_0

    .line 398
    :goto_0
    return-object v16

    .line 365
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 366
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_4

    const/4 v3, 0x1

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v4

    .line 368
    .local v4, "internalwhereClause":Ljava/lang/String;
    :goto_1
    const/16 v17, 0x0

    .line 369
    .local v17, "internalCursor":Landroid/database/Cursor;
    if-eqz p3, :cond_1

    .line 370
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p5

    invoke-static {v3, v0}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 371
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Landroid/media/MzRingtoneManager;->INTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_display_name"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 376
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v13, 0x0

    .line 377
    .local v13, "externalCursor":Landroid/database/Cursor;
    if-eqz p4, :cond_3

    .line 378
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .line 379
    .local v18, "status":Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "mounted_ro"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    const/4 v14, 0x1

    .line 381
    .local v14, "externalMediaMounted":Z
    :goto_2
    if-eqz v14, :cond_3

    .line 382
    if-eqz p2, :cond_6

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "externalwhereClause":Ljava/lang/String;
    :goto_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p5

    invoke-static {v3, v0}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 384
    .restart local v2    # "uri":Landroid/net/Uri;
    sget-object v7, Landroid/media/MzRingtoneManager;->EXTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_display_name"

    move-object v5, v1

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 388
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

    .line 391
    .local v12, "cursors":[Landroid/database/Cursor;
    new-instance v11, Lcom/android/internal/database/SortCursor;

    const-string v3, "_display_name"

    invoke-direct {v11, v12, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    .line 392
    .local v11, "allCursor":Landroid/database/Cursor;
    :goto_4
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 393
    invoke-static {v11}, Landroid/media/MzRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 394
    .restart local v2    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-static {v0, v11, v2}, Landroid/media/MzRingtoneManager;->getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v15

    .line 395
    .local v15, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 366
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

    .line 379
    .restart local v4    # "internalwhereClause":Ljava/lang/String;
    .restart local v13    # "externalCursor":Landroid/database/Cursor;
    .restart local v17    # "internalCursor":Landroid/database/Cursor;
    .restart local v18    # "status":Ljava/lang/String;
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 382
    .restart local v14    # "externalMediaMounted":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 397
    .end local v14    # "externalMediaMounted":Z
    .end local v18    # "status":Ljava/lang/String;
    .restart local v11    # "allCursor":Landroid/database/Cursor;
    .restart local v12    # "cursors":[Landroid/database/Cursor;
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 262
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 275
    :goto_0
    return-object v0

    .line 264
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 266
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 267
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 268
    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    .line 269
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 270
    :cond_3
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_4

    .line 271
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 272
    :cond_4
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_5

    .line 273
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 275
    :cond_5
    const/16 v0, 0x800

    if-ne p0, v0, :cond_6

    .line 349
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_PHONE_1_URI:Landroid/net/Uri;

    goto :goto_0

    .line 350
    :cond_6
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_7

    .line 351
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_PHONE_1_URI:Landroid/net/Uri;

    goto :goto_0

    .line 353
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDisplayName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isInternal"    # Z

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 431
    .local v3, "resources":Landroid/content/res/Resources;
    sget v6, Lcom/flyme/internal/R$array;->system_ringtone_value_list:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, "ringtoneValues":[Ljava/lang/String;
    sget v6, Lcom/flyme/internal/R$array;->system_ringtone_name_list:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "ringtoneNames":[Ljava/lang/String;
    if-nez p2, :cond_0

    move-object v2, p1

    .line 445
    .end local p1    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 439
    .end local v2    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    array-length v0, v5

    .line 440
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 441
    aget-object v6, v5, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 442
    aget-object p1, v4, v1

    .line 440
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, p1

    .line 445
    .end local p1    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private static final getInitDefaultRingtoneName(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 270
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 271
    .local v0, "initDefaultName":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 272
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 274
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_ALARM_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    .line 276
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_NOTIFICATION_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_3
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_4

    .line 278
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_4
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5

    .line 280
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_5
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_6

    .line 282
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_6
    const/16 v1, 0x800

    if-ne p0, v1, :cond_7

    .line 284
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_7
    const/16 v1, 0x1000

    if-ne p0, v1, :cond_0

    .line 286
    const-string v0, "05_Technology.ogg"

    goto :goto_0
.end method

.method public static getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    .line 286
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/media/MzRingtoneManager;->getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .prologue
    .line 290
    new-instance v8, Landroid/media/MzRingtoneManager$RingtoneInfo;

    invoke-direct {v8}, Landroid/media/MzRingtoneManager$RingtoneInfo;-><init>()V

    .line 291
    .local v8, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    if-nez p0, :cond_0

    move-object v9, v8

    .line 313
    .end local v8    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .local v9, "info":Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 294
    .end local v9    # "info":Ljava/lang/Object;
    .restart local v8    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 373
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget v1, Lcom/flyme/internal/R$string;->ringtone_unknown:I

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    .line 375
    if-nez p1, :cond_1

    move-object v9, v8

    .line 298
    .restart local v9    # "info":Ljava/lang/Object;
    goto :goto_0

    .line 300
    .end local v9    # "info":Ljava/lang/Object;
    :cond_1
    invoke-static {p1, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 301
    const/4 v6, 0x0

    .line 303
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/media/MzRingtoneManager;->RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    invoke-static {p0, v6, p1}, Landroid/media/MzRingtoneManager;->getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 388
    :cond_2
    if-eqz v6, :cond_3

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v9, v8

    .line 392
    .restart local v9    # "info":Ljava/lang/Object;
    goto :goto_0

    .line 385
    .end local v9    # "info":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 386
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MzRingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtoneInfo e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    if-eqz v6, :cond_3

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 388
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private static getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 481
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

    .line 484
    .local v1, "isInternal":Z
    :goto_0
    new-instance v0, Landroid/media/MzRingtoneManager$RingtoneInfo;

    invoke-direct {v0}, Landroid/media/MzRingtoneManager$RingtoneInfo;-><init>()V

    .line 485
    .local v0, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getTempName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "tempName":Ljava/lang/String;
    invoke-static {p0, v2, v1}, Landroid/media/MzRingtoneManager;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    .line 487
    const-string v5, "_data"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->path:Ljava/lang/String;

    .line 489
    iput-object p2, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->uri:Landroid/net/Uri;

    .line 490
    const-string v5, "is_music"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v3

    :goto_1
    iput-boolean v5, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isMusic:Z

    .line 492
    const-string v5, "is_ringtone"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_2
    iput-boolean v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isRingtone:Z

    .line 494
    iput-boolean v1, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isInternal:Z

    .line 495
    return-object v0

    .end local v0    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .end local v1    # "isInternal":Z
    .end local v2    # "tempName":Ljava/lang/String;
    :cond_0
    move v1, v4

    .line 481
    goto :goto_0

    .restart local v0    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .restart local v1    # "isInternal":Z
    .restart local v2    # "tempName":Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 490
    goto :goto_1

    :cond_2
    move v3, v4

    .line 492
    goto :goto_2
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 571
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 572
    const-string/jumbo v0, "ringtone"

    .line 588
    :goto_0
    return-object v0

    .line 573
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 574
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 575
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 576
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 577
    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    .line 578
    const-string/jumbo v0, "mms_sound"

    goto :goto_0

    .line 579
    :cond_3
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_4

    .line 580
    const-string v0, "calendar_sound"

    goto :goto_0

    .line 581
    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    .line 582
    const-string v0, "email_sound"

    goto :goto_0

    .line 583
    :cond_5
    const/16 v0, 0x800

    if-ne p0, v0, :cond_6

    .line 584
    const-string/jumbo v0, "ringtone_sound_phone_1"

    goto :goto_0

    .line 585
    :cond_6
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_7

    .line 586
    const-string/jumbo v0, "ringtone_sound_phone_2"

    goto :goto_0

    .line 588
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTempName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 501
    const-string v1, "_display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "tempName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    const-string/jumbo v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_0
    return-object v0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 528
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
    .line 533
    const-string v1, "is_ringtone"

    .line 534
    .local v1, "str":Ljava/lang/String;
    and-int/lit8 v2, p0, 0x1

    if-nez v2, :cond_0

    const/16 v2, 0x800

    if-eq p0, v2, :cond_0

    const/16 v2, 0x1000

    if-ne p0, v2, :cond_3

    .line 537
    :cond_0
    const-string v1, "is_ringtone"

    .line 549
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
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

    .line 553
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    if-nez p1, :cond_2

    .line 556
    const-string/jumbo v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v2, "is_music=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v2, "is_ringtone=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_2
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 538
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_4

    .line 539
    const-string v1, "is_alarm"

    goto :goto_0

    .line 540
    :cond_4
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_5

    .line 541
    const-string v1, "is_notification"

    goto :goto_0

    .line 542
    :cond_5
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_6

    .line 543
    const-string v1, "is_notification"

    goto :goto_0

    .line 544
    :cond_6
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_7

    .line 545
    const-string v1, "is_notification"

    goto :goto_0

    .line 546
    :cond_7
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_1

    .line 547
    const-string v1, "is_notification"

    goto/16 :goto_0
.end method

.method private static hasRingtoneKeySaved(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 622
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 623
    .local v8, "ret":Z
    if-eqz v7, :cond_0

    .line 624
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    move v8, v9

    .line 625
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_0
    return v8

    :cond_1
    move v8, v10

    .line 624
    goto :goto_0
.end method

.method private static final rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 12
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 227
    if-nez p0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v6

    .line 230
    :cond_1
    const/4 v6, 0x0

    .line 231
    .local v6, "actualDefaultUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getInitDefaultRingtoneName(I)Ljava/lang/String;

    move-result-object v11

    .line 233
    .local v11, "rollbackFileName":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    .line 236
    .local v2, "projection":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v7, "builder":Ljava/lang/StringBuilder;
    const-string v3, "("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v3, "("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_display_name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v3, "and"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p1, v5}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v3, "MzRingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualDefaultRingtoneUri roll back where = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 248
    .local v1, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 250
    .local v10, "rollBackCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 251
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 253
    .local v9, "id":I
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 255
    invoke-static {p0, p1, v6, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v9    # "id":I
    :cond_2
    if-eqz v10, :cond_0

    .line 261
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 257
    :catch_0
    move-exception v8

    .line 258
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "MzRingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackToDefault e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-eqz v10, :cond_0

    .line 261
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 260
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_3

    .line 261
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 292
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V

    .line 293
    return-void
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 307
    if-nez p0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v0, v1, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 318
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 319
    const/16 v1, 0x800

    invoke-static {p0, v1, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 320
    const/16 v1, 0x1000

    invoke-static {p0, v1, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 312
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
