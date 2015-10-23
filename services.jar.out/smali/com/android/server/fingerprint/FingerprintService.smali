.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;,
        Lcom/android/server/fingerprint/FingerprintService$ClientData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_NOTIFY:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final PARAM_WAKEUP:Ljava/lang/String; = "wakeup"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClients:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/fingerprint/FingerprintService$ClientData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisableVibration:Z

.field private mHal:J

.field mHandler:Landroid/os/Handler;

.field private mState:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWakeClient:Landroid/os/IBinder;

.field private mWakeupMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v0, "FingerprintService"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->TAG:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    .line 72
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 85
    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 88
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeupMode:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDisableVibration:Z

    .line 132
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 133
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    .line 135
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    .line 138
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->throwIfNoFingerprint()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->setWakeupMode(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method private declared-synchronized changeState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 382
    :goto_0
    monitor-exit p0

    return-void

    .line 364
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 365
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 478
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    return-void
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 492
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private mergeAndUpdateSettingsFingerprints(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;
    .locals 9
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .local p2, "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v3, "mergedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v6, "nativeFingerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 419
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 422
    .end local v0    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    const/4 v4, 0x0

    .line 423
    .local v4, "modifiedSettingsFingers":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 424
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/fingerprint/Fingerprint;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    .line 426
    .local v7, "settingsFinger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 427
    .local v5, "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    if-nez v5, :cond_1

    .line 429
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 430
    const/4 v4, 0x1

    goto :goto_1

    .line 433
    :cond_1
    invoke-static {v5, v7}, Lcom/android/server/fingerprint/FingerprintService;->mergeFingerprint(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 440
    .end local v5    # "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v7    # "settingsFinger":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 441
    .restart local v5    # "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/fingerprint/FingerprintService;->nativeRemove(I)I

    goto :goto_2

    .line 445
    .end local v5    # "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    :cond_3
    if-eqz v4, :cond_4

    .line 446
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {p2, v8, p3}, Landroid/service/fingerprint/FingerprintUtils;->saveFingerprints(Ljava/util/List;Landroid/content/ContentResolver;I)V

    .line 450
    :cond_4
    return-object v3
.end method

.method private static mergeFingerprint(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 2
    .param p0, "nativeFinger"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "settingsFinger"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 455
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/Fingerprint$Builder;-><init>(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 456
    .local v0, "builder":Landroid/hardware/fingerprint/Fingerprint$Builder;
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/Fingerprint$Builder;->name(Ljava/lang/String;)Landroid/hardware/fingerprint/Fingerprint$Builder;

    .line 457
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint$Builder;->build()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    return-object v1
.end method

.method private setWakeupMode(Landroid/os/IBinder;IZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "wakeupMode"    # Z

    .prologue
    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trying to add account for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/fingerprint/FingerprintService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintService;->setWakeupModeInternal(Landroid/os/IBinder;Z)V

    .line 517
    return-void
.end method

.method private setWakeupModeInternal(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "wakeupMode"    # Z

    .prologue
    .line 503
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeupMode:Z

    if-eq p2, v1, :cond_0

    .line 504
    iput-boolean p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeupMode:Z

    .line 505
    if-eqz p2, :cond_1

    .end local p1    # "token":Landroid/os/IBinder;
    :goto_0
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wakeup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "params":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->nativeSetParameters(Ljava/lang/String;)I

    .line 509
    .end local v0    # "params":Ljava/lang/String;
    :cond_0
    return-void

    .line 505
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 506
    .end local p1    # "token":Landroid/os/IBinder;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private throwIfNoFingerprint()V
    .locals 4

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint sensor not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    return-void
.end method

.method private vibrateDeviceIfSupported()V
    .locals 4

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDisableVibration:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeupMode:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method addListener(Landroid/os/IBinder;Landroid/service/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "receiver"    # Landroid/service/fingerprint/IFingerprintServiceReceiver;
    .param p3, "userId"    # I

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 330
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientData;-><init>(Lcom/android/server/fingerprint/FingerprintService$1;)V

    .line 331
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    iput-object p2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    .line 332
    iput p3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    .line 333
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    invoke-direct {v2, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    .line 335
    :try_start_0
    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 336
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .end local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "caught remote exception in linkToDeath: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method checkPermission()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINGERPRINT_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public getEnrolledFingerprints(Landroid/os/IBinder;I)Ljava/util/List;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trying to add account for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, v4}, Lcom/android/server/fingerprint/FingerprintService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 393
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    if-eq p2, v4, :cond_0

    .line 394
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Getting a userId for a different user than current is not supported"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeGetEnrollments()[Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    .line 399
    .local v2, "nativeFingerprintsArray":[Landroid/hardware/fingerprint/Fingerprint;
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 401
    .local v1, "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v3

    .line 404
    .local v3, "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/fingerprint/FingerprintService;->mergeAndUpdateSettingsFingerprints(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    return-object v0

    .line 399
    .end local v0    # "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v1    # "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v3    # "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public getNumEnrollmentSteps()I
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeGetNumEnrollmentSteps()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleNotify(III)V
    .locals 14
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 160
    const-string v11, "FingerprintService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleNotify(msg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", arg1="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", arg2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 162
    .local v9, "newState":I
    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 163
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 164
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 165
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 166
    .local v2, "client":Landroid/os/IBinder;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 167
    .local v3, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 169
    :pswitch_1
    move/from16 v6, p2

    .line 171
    .local v6, "error":I
    const/4 v9, 0x0

    .line 172
    if-eqz v3, :cond_0

    :try_start_0
    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v11, :cond_0

    .line 173
    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v11, v6}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v4

    .line 176
    .local v4, "e":Landroid/os/RemoteException;
    const-string v11, "FingerprintService"

    const-string v12, "can\'t send message to client. Did it die?"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 182
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "error":I
    :pswitch_2
    move/from16 v1, p2

    .line 183
    .local v1, "acquireInfo":I
    iget v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;

    if-ne v2, v11, :cond_0

    .line 185
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->vibrateDeviceIfSupported()V

    .line 186
    if-eqz v3, :cond_0

    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v11, :cond_0

    .line 187
    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v11, v1}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onAcquired(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 189
    :catch_1
    move-exception v4

    .line 190
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v11, "FingerprintService"

    const-string v12, "can\'t send message to client. Did it die?"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 200
    .end local v1    # "acquireInfo":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move/from16 v7, p2

    .line 201
    .local v7, "fingerId":I
    iget v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;

    if-ne v2, v11, :cond_0

    .line 203
    :cond_2
    const/4 v9, 0x0

    .line 204
    if-eqz v3, :cond_0

    :try_start_2
    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v11, :cond_0

    .line 205
    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v11, v7}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onProcessed(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 207
    :catch_2
    move-exception v4

    .line 208
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v11, "FingerprintService"

    const-string v12, "can\'t send message to client. Did it die?"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 218
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "fingerId":I
    :pswitch_4
    move/from16 v7, p2

    .line 219
    .restart local v7    # "fingerId":I
    move/from16 v10, p3

    .line 220
    .local v10, "remaining":I
    iget v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 222
    if-nez v10, :cond_3

    .line 223
    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v7, v11, v12}, Landroid/service/fingerprint/FingerprintUtils;->addFingerprintIdForUser(ILandroid/content/Context;I)V

    .line 225
    const/4 v9, 0x0

    .line 228
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->vibrateDeviceIfSupported()V

    .line 229
    if-eqz v3, :cond_0

    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v11, :cond_0

    .line 230
    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v11, v7, v10}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 232
    :catch_3
    move-exception v4

    .line 233
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v11, "FingerprintService"

    const-string v12, "can\'t send message to client. Did it die?"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 243
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "fingerId":I
    .end local v10    # "remaining":I
    :pswitch_5
    move/from16 v7, p2

    .line 244
    .restart local v7    # "fingerId":I
    if-nez v7, :cond_4

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Got illegal id from HAL"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 245
    :cond_4
    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v7, v11, v12}, Landroid/service/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(ILandroid/content/ContentResolver;I)Z

    .line 248
    if-eqz v3, :cond_0

    :try_start_4
    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v11, :cond_0

    .line 249
    iget-object v11, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v11, v7}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onRemoved(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 251
    :catch_4
    move-exception v4

    .line 252
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v11, "FingerprintService"

    const-string v12, "can\'t send message to client. Did it die?"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 259
    .end local v2    # "client":Landroid/os/IBinder;
    .end local v3    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;"
    .end local v7    # "fingerId":I
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V

    .line 260
    return-void

    .line 167
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method native nativeAuthenticate()I
.end method

.method native nativeCancel()I
.end method

.method native nativeCloseHal()I
.end method

.method native nativeEnroll(I)I
.end method

.method native nativeGetEnrollments()[Landroid/hardware/fingerprint/Fingerprint;
.end method

.method native nativeGetNumEnrollmentSteps()I
.end method

.method native nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V
.end method

.method native nativeOpenHal()I
.end method

.method native nativeRemove(I)I
.end method

.method native nativeSetParameters(Ljava/lang/String;)I
.end method

.method notify(III)V
    .locals 3
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 697
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 698
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeOpenHal()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    .line 699
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cyanogenmod.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 701
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FEATURE_FINGERPRINT present, but no Fingerprint HAL loaded!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 705
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fingerprint HAL present, but FEATURE_FINGERPRINT is not set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_1
    return-void
.end method

.method removeListener(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 347
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 348
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_0

    .line 349
    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 350
    iput-object v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    .line 351
    iput-object v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    .line 355
    :cond_0
    return-void
.end method

.method public setFingerprintName(Landroid/os/IBinder;ILjava/lang/String;I)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " trying to add account for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/fingerprint/FingerprintService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 464
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a fingerprint name for a different user than current is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, p3, v0, p4}, Landroid/service/fingerprint/FingerprintUtils;->setFingerprintName(ILjava/lang/String;Landroid/content/ContentResolver;I)V

    .line 470
    const/4 v0, 0x1

    return v0
.end method

.method startAuthentication(Landroid/os/IBinder;IZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "disableVibration"    # Z

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 285
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 286
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-eqz v1, :cond_1

    .line 288
    const-string v1, "FingerprintService"

    const-string v2, "fingerprint is in use"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 291
    :cond_1
    iput-boolean p3, p0, Lcom/android/server/fingerprint/FingerprintService;->mDisableVibration:Z

    .line 292
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeAuthenticate()I

    .line 293
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V

    goto :goto_0

    .line 295
    :cond_2
    const-string v1, "FingerprintService"

    const-string v2, "authenticate(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startCancel(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 301
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 302
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDisableVibration:Z

    .line 304
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-nez v1, :cond_1

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V

    .line 306
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeCancel()I

    goto :goto_0

    .line 308
    :cond_2
    const-string v1, "FingerprintService"

    const-string v2, "enrollCancel(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startEnroll(Landroid/os/IBinder;JI)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # J
    .param p4, "userId"    # I

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 270
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 271
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p4, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-eqz v1, :cond_1

    .line 273
    const-string v1, "FingerprintService"

    const-string v2, "fingerprint is in use"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    return-void

    .line 276
    :cond_1
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->nativeEnroll(I)I

    .line 277
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V

    goto :goto_0

    .line 279
    :cond_2
    const-string v1, "FingerprintService"

    const-string v2, "enroll(): No listener registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;II)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 315
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 316
    iget v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v2, p3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad user"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->nativeRemove(I)I

    move-result v1

    .line 319
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 320
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error removing fingerprint with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v1    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): No listener registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
