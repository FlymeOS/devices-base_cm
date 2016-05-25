.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 410
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "lockscreen.password_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lock_screen_pass_to_security_view"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lock_pattern_size"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "lock_pattern_dotsvisible"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "lock_pattern_show_error_path"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 434
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 100
    new-instance v0, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 82
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 87
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 198
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 199
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 200
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_PROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 440
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 441
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 442
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 270
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 271
    .local v6, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 273
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-virtual {v6, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 274
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 278
    .local v5, "shouldReset":Z
    if-nez p2, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 279
    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 280
    const/4 v5, 0x0

    .line 284
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 285
    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v8, 0x3e8

    invoke-static {v7, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 286
    .local v3, "profileUid":I
    if-eqz v5, :cond_1

    .line 287
    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->resetUid(I)Z

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v1, p1, v3}, Landroid/security/KeyStore;->passwordUid(Ljava/lang/String;I)Z

    goto :goto_0

    .line 292
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profileUid":I
    :cond_2
    return-void
.end method

.method private migrateOldData()V
    .locals 26

    .prologue
    .line 134
    :try_start_0
    const-string v23, "migrated"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 136
    .local v9, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v14, v8

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_1

    aget-object v21, v8, v12

    .line 137
    .local v21, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 138
    .local v22, "value":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 139
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 143
    .end local v21    # "validSetting":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_1
    const-string v23, "migrated"

    const-string v24, "true"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    const-string v23, "LockSettingsService"

    const-string v24, "Migrated lock settings to new location"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    :cond_2
    const-string v23, "migrated_user_specific"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_7

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 150
    .local v17, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 151
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v20

    .line 152
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v18, 0x0

    .local v18, "user":I
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 154
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    .line 155
    .local v19, "userId":I
    const-string v6, "lock_screen_owner_info"

    .line 156
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string v23, "lock_screen_owner_info"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 157
    .local v15, "ownerInfo":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 158
    const-string v23, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    const-string v23, ""

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v15, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 165
    :cond_3
    const-string v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string v23, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 169
    .local v13, "ivalue":I
    if-eqz v13, :cond_5

    const/4 v11, 0x1

    .line 170
    .local v11, "enabled":Z
    :goto_2
    const-string v23, "lock_screen_owner_info_enabled"

    if-eqz v11, :cond_6

    const-wide/16 v24, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    .end local v11    # "enabled":Z
    .end local v13    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string v23, "lock_screen_owner_info_enabled"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 152
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 169
    .restart local v13    # "ivalue":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 170
    .restart local v11    # "enabled":Z
    :cond_6
    const-wide/16 v24, 0x0

    goto :goto_3

    .line 171
    .end local v11    # "enabled":Z
    .end local v13    # "ivalue":I
    :catch_0
    move-exception v10

    .line 173
    .local v10, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 174
    const-string v23, "lock_screen_owner_info_enabled"

    const-wide/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 183
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v15    # "ownerInfo":Ljava/lang/String;
    .end local v17    # "um":Landroid/os/UserManager;
    .end local v18    # "user":I
    .end local v19    # "userId":I
    .end local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v16

    .line 184
    .local v16, "re":Landroid/os/RemoteException;
    const-string v23, "LockSettingsService"

    const-string v24, "Unable to migrate old data"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v16    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .line 180
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v17    # "um":Landroid/os/UserManager;
    .restart local v18    # "user":I
    .restart local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string v23, "migrated_user_specific"

    const-string v24, "true"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    const-string v23, "LockSettingsService"

    const-string v24, "Migrated per-user lock settings to new location"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 340
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 341
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)[B

    move-result-object v2

    .line 343
    .local v2, "storedHash":[B
    if-nez v2, :cond_1

    .line 344
    const/4 v1, 0x1

    .line 351
    :cond_0
    :goto_0
    return v1

    .line 347
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 348
    .local v1, "matched":Z
    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 322
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 323
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)[B

    move-result-object v2

    .line 325
    .local v2, "storedHash":[B
    if-nez v2, :cond_1

    .line 326
    const/4 v1, 0x1

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 330
    .local v1, "matched":Z
    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public checkVoldPassword(I)Z
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 356
    iget-boolean v4, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v4, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v2

    .line 359
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 361
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 371
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 372
    .local v1, "service":Landroid/os/storage/IMountService;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "password":Ljava/lang/String;
    invoke-interface {v1}, Landroid/os/storage/IMountService;->clearPassword()V

    .line 374
    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 381
    goto :goto_0

    .line 384
    :catch_0
    move-exception v4

    .line 388
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 390
    goto :goto_0

    .line 393
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 235
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getLockPatternSize(I)B
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternSize(I)B

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 244
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p4}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 252
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    return v0
.end method

.method public removeUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 403
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    .line 405
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 406
    .local v0, "ks":Landroid/security/KeyStore;
    const/16 v2, 0x3e8

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 407
    .local v1, "userUid":I
    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->resetUid(I)Z

    .line 408
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 212
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    return-void

    .line 212
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 309
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 311
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 312
    return-void
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 300
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 302
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 303
    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 218
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 224
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 127
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    .line 128
    return-void
.end method
