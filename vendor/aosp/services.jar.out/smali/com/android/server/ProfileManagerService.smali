.class public Lcom/android/server/ProfileManagerService;
.super Landroid/app/IProfileManager$Stub;
.source "ProfileManagerService.java"


# static fields
.field private static final LOCAL_LOGV:Z = false

.field public static final PERMISSION_CHANGE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SETTINGS"

.field static final PROFILE_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "ProfileService"

.field private static final mWildcardUUID:Ljava/util/UUID;


# instance fields
.field private mActiveProfile:Landroid/app/Profile;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mContext:Landroid/content/Context;

.field private mDirty:Z

.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mProfileNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggerHelper:Lcom/android/server/ProfileTriggerHelper;

.field private mWildcardGroup:Landroid/app/NotificationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "profiles.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    .line 73
    const-string v0, "a126d48a-aaef-47c4-baed-7f0e44aeffe5"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/server/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x1040023

    .line 95
    invoke-direct {p0}, Landroid/app/IProfileManager$Stub;-><init>()V

    .line 82
    new-instance v1, Lcom/android/server/ProfileManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ProfileManagerService$1;-><init>(Lcom/android/server/ProfileManagerService;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    .line 97
    new-instance v1, Landroid/app/backup/BackupManager;

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 98
    new-instance v1, Lcom/android/server/ProfileTriggerHelper;

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/ProfileTriggerHelper;-><init>(Landroid/content/Context;Lcom/android/server/ProfileManagerService;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mTriggerHelper:Lcom/android/server/ProfileTriggerHelper;

    .line 100
    new-instance v1, Landroid/app/NotificationGroup;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/ProfileManagerService;->mWildcardUUID:Ljava/util/UUID;

    invoke-direct {v1, v2, v4, v3}, Landroid/app/NotificationGroup;-><init>(Ljava/lang/String;ILjava/util/UUID;)V

    iput-object v1, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    .line 105
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialize()V

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ProfileManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ProfileManagerService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ProfileManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ProfileManagerService;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialize()V

    return-void
.end method

.method private addNotificationGroupInternal(Landroid/app/NotificationGroup;)V
    .locals 4
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 406
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

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

    check-cast v1, Landroid/app/Profile;

    .line 410
    .local v1, "profile":Landroid/app/Profile;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 413
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "profile":Landroid/app/Profile;
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 414
    return-void
.end method

.method private addProfileInternal(Landroid/app/Profile;)V
    .locals 6
    .param p1, "profile"    # Landroid/app/Profile;

    .prologue
    const/4 v5, 0x1

    .line 253
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 254
    .local v0, "group":Landroid/app/NotificationGroup;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    goto :goto_0

    .line 256
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :cond_0
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    invoke-direct {p0, p1, v2, v5}, Lcom/android/server/ProfileManagerService;->ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V

    .line 257
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iput-boolean v5, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 260
    return-void
.end method

.method private enforceChangePermissions()V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SETTINGS"

    const-string v2, "You do not have permissions to change the Profile Manager."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method private ensureGroupInProfile(Landroid/app/Profile;Landroid/app/NotificationGroup;Z)V
    .locals 6
    .param p1, "profile"    # Landroid/app/Profile;
    .param p2, "group"    # Landroid/app/NotificationGroup;
    .param p3, "defaultGroup"    # Z

    .prologue
    .line 264
    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p1}, Landroid/app/Profile;->getProfileGroups()[Landroid/app/ProfileGroup;

    move-result-object v0

    .local v0, "arr$":[Landroid/app/ProfileGroup;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 271
    .local v3, "pg":Landroid/app/ProfileGroup;
    invoke-virtual {v3, p2, p3}, Landroid/app/ProfileGroup;->matches(Landroid/app/NotificationGroup;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v3    # "pg":Landroid/app/ProfileGroup;
    :cond_2
    new-instance v4, Landroid/app/ProfileGroup;

    invoke-virtual {p2}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Landroid/app/ProfileGroup;-><init>(Ljava/util/UUID;Z)V

    invoke-virtual {p1, v4}, Landroid/app/Profile;->addProfileGroup(Landroid/app/ProfileGroup;)V

    goto :goto_0
.end method

.method private getProfile(Ljava/util/UUID;)Landroid/app/Profile;
    .locals 7
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 300
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Profile;

    .line 312
    :goto_0
    return-object v6

    .line 304
    :cond_0
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Profile;

    .line 305
    .local v4, "p":Landroid/app/Profile;
    invoke-virtual {v4}, Landroid/app/Profile;->getSecondaryUuids()[Ljava/util/UUID;

    move-result-object v0

    .local v0, "arr$":[Ljava/util/UUID;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 306
    .local v5, "uuid":Ljava/util/UUID;
    invoke-virtual {p1, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    .line 307
    goto :goto_0

    .line 305
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    .end local v0    # "arr$":[Ljava/util/UUID;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "p":Landroid/app/Profile;
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getXmlString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v4, "<profiles>\n<active>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p0}, Lcom/android/server/ProfileManagerService;->getActiveProfile()Landroid/app/Profile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v4, "</active>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Profile;

    .line 534
    .local v3, "p":Landroid/app/Profile;
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Landroid/app/Profile;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_0

    .line 536
    .end local v3    # "p":Landroid/app/Profile;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationGroup;

    .line 537
    .local v1, "g":Landroid/app/NotificationGroup;
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v4}, Landroid/app/NotificationGroup;->getXmlString(Ljava/lang/StringBuilder;Landroid/content/Context;)V

    goto :goto_1

    .line 539
    .end local v1    # "g":Landroid/app/NotificationGroup;
    :cond_1
    const-string v4, "</profiles>\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initialiseStructure()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 519
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 520
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 521
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 525
    return-void

    .line 523
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ProfileManagerService;->initialize(Z)V

    .line 115
    return-void
.end method

.method private initialize(Z)V
    .locals 5
    .param p1, "skipFile"    # Z

    .prologue
    .line 118
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    .line 119
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    .line 120
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    .line 121
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 123
    move v2, p1

    .line 125
    .local v2, "init":Z
    if-nez p1, :cond_0

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->loadFromFile()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 137
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialiseStructure()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 142
    :cond_1
    :goto_1
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v2, 0x1

    .line 132
    goto :goto_0

    .line 130
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 139
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v3, "ProfileService"

    const-string v4, "Error loading xml from resource: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadFromFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 463
    .local v2, "xppf":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 464
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/FileReader;

    sget-object v3, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 465
    .local v0, "fr":Ljava/io/FileReader;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 466
    iget-object v3, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v3}, Lcom/android/server/ProfileManagerService;->loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    .line 467
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    .line 468
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 469
    return-void
.end method

.method private loadXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V
    .locals 11
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 473
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 474
    .local v2, "event":I
    const/4 v0, 0x0

    .line 475
    .local v0, "active":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_0

    const-string v6, "profiles"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 476
    :cond_0
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    .line 477
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "name":Ljava/lang/String;
    const-string v6, "active"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 479
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string v6, "ProfileService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found active: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 481
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    const-string v6, "profile"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 482
    invoke-static {p1, p2}, Landroid/app/Profile;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/Profile;

    move-result-object v5

    .line 483
    .local v5, "prof":Landroid/app/Profile;
    invoke-direct {p0, v5}, Lcom/android/server/ProfileManagerService;->addProfileInternal(Landroid/app/Profile;)V

    .line 485
    if-nez v0, :cond_1

    .line 486
    invoke-virtual {v5}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 488
    .end local v5    # "prof":Landroid/app/Profile;
    :cond_3
    const-string v6, "notificationGroup"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 489
    invoke-static {p1, p2}, Landroid/app/NotificationGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)Landroid/app/NotificationGroup;

    move-result-object v4

    .line 490
    .local v4, "ng":Landroid/app/NotificationGroup;
    invoke-direct {p0, v4}, Lcom/android/server/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    goto :goto_1

    .line 492
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "ng":Landroid/app/NotificationGroup;
    :cond_4
    if-ne v2, v10, :cond_1

    .line 493
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Premature end of file while reading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 501
    :cond_5
    :try_start_0
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Ljava/util/UUID;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_2
    return-void

    .line 502
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 504
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    invoke-direct {p0, v6, v9}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Ljava/util/UUID;Z)Z

    .line 511
    :goto_3
    iput-boolean v10, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    goto :goto_2

    .line 508
    :cond_6
    iget-object v6, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Profile;

    invoke-virtual {p0, v6, v9}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)V

    goto :goto_3
.end method

.method private declared-synchronized persistIfDirty()V
    .locals 10

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 553
    .local v0, "dirty":Z
    if-nez v0, :cond_1

    .line 554
    iget-object v8, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Profile;

    .line 555
    .local v5, "profile":Landroid/app/Profile;
    invoke-virtual {v5}, Landroid/app/Profile;->isDirty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 556
    const/4 v0, 0x1

    .line 561
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "profile":Landroid/app/Profile;
    :cond_1
    if-nez v0, :cond_3

    .line 562
    iget-object v8, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationGroup;

    .line 563
    .local v3, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v3}, Landroid/app/NotificationGroup;->isDirty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 564
    const/4 v0, 0x1

    .line 569
    .end local v3    # "group":Landroid/app/NotificationGroup;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v0, :cond_4

    .line 571
    :try_start_1
    const-string v8, "ProfileService"

    const-string v9, "Saving profile data..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    new-instance v2, Ljava/io/FileWriter;

    sget-object v8, Lcom/android/server/ProfileManagerService;->PROFILE_FILE:Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 573
    .local v2, "fw":Ljava/io/FileWriter;
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->getXmlString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 575
    const-string v8, "ProfileService"

    const-string v9, "Save completed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 578
    invoke-static {}, Lcom/android/server/ProfileManagerService;->clearCallingIdentity()J

    move-result-wide v6

    .line 579
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/ProfileManagerService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v8}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 580
    invoke-static {v6, v7}, Lcom/android/server/ProfileManagerService;->restoreCallingIdentity(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    .end local v2    # "fw":Ljava/io/FileWriter;
    .end local v6    # "token":J
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 581
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 552
    .end local v0    # "dirty":Z
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private setActiveProfile(Ljava/util/UUID;Z)Z
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;
    .param p2, "doInit"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    const-string v0, "ProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set active profile to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)V

    .line 180
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 0
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/ProfileManagerService;->addNotificationGroupInternal(Landroid/app/NotificationGroup;)V

    .line 402
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 403
    return-void
.end method

.method public addProfile(Landroid/app/Profile;)Z
    .locals 1
    .param p1, "profile"    # Landroid/app/Profile;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/server/ProfileManagerService;->addProfileInternal(Landroid/app/Profile;)V

    .line 247
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public getActiveProfile()Landroid/app/Profile;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    return-object v0
.end method

.method public getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    .locals 2
    .param p1, "uuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 545
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mWildcardGroup:Landroid/app/NotificationGroup;

    .line 548
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    goto :goto_0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 445
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v0, p1}, Landroid/app/NotificationGroup;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/NotificationGroup;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/NotificationGroup;

    return-object v0
.end method

.method public getProfile(Landroid/os/ParcelUuid;)Landroid/app/Profile;
    .locals 2
    .param p1, "profileParcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    .line 295
    .local v0, "profileUuid":Ljava/util/UUID;
    invoke-direct {p0, v0}, Lcom/android/server/ProfileManagerService;->getProfile(Ljava/util/UUID;)Landroid/app/Profile;

    move-result-object v1

    return-object v1
.end method

.method public getProfileByName(Ljava/lang/String;)Landroid/app/Profile;
    .locals 2
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 288
    :goto_0
    return-object v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getProfileList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getProfiles()[Landroid/app/Profile;
    .locals 3

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/android/server/ProfileManagerService;->getProfileList()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Profile;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/Profile;

    .line 322
    .local v0, "profiles":[Landroid/app/Profile;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 323
    return-object v0
.end method

.method public notificationGroupExistsByName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "notificationGroupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 386
    .local v0, "group":Landroid/app/NotificationGroup;
    invoke-virtual {v0}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    const/4 v2, 0x1

    .line 390
    .end local v0    # "group":Landroid/app/NotificationGroup;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public profileExists(Landroid/os/ParcelUuid;)Z
    .locals 2
    .param p1, "profileUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public profileExistsByName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 375
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    const/4 v2, 0x1

    .line 379
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/UUID;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 419
    iget-boolean v3, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 422
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Profile;

    .line 423
    .local v1, "profile":Landroid/app/Profile;
    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Profile;->removeProfileGroup(Ljava/util/UUID;)V

    goto :goto_1

    .line 419
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "profile":Landroid/app/Profile;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 425
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 426
    return-void
.end method

.method public removeProfile(Landroid/app/Profile;)Z
    .locals 3
    .param p1, "profile"    # Landroid/app/Profile;

    .prologue
    const/4 v0, 0x1

    .line 333
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 334
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    iput-boolean v0, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 337
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetAll()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ProfileManagerService;->initialize(Z)V

    .line 148
    return-void
.end method

.method setActiveProfile(Landroid/app/Profile;Z)V
    .locals 7
    .param p1, "newActiveProfile"    # Landroid/app/Profile;
    .param p2, "doInit"    # Z

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 194
    const-string v4, "ProfileService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set active profile to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    .line 198
    .local v1, "lastProfile":Landroid/app/Profile;
    iput-object p1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    .line 199
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/ProfileManagerService;->mDirty:Z

    .line 201
    if-eqz p2, :cond_1

    .line 210
    invoke-static {}, Lcom/android/server/ProfileManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 213
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    iget-object v5, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/app/Profile;->doSelect(Landroid/content/Context;)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PROFILE_SELECTED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v4, "name"

    iget-object v5, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v4, "uuid"

    iget-object v5, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v4, "lastName"

    invoke-virtual {v1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v4, "uuid"

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 228
    invoke-static {v2, v3}, Lcom/android/server/ProfileManagerService;->restoreCallingIdentity(J)V

    .line 229
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 241
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v2    # "token":J
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    if-eq v1, v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    invoke-static {}, Lcom/android/server/ProfileManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 233
    .restart local v2    # "token":J
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PROFILE_UPDATED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v0    # "broadcast":Landroid/content/Intent;
    const-string v4, "name"

    iget-object v5, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v4, "uuid"

    iget-object v5, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v5}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v4, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 239
    invoke-static {v2, v3}, Lcom/android/server/ProfileManagerService;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setActiveProfile(Landroid/os/ParcelUuid;)Z
    .locals 2
    .param p1, "profileParcelUuid"    # Landroid/os/ParcelUuid;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Ljava/util/UUID;Z)Z

    move-result v0

    return v0
.end method

.method public setActiveProfileByName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 153
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "ProfileService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find profile to set active, based on string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)V

    move v0, v1

    .line 163
    goto :goto_0
.end method

.method settingsRestored()V
    .locals 3

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->initialize()V

    .line 455
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

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

    check-cast v1, Landroid/app/Profile;

    .line 456
    .local v1, "p":Landroid/app/Profile;
    iget-object v2, p0, Lcom/android/server/ProfileManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/app/Profile;->validateRingtones(Landroid/content/Context;)V

    goto :goto_0

    .line 458
    .end local v1    # "p":Landroid/app/Profile;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 459
    return-void
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 431
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationGroup;

    .line 432
    .local v0, "old":Landroid/app/NotificationGroup;
    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mGroups:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    goto :goto_0
.end method

.method public updateProfile(Landroid/app/Profile;)V
    .locals 4
    .param p1, "profile"    # Landroid/app/Profile;

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->enforceChangePermissions()V

    .line 347
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Profile;

    .line 349
    .local v0, "old":Landroid/app/Profile;
    if-nez v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfileNames:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mProfiles:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-direct {p0}, Lcom/android/server/ProfileManagerService;->persistIfDirty()V

    .line 361
    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ProfileManagerService;->mActiveProfile:Landroid/app/Profile;

    invoke-virtual {v1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ProfileManagerService;->setActiveProfile(Landroid/app/Profile;Z)V

    goto :goto_0
.end method
