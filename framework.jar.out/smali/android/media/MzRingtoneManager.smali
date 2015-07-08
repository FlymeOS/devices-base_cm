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

.field private static final EXTERNAL_SDCARD_PREFIX:Ljava/lang/String; = "/storage/sdcard"

.field private static final ID_COLUMN_INDEX:I = 0x0

.field private static final IGNORE_EXTERNAL_SDCARD_INFO:Z = true

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
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 143
    if-nez p0, :cond_1

    .line 144
    const/4 v3, 0x0

    .line 203
    :cond_0
    :goto_0
    return-object v3

    .line 146
    :cond_1
    const/4 v3, 0x0

    .line 147
    .local v3, "actualDefaultUri":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v16

    .line 148
    .local v16, "uri":Landroid/net/Uri;
    if-eqz v16, :cond_2

    .line 149
    invoke-static/range {p0 .. p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 166
    :goto_1
    if-eqz v3, :cond_0

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 170
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 171
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 172
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 151
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_2
    const/4 v15, 0x0

    .line 152
    .local v15, "setting":Ljava/lang/String;
    move/from16 v0, p1

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_3

    .line 153
    const-string v15, "mms_sound"

    .line 162
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 164
    .local v17, "uriString":Ljava/lang/String;
    if-eqz v17, :cond_6

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_3
    goto :goto_1

    .line 154
    .end local v17    # "uriString":Ljava/lang/String;
    :cond_3
    move/from16 v0, p1

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_4

    .line 155
    const-string v15, "email_sound"

    goto :goto_2

    .line 156
    :cond_4
    move/from16 v0, p1

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_5

    .line 157
    const-string v15, "calendar_sound"

    goto :goto_2

    .line 159
    :cond_5
    const-string v4, "MzRingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActualDefaultRingtoneUri invaild type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " return null"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v3, 0x0

    goto :goto_0

    .line 164
    .restart local v17    # "uriString":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 176
    .end local v15    # "setting":Ljava/lang/String;
    .end local v17    # "uriString":Ljava/lang/String;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v11    # "c":Landroid/database/Cursor;
    :cond_7
    const-string v4, "MzRingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActualDefaultRingtoneUri type = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " roll back to init default ringtone"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static/range {p1 .. p1}, Landroid/media/MzRingtoneManager;->getInitDefaultRingtoneName(I)Ljava/lang/String;

    move-result-object v14

    .line 179
    .local v14, "rollbackFileName":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    .line 182
    .local v6, "projection":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v10, "builder":Ljava/lang/StringBuilder;
    const-string v4, "("

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v4, "("

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_display_name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v4, "and"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const/4 v4, 0x1

    move/from16 v0, p1

    invoke-static {v0, v4}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v4, "MzRingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActualDefaultRingtoneUri roll back where = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 194
    .local v13, "rollBackCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 195
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 196
    .local v12, "id":I
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v12

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 198
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 199
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 201
    .end local v12    # "id":I
    :cond_8
    const-string v4, "MzRingtoneManager"

    const-string v5, " getActualDefaultRingtoneUri roll back failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
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
    const/4 v0, 0x1

    .line 318
    invoke-static {p0, p1, v0, v0}, Landroid/media/MzRingtoneManager;->getAllRingtoneInfos(Landroid/content/Context;IZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAllRingtoneInfos(Landroid/content/Context;IZZ)Ljava/util/ArrayList;
    .locals 1
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
    .line 331
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2, p3}, Landroid/media/MzRingtoneManager;->getAudioInfos(Landroid/content/Context;IZZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAudioInfos(Landroid/content/Context;IZZZ)Ljava/util/ArrayList;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "justRingtone"    # Z
    .param p3, "includeInternal"    # Z
    .param p4, "includeExternal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MzRingtoneManager$RingtoneInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v17, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MzRingtoneManager$RingtoneInfo;>;"
    if-nez p0, :cond_0

    .line 387
    :goto_0
    return-object v17

    .line 349
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 350
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_5

    const/4 v3, 0x1

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v5

    .line 352
    .local v5, "internalwhereClause":Ljava/lang/String;
    :goto_1
    const/16 v18, 0x0

    .line 353
    .local v18, "internalCursor":Landroid/database/Cursor;
    if-eqz p3, :cond_1

    .line 354
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/media/MzRingtoneManager;->INTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "title_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 360
    :cond_1
    const/4 v14, 0x0

    .line 361
    .local v14, "externalCursor":Landroid/database/Cursor;
    if-eqz p4, :cond_3

    .line 362
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    .line 363
    .local v19, "status":Ljava/lang/String;
    const-string v3, "mounted"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "mounted_ro"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const/4 v15, 0x1

    .line 365
    .local v15, "externalMediaMounted":Z
    :goto_2
    if-eqz v15, :cond_3

    .line 366
    if-eqz p2, :cond_7

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v9

    .line 367
    .local v9, "externalwhereClause":Ljava/lang/String;
    :goto_3
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Landroid/media/MzRingtoneManager;->EXTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "title_key"

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 374
    .end local v9    # "externalwhereClause":Ljava/lang/String;
    .end local v15    # "externalMediaMounted":Z
    .end local v19    # "status":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x2

    new-array v13, v3, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v18, v13, v3

    const/4 v3, 0x1

    aput-object v14, v13, v3

    .line 377
    .local v13, "cursors":[Landroid/database/Cursor;
    new-instance v12, Lcom/android/internal/database/SortCursor;

    const-string v3, "title_key"

    invoke-direct {v12, v13, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    .line 378
    .local v12, "allCursor":Landroid/database/Cursor;
    :cond_4
    :goto_4
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 379
    invoke-static {v12}, Landroid/media/MzRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v20

    .line 380
    .local v20, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v12, v1}, Landroid/media/MzRingtoneManager;->getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v16

    .line 381
    .local v16, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->path:Ljava/lang/String;

    const-string v4, "/storage/sdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 384
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 350
    .end local v5    # "internalwhereClause":Ljava/lang/String;
    .end local v12    # "allCursor":Landroid/database/Cursor;
    .end local v13    # "cursors":[Landroid/database/Cursor;
    .end local v14    # "externalCursor":Landroid/database/Cursor;
    .end local v16    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .end local v18    # "internalCursor":Landroid/database/Cursor;
    .end local v20    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 363
    .restart local v5    # "internalwhereClause":Ljava/lang/String;
    .restart local v14    # "externalCursor":Landroid/database/Cursor;
    .restart local v18    # "internalCursor":Landroid/database/Cursor;
    .restart local v19    # "status":Ljava/lang/String;
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 366
    .restart local v15    # "externalMediaMounted":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 386
    .end local v15    # "externalMediaMounted":Z
    .end local v19    # "status":Ljava/lang/String;
    .restart local v12    # "allCursor":Landroid/database/Cursor;
    .restart local v13    # "cursors":[Landroid/database/Cursor;
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 268
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 269
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 278
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 271
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_0
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_1

    .line 272
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 273
    :cond_1
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_2

    .line 274
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 275
    :cond_2
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_3

    .line 276
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

    goto :goto_0

    .line 278
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDisplayName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isInternal"    # Z

    .prologue
    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 427
    .local v4, "resources":Landroid/content/res/Resources;
    sget v7, Lcom/flyme/internal/R$array;->system_ringtone_value_list:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 429
    .local v6, "ringtoneValues":[Ljava/lang/String;
    sget v7, Lcom/flyme/internal/R$array;->system_ringtone_name_list:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 431
    .local v5, "ringtoneNames":[Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 432
    .local v1, "dotIndex":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    .line 433
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 435
    :cond_0
    if-nez p2, :cond_1

    move-object v3, p1

    .line 445
    .end local p1    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 439
    .end local v3    # "name":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    array-length v0, v6

    .line 440
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 441
    aget-object v7, v6, v2

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 442
    aget-object p1, v5, v2

    .line 440
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v3, p1

    .line 445
    .end local p1    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private static final getInitDefaultRingtoneName(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 209
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 210
    .local v0, "initDefaultName":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 211
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 213
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_ALARM_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    .line 215
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_NOTIFICATION_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_3
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_4

    .line 217
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_4
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5

    .line 219
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 220
    :cond_5
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_0

    .line 221
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_FILENAME:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 289
    new-instance v7, Landroid/media/MzRingtoneManager$RingtoneInfo;

    invoke-direct {v7}, Landroid/media/MzRingtoneManager$RingtoneInfo;-><init>()V

    .line 290
    .local v7, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    if-nez p0, :cond_0

    move-object v8, v7

    .line 307
    .end local v7    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .local v8, "info":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 293
    .end local v8    # "info":Ljava/lang/Object;
    .restart local v7    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 294
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-nez p1, :cond_1

    .line 296
    sget v1, Lcom/flyme/internal/R$string;->ringtone_unknown:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    move-object v8, v7

    .line 297
    .restart local v8    # "info":Ljava/lang/Object;
    goto :goto_0

    .line 299
    .end local v8    # "info":Ljava/lang/Object;
    :cond_1
    sget-object v2, Landroid/media/MzRingtoneManager;->RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 301
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    invoke-static {p0, v6, p1}, Landroid/media/MzRingtoneManager;->getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v7

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    move-object v8, v7

    .line 307
    .restart local v8    # "info":Ljava/lang/Object;
    goto :goto_0

    .line 305
    .end local v8    # "info":Ljava/lang/Object;
    :cond_2
    sget v1, Lcom/flyme/internal/R$string;->ringtone_unknown:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 391
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 393
    .local v1, "isInternal":Z
    new-instance v0, Landroid/media/MzRingtoneManager$RingtoneInfo;

    invoke-direct {v0}, Landroid/media/MzRingtoneManager$RingtoneInfo;-><init>()V

    .line 394
    .local v0, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    invoke-static {p1, v1}, Landroid/media/MzRingtoneManager;->getTempName(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "tempName":Ljava/lang/String;
    invoke-static {p0, v2, v1}, Landroid/media/MzRingtoneManager;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    .line 396
    const-string v3, "_data"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->path:Ljava/lang/String;

    .line 398
    iput-object p2, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->uri:Landroid/net/Uri;

    .line 399
    const-string v3, "is_music"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isMusic:Z

    .line 401
    const-string v3, "is_ringtone"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    :goto_1
    iput-boolean v4, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isRingtone:Z

    .line 403
    iput-boolean v1, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isInternal:Z

    .line 404
    return-object v0

    :cond_0
    move v3, v5

    .line 399
    goto :goto_0

    :cond_1
    move v4, v5

    .line 401
    goto :goto_1
.end method

.method private static getTempName(Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "isInternal"    # Z

    .prologue
    .line 410
    if-eqz p1, :cond_1

    .line 411
    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "tempName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const-string v1, "_display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 417
    .end local v0    # "tempName":Ljava/lang/String;
    :cond_1
    const-string v1, "_display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 418
    .restart local v0    # "tempName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
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
    .line 449
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
    .line 454
    const-string v1, "is_ringtone"

    .line 455
    .local v1, "str":Ljava/lang/String;
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_2

    .line 456
    const-string v1, "is_ringtone"

    .line 468
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
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

    .line 472
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    if-nez p1, :cond_1

    .line 475
    const-string v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v2, "is_music=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const-string v2, "is_ringtone=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 457
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_3

    .line 458
    const-string v1, "is_alarm"

    goto :goto_0

    .line 459
    :cond_3
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_4

    .line 460
    const-string v1, "is_notification"

    goto :goto_0

    .line 461
    :cond_4
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_5

    .line 462
    const-string v1, "is_notification"

    goto :goto_0

    .line 463
    :cond_5
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_6

    .line 464
    const-string v1, "is_notification"

    goto :goto_0

    .line 465
    :cond_6
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_0

    .line 466
    const-string v1, "is_notification"

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 236
    if-nez p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 241
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 243
    :cond_2
    const/4 v0, 0x0

    .line 244
    .local v0, "setting":Ljava/lang/String;
    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_4

    .line 245
    const-string v0, "mms_sound"

    .line 251
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 246
    :cond_4
    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_5

    .line 247
    const-string v0, "email_sound"

    goto :goto_1

    .line 248
    :cond_5
    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_3

    .line 249
    const-string v0, "calendar_sound"

    goto :goto_1

    .line 252
    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method
