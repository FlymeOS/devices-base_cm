.class public Landroid/app/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field public static final ACTION_PROFILE_PICKER:Ljava/lang/String; = "android.intent.action.PROFILE_PICKER"

.field public static final EXTRA_LAST_PROFILE_NAME:Ljava/lang/String; = "lastName"

.field public static final EXTRA_LAST_PROFILE_UUID:Ljava/lang/String; = "uuid"

.field public static final EXTRA_PROFILES_STATE:Ljava/lang/String; = "profile_state"

.field public static final EXTRA_PROFILE_DIALOG_THEME:Ljava/lang/String; = "android.intent.extra.profile.DIALOG_THEME"

.field public static final EXTRA_PROFILE_EXISTING_UUID:Ljava/lang/String; = "android.intent.extra.profile.EXISTING_UUID"

.field public static final EXTRA_PROFILE_NAME:Ljava/lang/String; = "name"

.field public static final EXTRA_PROFILE_PICKED_UUID:Ljava/lang/String; = "android.intent.extra.profile.PICKED_UUID"

.field public static final EXTRA_PROFILE_SHOW_NONE:Ljava/lang/String; = "android.intent.extra.profile.SHOW_NONE"

.field public static final EXTRA_PROFILE_TITLE:Ljava/lang/String; = "android.intent.extra.profile.TITLE"

.field public static final EXTRA_PROFILE_UUID:Ljava/lang/String; = "uuid"

.field public static final INTENT_ACTION_PROFILE_SELECTED:Ljava/lang/String; = "android.intent.action.PROFILE_SELECTED"

.field public static final INTENT_ACTION_PROFILE_UPDATED:Ljava/lang/String; = "android.intent.action.PROFILE_UPDATED"

.field public static final NO_PROFILE:Ljava/util/UUID;

.field public static final PROFILES_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.app.profiles.PROFILES_STATE_CHANGED"

.field public static final PROFILES_STATE_DISABLED:I = 0x0

.field public static final PROFILES_STATE_ENABLED:I = 0x1

.field private static final SYSTEM_PROFILES_ENABLED:Ljava/lang/String; = "system_profiles_enabled"

.field private static final TAG:Ljava/lang/String; = "ProfileManager"

.field private static mEmptyProfile:Landroid/app/Profile;

.field private static sService:Landroid/app/IProfileManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/app/ProfileManager;->NO_PROFILE:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    .line 221
    new-instance v0, Landroid/app/Profile;

    const-string v1, "EmptyProfile"

    invoke-direct {v0, v1}, Landroid/app/Profile;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/app/ProfileManager;->mEmptyProfile:Landroid/app/Profile;

    .line 222
    return-void
.end method

.method public static getService()Landroid/app/IProfileManager;
    .locals 2

    .prologue
    .line 210
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    .line 215
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 213
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "profile"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 214
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IProfileManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProfileManager;

    move-result-object v1

    sput-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    .line 215
    sget-object v1, Landroid/app/ProfileManager;->sService:Landroid/app/IProfileManager;

    goto :goto_0
.end method


# virtual methods
.method public addNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 382
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->addNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addProfile(Landroid/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Landroid/app/Profile;

    .prologue
    .line 270
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->addProfile(Landroid/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfile()Landroid/app/Profile;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 250
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 254
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getActiveProfile()Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v1, 0x0

    goto :goto_0

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Landroid/app/ProfileManager;->mEmptyProfile:Landroid/app/Profile;

    goto :goto_0
.end method

.method public getActiveProfileGroup(Ljava/lang/String;)Landroid/app/ProfileGroup;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 428
    invoke-virtual {p0, p1}, Landroid/app/ProfileManager;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;

    move-result-object v1

    .line 429
    .local v1, "notificationGroup":Landroid/app/NotificationGroup;
    if-nez v1, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Profile;->getDefaultGroup()Landroid/app/ProfileGroup;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Profile;->getProfileGroup(Ljava/util/UUID;)Landroid/app/ProfileGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 419
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->getNotificationGroup(Landroid/os/ParcelUuid;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 423
    :goto_0
    return-object v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 409
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->getNotificationGroupForPackage(Ljava/lang/String;)Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 413
    :goto_0
    return-object v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNotificationGroups()[Landroid/app/NotificationGroup;
    .locals 3

    .prologue
    .line 372
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 376
    :goto_0
    return-object v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile(Ljava/lang/String;)Landroid/app/Profile;
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->getProfileByName(Ljava/lang/String;)Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    :goto_0
    return-object v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfile(Ljava/util/UUID;)Landroid/app/Profile;
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->getProfile(Landroid/os/ParcelUuid;)Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 310
    :goto_0
    return-object v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 315
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v3

    .line 316
    .local v3, "profiles":[Landroid/app/Profile;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 317
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 318
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "profiles":[Landroid/app/Profile;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    const/4 v2, 0x0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public getProfiles()[Landroid/app/Profile;
    .locals 3

    .prologue
    .line 329
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->getProfiles()[Landroid/app/Profile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 333
    :goto_0
    return-object v1

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notificationGroupExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "notificationGroupName"    # Ljava/lang/String;

    .prologue
    .line 360
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->notificationGroupExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 365
    :goto_0
    return v1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public profileExists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 338
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->profileExistsByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 343
    :goto_0
    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public profileExists(Ljava/util/UUID;)Z
    .locals 3
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    .line 349
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->profileExists(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 391
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->removeNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeProfile(Landroid/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Landroid/app/Profile;

    .prologue
    .line 279
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->removeProfile(Landroid/app/Profile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetAll()V
    .locals 3

    .prologue
    .line 439
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IProfileManager;->resetAll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 230
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->setActiveProfileByName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/util/UUID;)V
    .locals 4
    .param p1, "profileUuid"    # Ljava/util/UUID;

    .prologue
    const/4 v3, 0x1

    .line 238
    iget-object v1, p0, Landroid/app/ProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "system_profiles_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 242
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2}, Landroid/app/IProfileManager;->setActiveProfile(Landroid/os/ParcelUuid;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateNotificationGroup(Landroid/app/NotificationGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/app/NotificationGroup;

    .prologue
    .line 400
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->updateNotificationGroup(Landroid/app/NotificationGroup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateProfile(Landroid/app/Profile;)V
    .locals 3
    .param p1, "profile"    # Landroid/app/Profile;

    .prologue
    .line 288
    :try_start_0
    invoke-static {}, Landroid/app/ProfileManager;->getService()Landroid/app/IProfileManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IProfileManager;->updateProfile(Landroid/app/Profile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProfileManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
