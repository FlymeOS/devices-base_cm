.class public final Landroid/app/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Profile$ProfileTrigger;,
        Landroid/app/Profile$TriggerState;,
        Landroid/app/Profile$TriggerType;,
        Landroid/app/Profile$ExpandedDesktopMode;,
        Landroid/app/Profile$LockMode;
    }
.end annotation


# static fields
.field private static final CONDITIONAL_TYPE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Profile"

.field private static final TOGGLE_TYPE:I


# instance fields
.field private connections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mAirplaneMode:Landroid/app/AirplaneModeSettings;

.field private mBrightness:Landroid/app/BrightnessSettings;

.field private mDefaultGroup:Landroid/app/ProfileGroup;

.field private mDirty:Z

.field private mExpandedDesktopMode:I

.field private mName:Ljava/lang/String;

.field private mNameResId:I

.field private mProfileType:I

.field private mRingMode:Landroid/app/RingModeSettings;

.field private mScreenLockMode:I

.field private mSecondaryUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarIndicator:Z

.field private mTriggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private mUuid:Ljava/util/UUID;

.field private profileGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/ProfileGroup;",
            ">;"
        }
    .end annotation
.end field

.field private streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Landroid/app/Profile$1;

    invoke-direct {v0}, Landroid/app/Profile$1;-><init>()V

    sput-object v0, Landroid/app/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    .line 58
    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/app/RingModeSettings;

    invoke-direct {v0}, Landroid/app/RingModeSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    .line 78
    new-instance v0, Landroid/app/AirplaneModeSettings;

    invoke-direct {v0}, Landroid/app/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    .line 80
    new-instance v0, Landroid/app/BrightnessSettings;

    invoke-direct {v0}, Landroid/app/BrightnessSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    .line 82
    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 84
    iput v1, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    .line 246
    invoke-virtual {p0, p1}, Landroid/app/Profile;->readFromParcel(Landroid/os/Parcel;)V

    .line 247
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Profile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/Profile$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, -0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 235
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/UUID;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameResId"    # I
    .param p3, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    .line 58
    iput-boolean v1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    .line 76
    new-instance v0, Landroid/app/RingModeSettings;

    invoke-direct {v0}, Landroid/app/RingModeSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    .line 78
    new-instance v0, Landroid/app/AirplaneModeSettings;

    invoke-direct {v0}, Landroid/app/AirplaneModeSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    .line 80
    new-instance v0, Landroid/app/BrightnessSettings;

    invoke-direct {v0}, Landroid/app/BrightnessSettings;-><init>()V

    iput-object v0, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    .line 82
    iput v1, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 84
    iput v1, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    .line 238
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 239
    iput p2, p0, Landroid/app/Profile;->mNameResId:I

    .line 240
    iput-object p3, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 241
    iput v1, p0, Landroid/app/Profile;->mProfileType:I

    .line 242
    iput-boolean v1, p0, Landroid/app/Profile;->mDirty:Z

    .line 243
    return-void
.end method

.method public static fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile;
    .locals 21
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    const/16 v18, 0x0

    const-string/jumbo v19, "nameres"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 665
    .local v17, "value":Ljava/lang/String;
    const/4 v13, -0x1

    .line 666
    .local v13, "profileNameResId":I
    const/4 v12, 0x0

    .line 668
    .local v12, "profileName":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 669
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string/jumbo v19, "string"

    const-string v20, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 670
    if-lez v13, :cond_0

    .line 671
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 675
    :cond_0
    if-nez v12, :cond_1

    .line 676
    const/16 v18, 0x0

    const-string/jumbo v19, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 679
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    .line 681
    .local v14, "profileUuid":Ljava/util/UUID;
    const/16 v18, 0x0

    :try_start_0
    const-string/jumbo v19, "uuid"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 698
    :goto_0
    new-instance v11, Landroid/app/Profile;

    invoke-direct {v11, v12, v13, v14}, Landroid/app/Profile;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    .line 699
    .local v11, "profile":Landroid/app/Profile;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 700
    .local v8, "event":I
    :goto_1
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v8, v0, :cond_f

    .line 701
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_d

    .line 702
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 703
    .local v9, "name":Ljava/lang/String;
    const-string/jumbo v18, "uuids"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 704
    invoke-static/range {p0 .. p1}, Landroid/app/Profile;->readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Profile;->setSecondaryUuids(Ljava/util/List;)V

    .line 706
    :cond_2
    const-string/jumbo v18, "statusbar"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 707
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "yes"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Profile;->setStatusBarIndicator(Z)V

    .line 709
    :cond_3
    const-string/jumbo v18, "profiletype"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 710
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "toggle"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Profile;->setProfileType(I)V

    .line 712
    :cond_4
    const-string/jumbo v18, "ringModeDescriptor"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 713
    invoke-static/range {p0 .. p1}, Landroid/app/RingModeSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/RingModeSettings;

    move-result-object v16

    .line 714
    .local v16, "smd":Landroid/app/RingModeSettings;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/app/Profile;->setRingMode(Landroid/app/RingModeSettings;)V

    .line 716
    .end local v16    # "smd":Landroid/app/RingModeSettings;
    :cond_5
    const-string v18, "airplaneModeDescriptor"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 717
    invoke-static/range {p0 .. p1}, Landroid/app/AirplaneModeSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/AirplaneModeSettings;

    move-result-object v4

    .line 718
    .local v4, "amd":Landroid/app/AirplaneModeSettings;
    invoke-virtual {v11, v4}, Landroid/app/Profile;->setAirplaneMode(Landroid/app/AirplaneModeSettings;)V

    .line 720
    .end local v4    # "amd":Landroid/app/AirplaneModeSettings;
    :cond_6
    const-string v18, "brightnessDescriptor"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 721
    invoke-static/range {p0 .. p1}, Landroid/app/BrightnessSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/BrightnessSettings;

    move-result-object v5

    .line 722
    .local v5, "bd":Landroid/app/BrightnessSettings;
    invoke-virtual {v11, v5}, Landroid/app/Profile;->setBrightness(Landroid/app/BrightnessSettings;)V

    .line 724
    .end local v5    # "bd":Landroid/app/BrightnessSettings;
    :cond_7
    const-string/jumbo v18, "screen-lock-mode"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 725
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Profile;->setScreenLockMode(I)V

    .line 727
    :cond_8
    const-string v18, "expanded-desktop-mode"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 728
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Profile;->setExpandedDesktopMode(I)V

    .line 730
    :cond_9
    const-string/jumbo v18, "profileGroup"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 731
    invoke-static/range {p0 .. p1}, Landroid/app/ProfileGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ProfileGroup;

    move-result-object v10

    .line 732
    .local v10, "pg":Landroid/app/ProfileGroup;
    invoke-virtual {v11, v10}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    .line 734
    .end local v10    # "pg":Landroid/app/ProfileGroup;
    :cond_a
    const-string/jumbo v18, "streamDescriptor"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 735
    invoke-static/range {p0 .. p1}, Landroid/app/StreamSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/StreamSettings;

    move-result-object v15

    .line 736
    .local v15, "sd":Landroid/app/StreamSettings;
    invoke-virtual {v11, v15}, Landroid/app/Profile;->setStreamSettings(Landroid/app/StreamSettings;)V

    .line 738
    .end local v15    # "sd":Landroid/app/StreamSettings;
    :cond_b
    const-string v18, "connectionDescriptor"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 739
    invoke-static/range {p0 .. p1}, Landroid/app/ConnectionSettings;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/ConnectionSettings;

    move-result-object v6

    .line 740
    .local v6, "cs":Landroid/app/ConnectionSettings;
    iget-object v0, v11, Landroid/app/Profile;->connections:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .end local v6    # "cs":Landroid/app/ConnectionSettings;
    :cond_c
    const-string/jumbo v18, "triggers"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 743
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Landroid/app/Profile;->readTriggersFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/app/Profile;)V

    .line 746
    .end local v9    # "name":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    goto/16 :goto_1

    .line 682
    .end local v8    # "event":I
    .end local v11    # "profile":Landroid/app/Profile;
    :catch_0
    move-exception v7

    .line 683
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v18, "Profile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Null Pointer - UUID not found for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".  New UUID generated: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 689
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 690
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v18, "Profile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UUID not recognized for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".  New UUID generated: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "event":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v11    # "profile":Landroid/app/Profile;
    :cond_e
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 750
    .end local v9    # "name":Ljava/lang/String;
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v11, Landroid/app/Profile;->mDirty:Z

    .line 752
    return-object v11
.end method

.method private static readSecondaryUuidsFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 620
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v3, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/UUID;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 622
    .local v1, "event":I
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uuids"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 623
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 624
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "uuid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 627
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 628
    .restart local v2    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "Profile"

    const-string v5, "Null Pointer - invalid UUID"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 630
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "Profile"

    const-string v5, "UUID not recognized"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 637
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private static readTriggersFromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/app/Profile;)V
    .locals 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/app/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 643
    .local v0, "event":I
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "triggers"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 644
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 645
    invoke-static {p0, p1}, Landroid/app/Profile$ProfileTrigger;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile$ProfileTrigger;

    move-result-object v1

    .line 646
    .local v1, "trigger":Landroid/app/Profile$ProfileTrigger;
    if-eqz v1, :cond_1

    .line 647
    iget-object v2, p2, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    # getter for: Landroid/app/Profile$ProfileTrigger;->mId:Ljava/lang/String;
    invoke-static {v1}, Landroid/app/Profile$ProfileTrigger;->access$300(Landroid/app/Profile$ProfileTrigger;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .end local v1    # "trigger":Landroid/app/Profile$ProfileTrigger;
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 652
    :cond_2
    return-void
.end method


# virtual methods
.method public addProfileGroup(Landroid/app/ProfileGroup;)V
    .locals 2
    .param p1, "value"    # Landroid/app/ProfileGroup;

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    if-eqz v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 307
    :cond_0
    iput-object p1, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    .line 309
    :cond_1
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    goto :goto_0
.end method

.method public addSecondaryUuid(Ljava/util/UUID;)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 443
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 446
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 291
    move-object v0, p1

    check-cast v0, Landroid/app/Profile;

    .line 292
    .local v0, "tmp":Landroid/app/Profile;
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 293
    const/4 v1, -0x1

    .line 297
    :goto_0
    return v1

    .line 294
    :cond_0
    iget-object v1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 295
    const/4 v1, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public doSelect(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 758
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 759
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v4, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 760
    .local v3, "sd":Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 761
    invoke-virtual {v3}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v4

    invoke-virtual {v3}, Landroid/app/StreamSettings;->getValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 765
    .end local v3    # "sd":Landroid/app/StreamSettings;
    :cond_1
    iget-object v4, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ConnectionSettings;

    .line 766
    .local v1, "cs":Landroid/app/ConnectionSettings;
    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 767
    invoke-virtual {v1, p1}, Landroid/app/ConnectionSettings;->processOverride(Landroid/content/Context;)V

    goto :goto_1

    .line 771
    .end local v1    # "cs":Landroid/app/ConnectionSettings;
    :cond_3
    iget-object v4, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    invoke-virtual {v4, p1}, Landroid/app/RingModeSettings;->processOverride(Landroid/content/Context;)V

    .line 773
    iget-object v4, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v4, p1}, Landroid/app/AirplaneModeSettings;->processOverride(Landroid/content/Context;)V

    .line 776
    iget-object v4, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    invoke-virtual {v4, p1}, Landroid/app/BrightnessSettings;->processOverride(Landroid/content/Context;)V

    .line 785
    return-void
.end method

.method public getAirplaneMode()Landroid/app/AirplaneModeSettings;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    return-object v0
.end method

.method public getBrightness()Landroid/app/BrightnessSettings;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    return-object v0
.end method

.method public getConnectionSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/ConnectionSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultGroup()Landroid/app/ProfileGroup;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getExpandedDesktopMode()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 327
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileGroups()[Landroid/app/ProfileGroup;
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/ProfileGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/ProfileGroup;

    return-object v0
.end method

.method public getProfileType()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Landroid/app/Profile;->mProfileType:I

    return v0
.end method

.method public getRingMode()Landroid/app/RingModeSettings;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    return-object v0
.end method

.method public getScreenLockMode()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    return v0
.end method

.method public getSecondaryUuids()[Ljava/util/UUID;
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/UUID;

    return-object v0
.end method

.method public getSettingsForConnection(I)Landroid/app/ConnectionSettings;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 805
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    return-object v0
.end method

.method public getSettingsForStream(I)Landroid/app/StreamSettings;
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 789
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StreamSettings;

    return-object v0
.end method

.method public getStatusBarIndicator()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    return v0
.end method

.method public getStreamSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/StreamSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTrigger(ILjava/lang/String;)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 250
    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile$ProfileTrigger;

    move-object v0, v1

    .line 251
    .local v0, "trigger":Landroid/app/Profile$ProfileTrigger;
    :goto_0
    if-eqz v0, :cond_1

    .line 252
    # getter for: Landroid/app/Profile$ProfileTrigger;->mState:I
    invoke-static {v0}, Landroid/app/Profile$ProfileTrigger;->access$200(Landroid/app/Profile$ProfileTrigger;)I

    move-result v1

    .line 254
    :goto_1
    return v1

    .line 250
    .end local v0    # "trigger":Landroid/app/Profile$ProfileTrigger;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    .restart local v0    # "trigger":Landroid/app/Profile$ProfileTrigger;
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getTriggersFromType(I)Ljava/util/ArrayList;
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Profile$ProfileTrigger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Profile$ProfileTrigger;>;"
    iget-object v4, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 260
    .local v1, "profileTrigger":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/Profile$ProfileTrigger;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Profile$ProfileTrigger;

    .line 261
    .local v3, "trigger":Landroid/app/Profile$ProfileTrigger;
    invoke-virtual {v3}, Landroid/app/Profile$ProfileTrigger;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 262
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    .end local v1    # "profileTrigger":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/Profile$ProfileTrigger;>;"
    .end local v3    # "trigger":Landroid/app/Profile$ProfileTrigger;
    :cond_1
    return-object v2
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 426
    :cond_0
    iget-object v0, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 8
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 554
    const-string v6, "<profile "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget v6, p0, Landroid/app/Profile;->mNameResId:I

    if-lez v6, :cond_0

    .line 556
    const-string/jumbo v6, "nameres=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    :goto_0
    const-string v6, "\" uuid=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {p0}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v6, "\">\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v6, "<uuids>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v6, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 568
    .local v5, "u":Ljava/util/UUID;
    const-string v6, "<uuid>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v6, "</uuid>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 559
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "u":Ljava/util/UUID;
    :cond_0
    const-string/jumbo v6, "name=\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 572
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v6, "</uuids>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    const-string v6, "<profiletype>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {p0}, Landroid/app/Profile;->getProfileType()I

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "toggle"

    :goto_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v6, "</profiletype>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v6, "<statusbar>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {p0}, Landroid/app/Profile;->getStatusBarIndicator()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "yes"

    :goto_3
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v6, "</statusbar>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v6, "<screen-lock-mode>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget v6, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    const-string v6, "</screen-lock-mode>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v6, "<expanded-desktop-mode>"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v6, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v6, "</expanded-desktop-mode>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v6, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v6, p1, p2}, Landroid/app/AirplaneModeSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 592
    iget-object v6, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    invoke-virtual {v6, p1, p2}, Landroid/app/BrightnessSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 594
    iget-object v6, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    invoke-virtual {v6, p1, p2}, Landroid/app/RingModeSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    .line 596
    iget-object v6, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ProfileGroup;

    .line 597
    .local v2, "pGroup":Landroid/app/ProfileGroup;
    invoke-virtual {v2, p1, p2}, Landroid/app/ProfileGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_4

    .line 575
    .end local v2    # "pGroup":Landroid/app/ProfileGroup;
    :cond_2
    const-string v6, "conditional"

    goto :goto_2

    .line 579
    :cond_3
    const-string/jumbo v6, "no"

    goto :goto_3

    .line 599
    :cond_4
    iget-object v6, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 600
    .local v3, "sd":Landroid/app/StreamSettings;
    invoke-virtual {v3, p1, p2}, Landroid/app/StreamSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_5

    .line 602
    .end local v3    # "sd":Landroid/app/StreamSettings;
    :cond_5
    iget-object v6, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .line 603
    .local v0, "cs":Landroid/app/ConnectionSettings;
    invoke-virtual {v0, p1, p2}, Landroid/app/ConnectionSettings;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_6

    .line 605
    .end local v0    # "cs":Landroid/app/ConnectionSettings;
    :cond_6
    iget-object v6, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 606
    const-string v6, "<triggers>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    iget-object v6, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Profile$ProfileTrigger;

    .line 608
    .local v4, "trigger":Landroid/app/Profile$ProfileTrigger;
    invoke-virtual {v4, p1, p2}, Landroid/app/Profile$ProfileTrigger;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_7

    .line 610
    .end local v4    # "trigger":Landroid/app/Profile$ProfileTrigger;
    :cond_7
    const-string v6, "</triggers>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_8
    const-string v6, "</profile>\n"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/app/Profile;->mDirty:Z

    .line 615
    return-void
.end method

.method public isConditionalType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 458
    iget v1, p0, Landroid/app/Profile;->mProfileType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 522
    iget-boolean v5, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v5, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v4

    .line 525
    :cond_1
    iget-object v5, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileGroup;

    .line 526
    .local v1, "group":Landroid/app/ProfileGroup;
    invoke-virtual {v1}, Landroid/app/ProfileGroup;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 530
    .end local v1    # "group":Landroid/app/ProfileGroup;
    :cond_3
    iget-object v5, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StreamSettings;

    .line 531
    .local v3, "stream":Landroid/app/StreamSettings;
    invoke-virtual {v3}, Landroid/app/StreamSettings;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 535
    .end local v3    # "stream":Landroid/app/StreamSettings;
    :cond_5
    iget-object v5, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ConnectionSettings;

    .line 536
    .local v0, "conn":Landroid/app/ConnectionSettings;
    invoke-virtual {v0}, Landroid/app/ConnectionSettings;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 540
    .end local v0    # "conn":Landroid/app/ConnectionSettings;
    :cond_7
    iget-object v5, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    invoke-virtual {v5}, Landroid/app/RingModeSettings;->isDirty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 543
    iget-object v5, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    invoke-virtual {v5}, Landroid/app/AirplaneModeSettings;->isDirty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 546
    iget-object v5, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    invoke-virtual {v5}, Landroid/app/BrightnessSettings;->isDirty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 549
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mNameResId:I

    .line 372
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/ParcelUuid;

    invoke-virtual {v9}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v9

    iput-object v9, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    .line 373
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .local v6, "parcel":Landroid/os/Parcelable;
    move-object v8, v6

    .line 374
    check-cast v8, Landroid/os/ParcelUuid;

    .line 375
    .local v8, "u":Landroid/os/ParcelUuid;
    iget-object v9, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 377
    .end local v6    # "parcel":Landroid/os/Parcelable;
    .end local v8    # "u":Landroid/os/ParcelUuid;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_2

    move v9, v10

    :goto_1
    iput-boolean v9, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 378
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mProfileType:I

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v10, :cond_3

    :goto_2
    iput-boolean v10, p0, Landroid/app/Profile;->mDirty:Z

    .line 380
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .local v2, "group":Landroid/os/Parcelable;
    move-object v3, v2

    .line 381
    check-cast v3, Landroid/app/ProfileGroup;

    .line 382
    .local v3, "grp":Landroid/app/ProfileGroup;
    iget-object v9, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-virtual {v3}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 384
    iput-object v3, p0, Landroid/app/Profile;->mDefaultGroup:Landroid/app/ProfileGroup;

    .line 380
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2    # "group":Landroid/os/Parcelable;
    .end local v3    # "grp":Landroid/app/ProfileGroup;
    :cond_2
    move v9, v11

    .line 377
    goto :goto_1

    :cond_3
    move v10, v11

    .line 379
    goto :goto_2

    .line 387
    :cond_4
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_5

    aget-object v6, v0, v4

    .restart local v6    # "parcel":Landroid/os/Parcelable;
    move-object v7, v6

    .line 388
    check-cast v7, Landroid/app/StreamSettings;

    .line 389
    .local v7, "stream":Landroid/app/StreamSettings;
    iget-object v9, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 391
    .end local v6    # "parcel":Landroid/os/Parcelable;
    .end local v7    # "stream":Landroid/app/StreamSettings;
    :cond_5
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_6

    aget-object v6, v0, v4

    .restart local v6    # "parcel":Landroid/os/Parcelable;
    move-object v1, v6

    .line 392
    check-cast v1, Landroid/app/ConnectionSettings;

    .line 393
    .local v1, "connection":Landroid/app/ConnectionSettings;
    iget-object v9, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 395
    .end local v1    # "connection":Landroid/app/ConnectionSettings;
    .end local v6    # "parcel":Landroid/os/Parcelable;
    :cond_6
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/RingModeSettings;

    iput-object v9, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    .line 396
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/AirplaneModeSettings;

    iput-object v9, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    .line 397
    invoke-virtual {p1, v13}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/BrightnessSettings;

    iput-object v9, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 399
    iget-object v9, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-virtual {p1, v9, v13}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    .line 401
    return-void
.end method

.method public removeProfileGroup(Ljava/util/UUID;)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 315
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileGroup;

    invoke-virtual {v0}, Landroid/app/ProfileGroup;->isDefaultGroup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    const-string v0, "Profile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove default group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAirplaneMode(Landroid/app/AirplaneModeSettings;)V
    .locals 1
    .param p1, "descriptor"    # Landroid/app/AirplaneModeSettings;

    .prologue
    .line 507
    iput-object p1, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 509
    return-void
.end method

.method public setBrightness(Landroid/app/BrightnessSettings;)V
    .locals 1
    .param p1, "descriptor"    # Landroid/app/BrightnessSettings;

    .prologue
    .line 516
    iput-object p1, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 518
    return-void
.end method

.method public setConditionalType()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 462
    iput v0, p0, Landroid/app/Profile;->mProfileType:I

    .line 463
    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 464
    return-void
.end method

.method public setConnectionSettings(Landroid/app/ConnectionSettings;)V
    .locals 2
    .param p1, "descriptor"    # Landroid/app/ConnectionSettings;

    .prologue
    .line 810
    iget-object v0, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/ConnectionSettings;->getConnectionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    return-void
.end method

.method public setExpandedDesktopMode(I)V
    .locals 1
    .param p1, "expandedDesktopMode"    # I

    .prologue
    .line 493
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    .line 499
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 500
    return-void

    .line 497
    :cond_1
    iput p1, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    .line 410
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Profile;->mNameResId:I

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 412
    return-void
.end method

.method public setProfileType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 420
    iput p1, p0, Landroid/app/Profile;->mProfileType:I

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 422
    return-void
.end method

.method public setRingMode(Landroid/app/RingModeSettings;)V
    .locals 1
    .param p1, "descriptor"    # Landroid/app/RingModeSettings;

    .prologue
    .line 471
    iput-object p1, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 473
    return-void
.end method

.method public setScreenLockMode(I)V
    .locals 1
    .param p1, "screenLockMode"    # I

    .prologue
    .line 480
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Profile;->mScreenLockMode:I

    .line 485
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 486
    return-void

    .line 483
    :cond_1
    iput p1, p0, Landroid/app/Profile;->mScreenLockMode:I

    goto :goto_0
.end method

.method public setSecondaryUuids(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 435
    if-eqz p1, :cond_0

    .line 436
    iget-object v0, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 439
    :cond_0
    return-void
.end method

.method public setStatusBarIndicator(Z)V
    .locals 1
    .param p1, "newStatusBarIndicator"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 455
    return-void
.end method

.method public setStreamSettings(Landroid/app/StreamSettings;)V
    .locals 2
    .param p1, "descriptor"    # Landroid/app/StreamSettings;

    .prologue
    .line 794
    iget-object v0, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/StreamSettings;->getStreamId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Profile;->mDirty:Z

    .line 796
    return-void
.end method

.method public setTrigger(ILjava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 269
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    if-gt p1, v3, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x4

    if-le p3, v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile$ProfileTrigger;

    .line 277
    .local v0, "trigger":Landroid/app/Profile$ProfileTrigger;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 278
    if-eqz v0, :cond_2

    .line 279
    iget-object v1, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_2
    :goto_1
    iput-boolean v3, p0, Landroid/app/Profile;->mDirty:Z

    goto :goto_0

    .line 281
    :cond_3
    if-eqz v0, :cond_4

    .line 282
    # setter for: Landroid/app/Profile$ProfileTrigger;->mState:I
    invoke-static {v0, p3}, Landroid/app/Profile$ProfileTrigger;->access$202(Landroid/app/Profile$ProfileTrigger;I)I

    goto :goto_1

    .line 284
    :cond_4
    iget-object v1, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    new-instance v2, Landroid/app/Profile$ProfileTrigger;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/app/Profile$ProfileTrigger;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public validateRingtones(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 656
    iget-object v2, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfileGroup;

    .line 657
    .local v1, "pg":Landroid/app/ProfileGroup;
    invoke-virtual {v1, p1}, Landroid/app/ProfileGroup;->validateOverrideUris(Landroid/content/Context;)V

    goto :goto_0

    .line 659
    .end local v1    # "pg":Landroid/app/ProfileGroup;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 343
    iget-object v3, p0, Landroid/app/Profile;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget v3, p0, Landroid/app/Profile;->mNameResId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v6, p0, Landroid/app/Profile;->mUuid:Ljava/util/UUID;

    invoke-direct {v3, v6}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v3, p1, v5}, Landroid/os/ParcelUuid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 346
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    .local v2, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/ParcelUuid;>;"
    iget-object v3, p0, Landroid/app/Profile;->mSecondaryUuids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 348
    .local v1, "u":Ljava/util/UUID;
    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    .end local v1    # "u":Ljava/util/UUID;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 351
    iget-boolean v3, p0, Landroid/app/Profile;->mStatusBarIndicator:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v3, p0, Landroid/app/Profile;->mProfileType:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-boolean v3, p0, Landroid/app/Profile;->mDirty:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v3, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->profileGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 356
    iget-object v3, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 358
    iget-object v3, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Profile;->connections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 360
    iget-object v3, p0, Landroid/app/Profile;->mRingMode:Landroid/app/RingModeSettings;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 361
    iget-object v3, p0, Landroid/app/Profile;->mAirplaneMode:Landroid/app/AirplaneModeSettings;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 362
    iget-object v3, p0, Landroid/app/Profile;->mBrightness:Landroid/app/BrightnessSettings;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 363
    iget v3, p0, Landroid/app/Profile;->mScreenLockMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object v3, p0, Landroid/app/Profile;->mTriggers:Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 365
    iget v3, p0, Landroid/app/Profile;->mExpandedDesktopMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    return-void

    :cond_1
    move v3, v5

    .line 351
    goto :goto_1

    :cond_2
    move v4, v5

    .line 353
    goto :goto_2
.end method
