.class public final Landroid/app/ProfileGroup;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ProfileGroup$2;,
        Landroid/app/ProfileGroup$Mode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProfileGroup"


# instance fields
.field private mDefaultGroup:Z

.field private mDirty:Z

.field private mLightsMode:Landroid/app/ProfileGroup$Mode;

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mRingerMode:Landroid/app/ProfileGroup$Mode;

.field private mRingerOverride:Landroid/net/Uri;

.field private mSoundMode:Landroid/app/ProfileGroup$Mode;

.field private mSoundOverride:Landroid/net/Uri;

.field private mUuid:Ljava/util/UUID;

.field private mVibrateMode:Landroid/app/ProfileGroup$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Landroid/app/ProfileGroup$1;

    invoke-direct {v0}, Landroid/app/ProfileGroup$1;-><init>()V

    sput-object v0, Landroid/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 49
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 50
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 51
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    .line 52
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/ProfileGroup;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ProfileGroup$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ProfileGroup$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/ProfileGroup;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/UUID;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "defaultGroup"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 47
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 49
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 50
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 51
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    .line 52
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    .line 54
    iput-boolean v2, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    .line 75
    iput-object p1, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 76
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 77
    iput-boolean p3, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    .line 78
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 79
    return-void

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 78
    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/UUID;Z)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "defaultGroup"    # Z

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 72
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ProfileGroup;
    .locals 11
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 323
    const-string/jumbo v7, "name"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 325
    .local v5, "uuid":Ljava/util/UUID;
    const-string/jumbo v7, "uuid"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 329
    :try_start_0
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 335
    :cond_0
    :goto_0
    const-string v7, "default"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    const-string/jumbo v7, "true"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 338
    .local v0, "defaultGroup":Z
    new-instance v4, Landroid/app/ProfileGroup;

    invoke-direct {v4, v3, v5, v0}, Landroid/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 339
    .local v4, "profileGroup":Landroid/app/ProfileGroup;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 340
    .local v2, "event":I
    :goto_1
    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "profileGroup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 341
    :cond_1
    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    .line 342
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 343
    const-string/jumbo v7, "sound"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 344
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    .line 357
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .line 330
    .end local v0    # "defaultGroup":Z
    .end local v2    # "event":I
    .end local v4    # "profileGroup":Landroid/app/ProfileGroup;
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "ProfileGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UUID not recognized for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", using new one."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "defaultGroup":Z
    .restart local v2    # "event":I
    .restart local v4    # "profileGroup":Landroid/app/ProfileGroup;
    :cond_3
    const-string/jumbo v7, "ringer"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 346
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    goto :goto_2

    .line 347
    :cond_4
    const-string/jumbo v7, "soundMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 348
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setSoundMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 349
    :cond_5
    const-string/jumbo v7, "ringerMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 350
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setRingerMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 351
    :cond_6
    const-string/jumbo v7, "vibrateMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 352
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setVibrateMode(Landroid/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 353
    :cond_7
    const-string v7, "lightsMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 354
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Landroid/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProfileGroup;->setLightsMode(Landroid/app/ProfileGroup$Mode;)V

    goto/16 :goto_2

    .line 361
    :cond_8
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/app/ProfileGroup;->mDirty:Z

    .line 363
    return-object v4
.end method

.method private validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-static {p2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v7, 0x1

    .line 237
    :cond_0
    :goto_0
    return v7

    .line 230
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 231
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 233
    .local v7, "valid":Z
    if-eqz v6, :cond_0

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public applyOverridesToNotification(Landroid/app/Notification;)V
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 191
    sget-object v0, Landroid/app/ProfileGroup$2;->$SwitchMap$android$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    sget-object v0, Landroid/app/ProfileGroup$2;->$SwitchMap$android$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 213
    :goto_1
    sget-object v0, Landroid/app/ProfileGroup$2;->$SwitchMap$android$app$ProfileGroup$Mode:[I

    iget-object v1, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Landroid/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 224
    :goto_2
    return-void

    .line 193
    :pswitch_0
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 196
    :pswitch_1
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 197
    iput-object v2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 204
    :pswitch_2
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 207
    :pswitch_3
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 208
    iput-object v2, p1, Landroid/app/Notification;->vibrate:[J

    goto :goto_1

    .line 215
    :pswitch_4
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_2

    .line 218
    :pswitch_5
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 219
    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_2

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 202
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 213
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public getLightsMode()Landroid/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerMode()Landroid/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerOverride()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getSoundMode()Landroid/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getSoundOverride()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVibrateMode()Landroid/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    const-string v0, "<profileGroup uuid=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v0, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v0, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "\" name=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v0, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_0
    const-string v0, "\" default=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    const-string v0, "\">\n<sound>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, "</sound>\n<ringer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v0, "</ringer>\n<soundMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    const-string v0, "</soundMode>\n<ringerMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    const-string v0, "</ringerMode>\n<vibrateMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    const-string v0, "</vibrateMode>\n<lightsMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, "</lightsMode>\n</profileGroup>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 318
    return-void
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    return v0
.end method

.method public matches(Landroid/app/NotificationGroup;Z)Z
    .locals 4
    .param p1, "group"    # Landroid/app/NotificationGroup;
    .param p2, "defaultGroup"    # Z

    .prologue
    const/4 v1, 0x1

    .line 88
    iget-object v2, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    :goto_0
    return v1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "matches":Z
    iget-object v2, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    const/4 v0, 0x1

    .line 103
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 104
    const/4 v1, 0x0

    goto :goto_0

    .line 99
    :cond_2
    iget-boolean v2, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 100
    const/4 v0, 0x1

    goto :goto_1

    .line 107
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 109
    iput-boolean v1, p0, Landroid/app/ProfileGroup;->mDirty:Z

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 278
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 281
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 282
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 284
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 285
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 286
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    .line 287
    const-class v0, Landroid/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    .line 288
    return-void

    :cond_0
    move v0, v2

    .line 279
    goto :goto_0

    :cond_1
    move v1, v2

    .line 280
    goto :goto_1
.end method

.method public setLightsMode(Landroid/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "lightsMode"    # Landroid/app/ProfileGroup$Mode;

    .prologue
    .line 179
    iput-object p1, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 181
    return-void
.end method

.method public setRingerMode(Landroid/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "ringerMode"    # Landroid/app/ProfileGroup$Mode;

    .prologue
    .line 159
    iput-object p1, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 161
    return-void
.end method

.method public setRingerOverride(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringer"    # Landroid/net/Uri;

    .prologue
    .line 139
    iput-object p1, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 141
    return-void
.end method

.method public setSoundMode(Landroid/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "soundMode"    # Landroid/app/ProfileGroup$Mode;

    .prologue
    .line 149
    iput-object p1, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 151
    return-void
.end method

.method public setSoundOverride(Landroid/net/Uri;)V
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 129
    iput-object p1, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 131
    return-void
.end method

.method public setVibrateMode(Landroid/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "vibrateMode"    # Landroid/app/ProfileGroup$Mode;

    .prologue
    .line 169
    iput-object p1, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 171
    return-void
.end method

.method validateOverrideUris(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 241
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Landroid/app/ProfileGroup;->validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 243
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    .line 244
    iput-boolean v1, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Landroid/app/ProfileGroup;->validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 248
    sget-object v0, Landroid/app/ProfileGroup$Mode;->DEFAULT:Landroid/app/ProfileGroup$Mode;

    iput-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    .line 249
    iput-boolean v1, p0, Landroid/app/ProfileGroup;->mDirty:Z

    .line 251
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Landroid/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v0, p1, v2}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    iget-boolean v0, p0, Landroid/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-boolean v0, p0, Landroid/app/ProfileGroup;->mDirty:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 267
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 269
    iget-object v0, p0, Landroid/app/ProfileGroup;->mSoundMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Landroid/app/ProfileGroup;->mRingerMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Landroid/app/ProfileGroup;->mVibrateMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Landroid/app/ProfileGroup;->mLightsMode:Landroid/app/ProfileGroup$Mode;

    invoke-virtual {v0}, Landroid/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    return-void

    :cond_0
    move v0, v2

    .line 264
    goto :goto_0

    :cond_1
    move v1, v2

    .line 265
    goto :goto_1
.end method
