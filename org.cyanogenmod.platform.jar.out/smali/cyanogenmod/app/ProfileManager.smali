.class public Lcyanogenmod/app/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field public static final ACTION_PROFILE_PICKER:Ljava/lang/String; = "cyanogenmod.platform.intent.action.PROFILE_PICKER"

.field public static final EXTRA_LAST_PROFILE_NAME:Ljava/lang/String; = "lastName"

.field public static final EXTRA_LAST_PROFILE_UUID:Ljava/lang/String; = "lastUuid"

.field public static final EXTRA_PROFILES_STATE:Ljava/lang/String; = "profile_state"

.field public static final EXTRA_PROFILE_DIALOG_THEME:Ljava/lang/String; = "cyanogenmod.platform.intent.extra.profile.DIALOG_THEME"

.field public static final EXTRA_PROFILE_EXISTING_UUID:Ljava/lang/String; = "cyanogenmod.platform.extra.profile.EXISTING_UUID"

.field public static final EXTRA_PROFILE_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PROFILE_PICKED_UUID:Ljava/lang/String; = "cyanogenmod.platform.intent.extra.profile.PICKED_UUID"

.field public static final EXTRA_PROFILE_SHOW_NONE:Ljava/lang/String; = "cyanogenmod.platform.intent.extra.profile.SHOW_NONE"

.field public static final EXTRA_PROFILE_TITLE:Ljava/lang/String; = "cyanogenmod.platform.intent.extra.profile.TITLE"

.field public static final EXTRA_PROFILE_UUID:Ljava/lang/String; = "uuid"

.field public static final EXTRA_TRIGGER_ID:Ljava/lang/String; = "trigger_id"

.field public static final EXTRA_TRIGGER_STATE:Ljava/lang/String; = "trigger_state"

.field public static final EXTRA_TRIGGER_TYPE:Ljava/lang/String; = "trigger_type"

.field public static final INTENT_ACTION_PROFILE_SELECTED:Ljava/lang/String; = "cyanogenmod.platform.intent.action.PROFILE_SELECTED"

.field public static final INTENT_ACTION_PROFILE_TRIGGER_STATE_CHANGED:Ljava/lang/String; = "cyanogenmod.platform.intent.action.INTENT_ACTION_PROFILE_TRIGGER_STATE_CHANGED"

.field public static final INTENT_ACTION_PROFILE_UPDATED:Ljava/lang/String; = "cyanogenmod.platform.intent.action.PROFILE_UPDATED"

.field public static final NO_PROFILE:Ljava/util/UUID;

.field public static final PROFILES_STATE_CHANGED_ACTION:Ljava/lang/String; = "cyanogenmod.platform.app.profiles.PROFILES_STATE_CHANGED"

.field public static final PROFILES_STATE_DISABLED:I = 0x0

.field public static final PROFILES_STATE_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProfileManager"

.field private static sProfileManagerInstance:Lcyanogenmod/app/ProfileManager;

.field private static sService:Lcyanogenmod/app/IProfileManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const-string/jumbo v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 149
    sput-object v0, Lcyanogenmod/app/ProfileManager;->NO_PROFILE:Ljava/util/UUID;

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 242
    iput-object v0, p0, Lcyanogenmod/app/ProfileManager;->mContext:Landroid/content/Context;

    .line 246
    :goto_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 249
    const-string/jumbo v2, "org.cyanogenmod.profiles"

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    if-nez v1, :cond_0

    .line 250
    const-string/jumbo v1, "ProfileManager"

    const-string/jumbo v2, "Unable to get ProfileManagerService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void

    .line 244
    :cond_1
    iput-object p1, p0, Lcyanogenmod/app/ProfileManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcyanogenmod/app/ProfileManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    sget-object v0, Lcyanogenmod/app/ProfileManager;->sProfileManagerInstance:Lcyanogenmod/app/ProfileManager;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcyanogenmod/app/ProfileManager;

    invoke-direct {v0, p0}, Lcyanogenmod/app/ProfileManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcyanogenmod/app/ProfileManager;->sProfileManagerInstance:Lcyanogenmod/app/ProfileManager;

    .line 265
    :cond_0
    sget-object v0, Lcyanogenmod/app/ProfileManager;->sProfileManagerInstance:Lcyanogenmod/app/ProfileManager;

    return-object v0
.end method

.method public static getService()Lcyanogenmod/app/IProfileManager;
    .locals 2

    .prologue
    .line 270
    sget-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    if-eqz v1, :cond_0

    .line 271
    sget-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    return-object v1

    .line 273
    :cond_0
    const-string/jumbo v1, "profile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 274
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcyanogenmod/app/IProfileManager$Stub;->asInterface(Landroid/os/IBinder;)Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    sput-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    .line 275
    sget-object v1, Lcyanogenmod/app/ProfileManager;->sService:Lcyanogenmod/app/IProfileManager;

    return-object v1
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 478
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProfile(Lcyanogenmod/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 318
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->addProfile(Lcyanogenmod/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfile()Lcyanogenmod/app/Profile;
    .locals 3

    .prologue
    .line 305
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/IProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    const/4 v1, 0x0

    return-object v1
.end method

.method public getActiveProfileGroup(Ljava/lang/String;)Lcyanogenmod/app/ProfileGroup;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcyanogenmod/app/ProfileManager;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;

    move-result-object v1

    .line 546
    .local v1, "notificationGroup":Landroid/app/NotificationGroup;
    if-nez v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcyanogenmod/app/Profile;->getDefaultGroup()Lcyanogenmod/app/ProfileGroup;

    move-result-object v0

    .line 548
    .local v0, "defaultGroup":Lcyanogenmod/app/ProfileGroup;
    return-object v0

    .line 550
    .end local v0    # "defaultGroup":Lcyanogenmod/app/ProfileGroup;
    :cond_0
    invoke-virtual {p0}, Lcyanogenmod/app/ProfileManager;->getActiveProfile()Lcyanogenmod/app/Profile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcyanogenmod/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lcyanogenmod/app/ProfileGroup;

    move-result-object v2

    return-object v2
.end method

.method public getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 531
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcyanogenmod/app/IProfileManager;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 517
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 3

    .prologue
    .line 464
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/IProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProfile(Ljava/lang/String;)Lcyanogenmod/app/Profile;
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->getProfileByName(Ljava/lang/String;)Lcyanogenmod/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProfile(Ljava/util/UUID;)Lcyanogenmod/app/Profile;
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 370
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcyanogenmod/app/IProfileManager;->getProfile(Landroid/os/ParcelUuid;)Lcyanogenmod/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 383
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v4

    invoke-interface {v4}, Lcyanogenmod/app/IProfileManager;->getProfiles()[Lcyanogenmod/app/Profile;

    move-result-object v3

    .line 384
    .local v3, "profiles":[Lcyanogenmod/app/Profile;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 385
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 386
    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcyanogenmod/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-object v2

    .line 389
    .end local v1    # "i":I
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "profiles":[Lcyanogenmod/app/Profile;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/4 v4, 0x0

    return-object v4
.end method

.method public getProfiles()[Lcyanogenmod/app/Profile;
    .locals 3

    .prologue
    .line 401
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/IProfileManager;->getProfiles()[Lcyanogenmod/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    const/4 v1, 0x0

    return-object v1
.end method

.method public isProfilesEnabled()Z
    .locals 3

    .prologue
    .line 572
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Lcyanogenmod/app/IProfileManager;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/4 v1, 0x0

    return v1
.end method

.method public notificationGroupExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "notificationGroupName"    # Ljava/lang/String;

    .prologue
    .line 448
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->notificationGroupExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    const/4 v1, 0x1

    return v1
.end method

.method public profileExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 415
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->profileExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    const/4 v1, 0x1

    return v1
.end method

.method public profileExists(Ljava/util/UUID;)Z
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 431
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcyanogenmod/app/IProfileManager;->profileExists(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    const/4 v1, 0x1

    return v1
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 491
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeProfile(Lcyanogenmod/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 330
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->removeProfile(Lcyanogenmod/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetAll()V
    .locals 4

    .prologue
    .line 558
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v2

    invoke-interface {v2}, Lcyanogenmod/app/IProfileManager;->resetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "ProfileManager"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 559
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->setActiveProfileByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/util/UUID;)V
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Lcyanogenmod/app/IProfileManager;->setActiveProfile(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 504
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->updateNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateProfile(Lcyanogenmod/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcyanogenmod/app/Profile;

    .prologue
    .line 342
    :try_start_0
    invoke-static {}, Lcyanogenmod/app/ProfileManager;->getService()Lcyanogenmod/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcyanogenmod/app/IProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
