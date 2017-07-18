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

    .line 48
    const-string/jumbo v0, "mms_sound"

    .line 47
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    .line 54
    const-string/jumbo v0, "email_sound"

    .line 53
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    .line 60
    const-string/jumbo v0, "calendar_sound"

    .line 59
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

    .line 87
    const-string/jumbo v0, "ro.config.ringtone"

    .line 86
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "ro.config.notification_sound"

    .line 89
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_NOTIFICATION_FILENAME:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "ro.config.alarm_alert"

    .line 92
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_ALARM_FILENAME:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "ro.config.mms_sound"

    .line 95
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_FILENAME:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "ro.config.email_sound"

    .line 98
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_FILENAME:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "ro.config.calendar_sound"

    .line 101
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_FILENAME:Ljava/lang/String;

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 106
    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v3

    .line 107
    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    .line 108
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v5

    .line 109
    const-string/jumbo v1, "is_music"

    aput-object v1, v0, v6

    .line 110
    const-string/jumbo v1, "is_ringtone"

    aput-object v1, v0, v7

    .line 105
    sput-object v0, Landroid/media/MzRingtoneManager;->RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 116
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 118
    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v5

    .line 119
    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    .line 120
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    .line 121
    const-string/jumbo v1, "title_key"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "is_music"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "is_ringtone"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 115
    sput-object v0, Landroid/media/MzRingtoneManager;->INTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 125
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 126
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 128
    const-string/jumbo v1, "_display_name"

    aput-object v1, v0, v5

    .line 129
    const-string/jumbo v1, "title"

    aput-object v1, v0, v6

    .line 130
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    .line 131
    const-string/jumbo v1, "title_key"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "is_music"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "is_ringtone"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 125
    sput-object v0, Landroid/media/MzRingtoneManager;->EXTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 11
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 609
    if-nez p0, :cond_0

    .line 610
    return-object v6

    .line 612
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 613
    .local v9, "callingUser":I
    if-ne v9, p1, :cond_1

    .line 614
    return-object p0

    .line 617
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 618
    const-string/jumbo v5, "buildUriWithUserId"

    move v2, p1

    move v4, v3

    .line 617
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 619
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 620
    .local v10, "str":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 621
    .local v7, "auth":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 622
    .local v8, "authWithUserId":Ljava/lang/String;
    const-string/jumbo v0, "@"

    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 623
    invoke-virtual {v10, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 625
    :cond_2
    const-string/jumbo v0, "MzRingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " buildUriWithUserId resutl uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-object p0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 152
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
    if-nez p0, :cond_0

    .line 168
    const-string/jumbo v2, "MzRingtoneManager"

    const-string/jumbo v3, "getActualDefaultRingtoneUri return null.  caused by context = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v2, 0x0

    return-object v2

    .line 172
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 173
    const-string/jumbo v2, "MzRingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActualDefaultRingtoneUri, type= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  need to change TYPE_RINGTONE_1 or TYPE_RINGTONE_2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 175
    .local v8, "manager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v10, 0x1

    .line 176
    .local v10, "state1":Z
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v11, 0x1

    .line 178
    .local v11, "state2":Z
    :goto_1
    if-nez v10, :cond_1

    if-eqz v11, :cond_5

    .line 180
    :cond_1
    if-eqz v10, :cond_6

    .line 181
    const/16 p1, 0x800

    .line 187
    .end local v8    # "manager":Landroid/telephony/TelephonyManager;
    .end local v10    # "state1":Z
    .end local v11    # "state2":Z
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .line 188
    .local v1, "actualDefaultUri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v9, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "uriString":Ljava/lang/String;
    const-string/jumbo v2, "MzRingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActualDefaultRingtoneUri, type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uriString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz v12, :cond_7

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 194
    .end local v1    # "actualDefaultUri":Landroid/net/Uri;
    :goto_3
    if-nez v1, :cond_b

    .line 195
    const/16 v2, 0x800

    if-ne p1, v2, :cond_9

    .line 196
    const-string/jumbo v2, "ringtone_sound_phone_1"

    invoke-static {p0, v2}, Landroid/media/MzRingtoneManager;->hasRingtoneKeySaved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ringtone"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 200
    if-eqz v12, :cond_8

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 202
    const-string/jumbo v3, "ringtone_sound_phone_1"

    .line 201
    invoke-static {v2, v3, v12, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 205
    const-string/jumbo v2, "MzRingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set origin TYPE_RINGTONE url to TYPE_RINGTONE_1, URL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 175
    .end local v9    # "setting":Ljava/lang/String;
    .end local v12    # "uriString":Ljava/lang/String;
    .restart local v8    # "manager":Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "state1":Z
    goto/16 :goto_0

    .line 176
    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "state2":Z
    goto/16 :goto_1

    .line 179
    :cond_5
    const/16 p1, 0x800

    .line 178
    goto/16 :goto_2

    .line 183
    :cond_6
    const/16 p1, 0x1000

    goto/16 :goto_2

    .line 193
    .end local v8    # "manager":Landroid/telephony/TelephonyManager;
    .end local v10    # "state1":Z
    .end local v11    # "state2":Z
    .restart local v1    # "actualDefaultUri":Landroid/net/Uri;
    .restart local v9    # "setting":Ljava/lang/String;
    .restart local v12    # "uriString":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 208
    .end local v1    # "actualDefaultUri":Landroid/net/Uri;
    :cond_8
    const-string/jumbo v2, "MzRingtoneManager"

    const-string/jumbo v3, "TYPE_RINGTONE_1 rollbackToDefault"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v2, 0x800

    invoke-static {p0, v2, p2}, Landroid/media/MzRingtoneManager;->rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 212
    :cond_9
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_a

    .line 213
    const-string/jumbo v2, "ringtone_sound_phone_2"

    invoke-static {p0, v2}, Landroid/media/MzRingtoneManager;->hasRingtoneKeySaved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 215
    const-string/jumbo v2, "MzRingtoneManager"

    const-string/jumbo v3, "TYPE_RINGTONE_2 rollbackToDefault"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p0, p1, p2}, Landroid/media/MzRingtoneManager;->rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 220
    :cond_a
    return-object v1

    .line 222
    :cond_b
    invoke-static {v1, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, "actualDefaultUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 226
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 227
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_d

    .line 233
    if-eqz v6, :cond_c

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_c
    return-object v1

    .line 233
    :cond_d
    if-eqz v6, :cond_e

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_e
    :goto_4
    invoke-static {p0, p1, p2}, Landroid/media/MzRingtoneManager;->rollbackToDefault(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v1

    .line 238
    return-object v1

    .line 230
    :catch_0
    move-exception v7

    .line 231
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "MzRingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActualDefaultRingtoneUri e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    if-eqz v6, :cond_e

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 232
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 233
    if-eqz v6, :cond_f

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_f
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
    .line 418
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

    .line 422
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
    .line 436
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 435
    const/4 v2, 0x1

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
    .line 441
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
    .line 455
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v16, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MzRingtoneManager$RingtoneInfo;>;"
    if-nez p0, :cond_0

    .line 457
    return-object v16

    .line 459
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 460
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p2, :cond_3

    const/4 v3, 0x1

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v4

    .line 462
    :goto_0
    const/16 v17, 0x0

    .line 463
    .local v17, "internalCursor":Landroid/database/Cursor;
    if-eqz p3, :cond_1

    .line 464
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p5

    invoke-static {v3, v0}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 465
    .local v2, "uri":Landroid/net/Uri;
    sget-object v3, Landroid/media/MzRingtoneManager;->INTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 466
    const-string/jumbo v6, "_display_name"

    const/4 v5, 0x0

    .line 465
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 470
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v17    # "internalCursor":Landroid/database/Cursor;
    :cond_1
    const/4 v13, 0x0

    .line 471
    .local v13, "externalCursor":Landroid/database/Cursor;
    if-eqz p4, :cond_2

    .line 472
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .line 473
    .local v18, "status":Ljava/lang/String;
    const-string/jumbo v3, "mounted"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 474
    const-string/jumbo v3, "mounted_ro"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 475
    :goto_1
    if-eqz v14, :cond_2

    .line 476
    if-eqz p2, :cond_5

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-static {v0, v3}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v8

    .line 477
    :goto_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, p5

    invoke-static {v3, v0}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 478
    .restart local v2    # "uri":Landroid/net/Uri;
    sget-object v7, Landroid/media/MzRingtoneManager;->EXTERNAL_RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    .line 479
    const-string/jumbo v10, "_display_name"

    const/4 v9, 0x0

    move-object v5, v1

    move-object v6, v2

    .line 478
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 482
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v13    # "externalCursor":Landroid/database/Cursor;
    .end local v18    # "status":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    new-array v12, v3, [Landroid/database/Cursor;

    .line 483
    const/4 v3, 0x0

    aput-object v17, v12, v3

    const/4 v3, 0x1

    aput-object v13, v12, v3

    .line 485
    .local v12, "cursors":[Landroid/database/Cursor;
    new-instance v11, Lcom/android/internal/database/SortCursor;

    const-string/jumbo v3, "_display_name"

    invoke-direct {v11, v12, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    .line 486
    .local v11, "allCursor":Landroid/database/Cursor;
    :goto_3
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 487
    invoke-static {v11}, Landroid/media/MzRingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 488
    .restart local v2    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-static {v0, v11, v2}, Landroid/media/MzRingtoneManager;->getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v15

    .line 489
    .local v15, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 460
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v11    # "allCursor":Landroid/database/Cursor;
    .end local v12    # "cursors":[Landroid/database/Cursor;
    .end local v15    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    :cond_3
    const/4 v4, 0x0

    .local v4, "internalwhereClause":Ljava/lang/String;
    goto :goto_0

    .line 473
    .end local v4    # "internalwhereClause":Ljava/lang/String;
    .restart local v13    # "externalCursor":Landroid/database/Cursor;
    .restart local v18    # "status":Ljava/lang/String;
    :cond_4
    const/4 v14, 0x1

    .local v14, "externalMediaMounted":Z
    goto :goto_1

    .line 476
    .end local v14    # "externalMediaMounted":Z
    :cond_5
    const/4 v8, 0x0

    .local v8, "externalwhereClause":Ljava/lang/String;
    goto :goto_2

    .line 491
    .end local v8    # "externalwhereClause":Ljava/lang/String;
    .end local v13    # "externalCursor":Landroid/database/Cursor;
    .end local v18    # "status":Ljava/lang/String;
    .restart local v11    # "allCursor":Landroid/database/Cursor;
    .restart local v12    # "cursors":[Landroid/database/Cursor;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 492
    return-object v16
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 351
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 352
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    .line 353
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 354
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 355
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 356
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    .line 357
    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    .line 358
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_SOUND_URI:Landroid/net/Uri;

    return-object v0

    .line 359
    :cond_3
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_4

    .line 360
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_SOUND_URI:Landroid/net/Uri;

    return-object v0

    .line 361
    :cond_4
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_5

    .line 362
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_SOUND_URI:Landroid/net/Uri;

    return-object v0

    .line 363
    :cond_5
    const/16 v0, 0x800

    if-ne p0, v0, :cond_6

    .line 364
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_PHONE_1_URI:Landroid/net/Uri;

    return-object v0

    .line 365
    :cond_6
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_7

    .line 366
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_PHONE_1_URI:Landroid/net/Uri;

    return-object v0

    .line 368
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDisplayName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isInternal"    # Z

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 526
    .local v2, "resources":Landroid/content/res/Resources;
    sget v5, Lcom/flyme/internal/R$array;->system_ringtone_value_list:I

    .line 525
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 528
    .local v4, "ringtoneValues":[Ljava/lang/String;
    sget v5, Lcom/flyme/internal/R$array;->system_ringtone_name_list:I

    .line 527
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "ringtoneNames":[Ljava/lang/String;
    if-nez p2, :cond_0

    .line 530
    return-object p1

    .line 533
    :cond_0
    array-length v0, v4

    .line 534
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 535
    aget-object v5, v4, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 536
    aget-object p1, v3, v1

    .line 534
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_2
    return-object p1
.end method

.method private static final getInitDefaultRingtoneName(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 285
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 286
    .local v0, "initDefaultName":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    .line 287
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    .line 303
    :cond_0
    :goto_0
    return-object v0

    .line 288
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 289
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_ALARM_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    .line 291
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_NOTIFICATION_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 292
    :cond_3
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_4

    .line 293
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_MMS_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_4
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_5

    .line 295
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_EMAIL_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_5
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_6

    .line 297
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_CALENDAR_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 298
    :cond_6
    const/16 v1, 0x800

    if-ne p0, v1, :cond_7

    .line 299
    sget-object v0, Landroid/media/MzRingtoneManager;->DEFAULT_RINGTONE_FILENAME:Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_7
    const/16 v1, 0x1000

    if-ne p0, v1, :cond_0

    .line 301
    const-string/jumbo v0, "05_Technology.ogg"

    goto :goto_0
.end method

.method public static getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;

    .prologue
    .line 379
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/media/MzRingtoneManager;->getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/MzRingtoneManager$RingtoneInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getRingtoneInfo(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaUri"    # Landroid/net/Uri;
    .param p2, "userId"    # I

    .prologue
    .line 383
    new-instance v8, Landroid/media/MzRingtoneManager$RingtoneInfo;

    invoke-direct {v8}, Landroid/media/MzRingtoneManager$RingtoneInfo;-><init>()V

    .line 384
    .local v8, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    if-nez p0, :cond_0

    .line 385
    return-object v8

    .line 387
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 388
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 389
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget v1, Lcom/flyme/internal/R$string;->ringtone_unknown:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    .line 390
    if-nez p1, :cond_1

    .line 391
    return-object v8

    .line 393
    :cond_1
    invoke-static {p1, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 394
    const/4 v6, 0x0

    .line 396
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/media/MzRingtoneManager;->RINGTONE_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 397
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    invoke-static {p0, v6, p1}, Landroid/media/MzRingtoneManager;->getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 403
    :cond_2
    if-eqz v6, :cond_3

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-object v8

    .line 400
    :catch_0
    move-exception v7

    .line 401
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "MzRingtoneManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRingtoneInfo e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    if-eqz v6, :cond_3

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 402
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 403
    if-eqz v6, :cond_4

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_4
    throw v1
.end method

.method private static getRingtoneInfoFromCursor(Landroid/content/Context;Landroid/database/Cursor;Landroid/net/Uri;)Landroid/media/MzRingtoneManager$RingtoneInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 496
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 496
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 497
    const/4 v6, -0x1

    .line 496
    if-eq v3, v6, :cond_0

    const/4 v1, 0x1

    .line 499
    .local v1, "isInternal":Z
    :goto_0
    new-instance v0, Landroid/media/MzRingtoneManager$RingtoneInfo;

    invoke-direct {v0}, Landroid/media/MzRingtoneManager$RingtoneInfo;-><init>()V

    .line 500
    .local v0, "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getTempName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "tempName":Ljava/lang/String;
    invoke-static {p0, v2, v1}, Landroid/media/MzRingtoneManager;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->displayName:Ljava/lang/String;

    .line 503
    const-string/jumbo v3, "_data"

    .line 502
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->path:Ljava/lang/String;

    .line 504
    iput-object p2, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->uri:Landroid/net/Uri;

    .line 506
    const-string/jumbo v3, "is_music"

    .line 505
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isMusic:Z

    .line 508
    const-string/jumbo v3, "is_ringtone"

    .line 507
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    :goto_2
    iput-boolean v4, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isRingtone:Z

    .line 509
    iput-boolean v1, v0, Landroid/media/MzRingtoneManager$RingtoneInfo;->isInternal:Z

    .line 510
    return-object v0

    .line 496
    .end local v0    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .end local v1    # "isInternal":Z
    .end local v2    # "tempName":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isInternal":Z
    goto :goto_0

    .restart local v0    # "info":Landroid/media/MzRingtoneManager$RingtoneInfo;
    .restart local v2    # "tempName":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 505
    goto :goto_1

    :cond_2
    move v4, v5

    .line 507
    goto :goto_2
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 586
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 587
    const-string/jumbo v0, "ringtone"

    return-object v0

    .line 588
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 589
    const-string/jumbo v0, "notification_sound"

    return-object v0

    .line 590
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 591
    const-string/jumbo v0, "alarm_alert"

    return-object v0

    .line 592
    :cond_2
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_3

    .line 593
    const-string/jumbo v0, "mms_sound"

    return-object v0

    .line 594
    :cond_3
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_4

    .line 595
    const-string/jumbo v0, "calendar_sound"

    return-object v0

    .line 596
    :cond_4
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_5

    .line 597
    const-string/jumbo v0, "email_sound"

    return-object v0

    .line 598
    :cond_5
    const/16 v0, 0x800

    if-ne p0, v0, :cond_6

    .line 599
    const-string/jumbo v0, "ringtone_sound_phone_1"

    return-object v0

    .line 600
    :cond_6
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_7

    .line 601
    const-string/jumbo v0, "ringtone_sound_phone_2"

    return-object v0

    .line 603
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getTempName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 516
    const-string/jumbo v1, "_display_name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "tempName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const-string/jumbo v1, "title"

    .line 518
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    :cond_0
    return-object v0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 543
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 544
    const/4 v1, 0x0

    .line 543
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
    .line 548
    const-string/jumbo v1, "is_ringtone"

    .line 549
    .local v1, "str":Ljava/lang/String;
    and-int/lit8 v2, p0, 0x1

    if-nez v2, :cond_0

    .line 550
    const/16 v2, 0x800

    if-ne p0, v2, :cond_3

    .line 552
    :cond_0
    const-string/jumbo v1, "is_ringtone"

    .line 564
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    if-nez p1, :cond_2

    .line 571
    const-string/jumbo v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const-string/jumbo v2, "is_music=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string/jumbo v2, "or"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string/jumbo v2, "is_ringtone=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :cond_2
    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 551
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    const/16 v2, 0x1000

    if-eq p0, v2, :cond_0

    .line 553
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_4

    .line 554
    const-string/jumbo v1, "is_alarm"

    goto :goto_0

    .line 555
    :cond_4
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_5

    .line 556
    const-string/jumbo v1, "is_notification"

    goto :goto_0

    .line 557
    :cond_5
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_6

    .line 558
    const-string/jumbo v1, "is_notification"

    goto :goto_0

    .line 559
    :cond_6
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_7

    .line 560
    const-string/jumbo v1, "is_notification"

    goto/16 :goto_0

    .line 561
    :cond_7
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_1

    .line 562
    const-string/jumbo v1, "is_notification"

    goto/16 :goto_0
.end method

.method private static hasRingtoneKeySaved(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 631
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v2, v5

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    .line 630
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 637
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 638
    .local v8, "ret":Z
    if-eqz v7, :cond_0

    .line 639
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x1

    .line 640
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_0
    return v8

    .line 639
    :cond_1
    const/4 v8, 0x0

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

    const/4 v3, 0x0

    .line 242
    if-nez p0, :cond_0

    .line 243
    return-object v3

    .line 245
    :cond_0
    const/4 v6, 0x0

    .line 246
    .local v6, "actualDefaultUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 247
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getInitDefaultRingtoneName(I)Ljava/lang/String;

    move-result-object v11

    .line 248
    .local v11, "rollbackFileName":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    .line 249
    const-string/jumbo v3, "_id"

    aput-object v3, v2, v4

    .line 251
    .local v2, "projection":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v7, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v3, "("

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string/jumbo v3, "_display_name=\""

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 255
    const-string/jumbo v4, "\""

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string/jumbo v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string/jumbo v3, "and"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {p1, v5}, Landroid/media/MzRingtoneManager;->getWhereClause(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v3, "MzRingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getActualDefaultRingtoneUri roll back where = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p2}, Landroid/media/MzRingtoneManager;->buildUriWithUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 263
    .local v1, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 265
    .local v10, "rollBackCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 266
    .local v10, "rollBackCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 269
    .local v9, "id":I
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    .line 268
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 270
    .local v6, "actualDefaultUri":Landroid/net/Uri;
    invoke-static {p0, p1, v6, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v6    # "actualDefaultUri":Landroid/net/Uri;
    .end local v9    # "id":I
    :cond_1
    if-eqz v10, :cond_2

    .line 276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v10    # "rollBackCursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v6

    .line 272
    :catch_0
    move-exception v8

    .line 273
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "MzRingtoneManager"

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

    .line 275
    if-eqz v10, :cond_2

    .line 276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 274
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 275
    if-eqz v10, :cond_3

    .line 276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_3
    throw v3
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 307
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V

    .line 306
    return-void
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 322
    if-nez p0, :cond_0

    .line 323
    return-void

    .line 325
    :cond_0
    invoke-static {p1}, Landroid/media/MzRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "setting":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 328
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    :cond_1
    invoke-static {v2, v0, v1, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 333
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 334
    const/16 v1, 0x800

    invoke-static {p0, v1, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 335
    const/16 v1, 0x1000

    invoke-static {p0, v1, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 321
    :cond_2
    return-void
.end method
