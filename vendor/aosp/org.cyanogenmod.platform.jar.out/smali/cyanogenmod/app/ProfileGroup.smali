.class public final Lcyanogenmod/app/ProfileGroup;
.super Ljava/lang/Object;
.source "ProfileGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/app/ProfileGroup$Mode;,
        Lcyanogenmod/app/ProfileGroup$1;
    }
.end annotation


# static fields
.field private static synthetic -cyanogenmod_app_ProfileGroup$ModeSwitchesValues:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ProfileGroup"


# instance fields
.field private mDefaultGroup:Z

.field private mDirty:Z

.field private mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mRingerOverride:Landroid/net/Uri;

.field private mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

.field private mSoundOverride:Landroid/net/Uri;

.field private mUuid:Ljava/util/UUID;

.field private mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;


# direct methods
.method private static synthetic -getcyanogenmod_app_ProfileGroup$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcyanogenmod/app/ProfileGroup;->-cyanogenmod_app_ProfileGroup$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcyanogenmod/app/ProfileGroup;->-cyanogenmod_app_ProfileGroup$ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcyanogenmod/app/ProfileGroup$Mode;->values()[Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcyanogenmod/app/ProfileGroup$Mode;->OVERRIDE:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcyanogenmod/app/ProfileGroup$Mode;->SUPPRESS:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcyanogenmod/app/ProfileGroup;->-cyanogenmod_app_ProfileGroup$ModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcyanogenmod/app/ProfileGroup$1;

    invoke-direct {v0}, Lcyanogenmod/app/ProfileGroup$1;-><init>()V

    .line 67
    sput-object v0, Lcyanogenmod/app/ProfileGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 58
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 59
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 60
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 61
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 93
    invoke-virtual {p0, p1}, Lcyanogenmod/app/ProfileGroup;->readFromParcel(Landroid/os/Parcel;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/ProfileGroup;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcyanogenmod/app/ProfileGroup;-><init>(Landroid/os/Parcel;)V

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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 56
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 58
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 59
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 60
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 61
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 63
    iput-boolean v2, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 85
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 86
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 87
    iput-boolean p3, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 88
    if-nez p2, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 88
    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/UUID;Z)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "defaultGroup"    # Z

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcyanogenmod/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 80
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Lcyanogenmod/app/ProfileGroup;
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

    .line 351
    const-string/jumbo v7, "name"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 353
    .local v5, "uuid":Ljava/util/UUID;
    const-string/jumbo v7, "uuid"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 357
    :try_start_0
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 363
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_0
    :goto_0
    const-string/jumbo v7, "default"

    invoke-interface {p0, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 364
    const-string/jumbo v7, "true"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 366
    .local v0, "defaultGroup":Z
    new-instance v4, Lcyanogenmod/app/ProfileGroup;

    invoke-direct {v4, v3, v5, v0}, Lcyanogenmod/app/ProfileGroup;-><init>(Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 367
    .local v4, "profileGroup":Lcyanogenmod/app/ProfileGroup;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 368
    .local v2, "event":I
    :goto_1
    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "profileGroup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 391
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 393
    return-object v4

    .line 358
    .end local v0    # "defaultGroup":Z
    .end local v2    # "event":I
    .end local v4    # "profileGroup":Lcyanogenmod/app/ProfileGroup;
    .restart local v5    # "uuid":Ljava/util/UUID;
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "ProfileGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "UUID not recognized for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", using new one."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "uuid":Ljava/util/UUID;
    .restart local v0    # "defaultGroup":Z
    .restart local v2    # "event":I
    .restart local v4    # "profileGroup":Lcyanogenmod/app/ProfileGroup;
    :cond_1
    const/4 v7, 0x2

    if-ne v2, v7, :cond_8

    .line 370
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 371
    const-string/jumbo v7, "sound"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 372
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcyanogenmod/app/ProfileGroup;->setSoundOverride(Landroid/net/Uri;)V

    .line 387
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_1

    .line 373
    :cond_3
    const-string/jumbo v7, "ringer"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 374
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcyanogenmod/app/ProfileGroup;->setRingerOverride(Landroid/net/Uri;)V

    goto :goto_2

    .line 375
    :cond_4
    const-string/jumbo v7, "soundMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 376
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcyanogenmod/app/ProfileGroup;->setSoundMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 377
    :cond_5
    const-string/jumbo v7, "ringerMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 378
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcyanogenmod/app/ProfileGroup;->setRingerMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 379
    :cond_6
    const-string/jumbo v7, "vibrateMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 380
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcyanogenmod/app/ProfileGroup;->setVibrateMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 381
    :cond_7
    const-string/jumbo v7, "lightsMode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 382
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcyanogenmod/app/ProfileGroup;->setLightsMode(Lcyanogenmod/app/ProfileGroup$Mode;)V

    goto :goto_2

    .line 384
    :cond_8
    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 385
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Premature end of file while parsing profleGroup:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-static {p2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 243
    .local v7, "valid":Z
    if-eqz v6, :cond_1

    .line 244
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 245
    .local v7, "valid":Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    .end local v7    # "valid":Z
    :cond_1
    return v7
.end method


# virtual methods
.method public applyOverridesToNotification(Landroid/app/Notification;)V
    .locals 3
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-static {}, Lcyanogenmod/app/ProfileGroup;->-getcyanogenmod_app_ProfileGroup$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    :pswitch_0
    invoke-static {}, Lcyanogenmod/app/ProfileGroup;->-getcyanogenmod_app_ProfileGroup$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 223
    :goto_1
    :pswitch_1
    invoke-static {}, Lcyanogenmod/app/ProfileGroup;->-getcyanogenmod_app_ProfileGroup$ModeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 200
    :goto_2
    :pswitch_2
    return-void

    .line 203
    :pswitch_3
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 206
    :pswitch_4
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 207
    iput-object v2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 214
    :pswitch_5
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 217
    :pswitch_6
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 218
    iput-object v2, p1, Landroid/app/Notification;->vibrate:[J

    goto :goto_1

    .line 225
    :pswitch_7
    iget v0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_2

    .line 228
    :pswitch_8
    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 229
    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->flags:I

    goto :goto_2

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 223
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getLightsMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getRingerOverride()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getSoundMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getSoundOverride()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getVibrateMode()Lcyanogenmod/app/ProfileGroup$Mode;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    const-string/jumbo v0, "<profileGroup uuid=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 327
    const-string/jumbo v0, "\" name=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_0
    const-string/jumbo v0, "\" default=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lcyanogenmod/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 332
    const-string/jumbo v0, "\">\n<sound>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string/jumbo v0, "</sound>\n<ringer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string/jumbo v0, "</ringer>\n<soundMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    const-string/jumbo v0, "</soundMode>\n<ringerMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 340
    const-string/jumbo v0, "</ringerMode>\n<vibrateMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    const-string/jumbo v0, "</vibrateMode>\n<lightsMode>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    const-string/jumbo v0, "</lightsMode>\n</profileGroup>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 323
    return-void
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    return v0
.end method

.method public matches(Landroid/app/NotificationGroup;Z)Z
    .locals 5
    .param p1, "group"    # Landroid/app/NotificationGroup;
    .param p2, "defaultGroup"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 98
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    return v3

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 106
    .local v0, "matches":Z
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    const/4 v0, 0x1

    .line 113
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 114
    const/4 v1, 0x0

    return v1

    .line 109
    :cond_2
    iget-boolean v1, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 117
    :cond_3
    iput-object v4, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 119
    iput-boolean v3, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 121
    return v3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 294
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 295
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 300
    .local v1, "parcelableVersion":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    .line 302
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 305
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 306
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 308
    const-class v2, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 309
    const-class v2, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 310
    const-class v2, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 311
    const-class v2, Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcyanogenmod/app/ProfileGroup$Mode;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v2, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 315
    :cond_0
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 292
    return-void

    :cond_1
    move v2, v4

    .line 303
    goto :goto_0

    :cond_2
    move v3, v4

    .line 304
    goto :goto_1
.end method

.method public setLightsMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "lightsMode"    # Lcyanogenmod/app/ProfileGroup$Mode;

    .prologue
    .line 189
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 188
    return-void
.end method

.method public setRingerMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "ringerMode"    # Lcyanogenmod/app/ProfileGroup$Mode;

    .prologue
    .line 169
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 168
    return-void
.end method

.method public setRingerOverride(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringer"    # Landroid/net/Uri;

    .prologue
    .line 149
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 148
    return-void
.end method

.method public setSoundMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "soundMode"    # Lcyanogenmod/app/ProfileGroup$Mode;

    .prologue
    .line 159
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 158
    return-void
.end method

.method public setSoundOverride(Landroid/net/Uri;)V
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 139
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 138
    return-void
.end method

.method public setVibrateMode(Lcyanogenmod/app/ProfileGroup$Mode;)V
    .locals 1
    .param p1, "vibrateMode"    # Lcyanogenmod/app/ProfileGroup$Mode;

    .prologue
    .line 179
    iput-object p1, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 178
    return-void
.end method

.method validateOverrideUris(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 251
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcyanogenmod/app/ProfileGroup;->validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    .line 253
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 254
    iput-boolean v1, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 256
    :cond_0
    iget-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcyanogenmod/app/ProfileGroup;->validateOverrideUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    .line 258
    sget-object v0, Lcyanogenmod/app/ProfileGroup$Mode;->DEFAULT:Lcyanogenmod/app/ProfileGroup$Mode;

    iput-object v0, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    .line 259
    iput-boolean v1, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    .line 250
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    invoke-static {p1}, Lcyanogenmod/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lcyanogenmod/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 276
    .local v0, "parcelInfo":Lcyanogenmod/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    new-instance v1, Landroid/os/ParcelUuid;

    iget-object v4, p0, Lcyanogenmod/app/ProfileGroup;->mUuid:Ljava/util/UUID;

    invoke-direct {v1, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v1, p1, v3}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 278
    iget-boolean v1, p0, Lcyanogenmod/app/ProfileGroup;->mDefaultGroup:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-boolean v1, p0, Lcyanogenmod/app/ProfileGroup;->mDirty:Z

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundOverride:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 281
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mRingerOverride:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 282
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mSoundMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mRingerMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mVibrateMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcyanogenmod/app/ProfileGroup;->mLightsMode:Lcyanogenmod/app/ProfileGroup$Mode;

    invoke-virtual {v1}, Lcyanogenmod/app/ProfileGroup$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lcyanogenmod/os/Concierge$ParcelInfo;->complete()V

    .line 271
    return-void

    :cond_0
    move v1, v3

    .line 278
    goto :goto_0

    :cond_1
    move v2, v3

    .line 279
    goto :goto_1
.end method
