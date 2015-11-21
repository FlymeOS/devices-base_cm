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

.field private final mClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 64
    const-string v0, "FingerprintService"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    .line 74
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 87
    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 90
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeupMode:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDisableVibration:Z

    .line 134
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 135
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    .line 137
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    .line 140
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeInit(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 63
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
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService;->setWakeupMode(Landroid/os/IBinder;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method private declared-synchronized changeState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 391
    :goto_0
    monitor-exit p0

    return-void

    .line 370
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 371
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
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
    .line 492
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

    .line 497
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    return-void
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 504
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 506
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
    .line 429
    .local p1, "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .local p2, "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v3, "mergedList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 432
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

    .line 433
    .local v0, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 436
    .end local v0    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    :cond_0
    const/4 v4, 0x0

    .line 437
    .local v4, "modifiedSettingsFingers":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 438
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/fingerprint/Fingerprint;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 439
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    .line 440
    .local v7, "settingsFinger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/Fingerprint;

    .line 441
    .local v5, "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    if-nez v5, :cond_1

    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 444
    const/4 v4, 0x1

    goto :goto_1

    .line 447
    :cond_1
    invoke-static {v5, v7}, Lcom/android/server/fingerprint/FingerprintService;->mergeFingerprint(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 454
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

    .line 455
    .restart local v5    # "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v5}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/fingerprint/FingerprintService;->nativeRemove(I)I

    goto :goto_2

    .line 459
    .end local v5    # "nativeFinger":Landroid/hardware/fingerprint/Fingerprint;
    :cond_3
    if-eqz v4, :cond_4

    .line 460
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {p2, v8, p3}, Landroid/service/fingerprint/FingerprintUtils;->saveFingerprints(Ljava/util/List;Landroid/content/ContentResolver;I)V

    .line 464
    :cond_4
    return-object v3
.end method

.method private static mergeFingerprint(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 2
    .param p0, "nativeFinger"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p1, "settingsFinger"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 469
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/Fingerprint$Builder;-><init>(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 470
    .local v0, "builder":Landroid/hardware/fingerprint/Fingerprint$Builder;
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/Fingerprint$Builder;->name(Ljava/lang/String;)Landroid/hardware/fingerprint/Fingerprint$Builder;

    .line 471
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
    .line 526
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

    .line 529
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, p1, p3}, Lcom/android/server/fingerprint/FingerprintService;->setWakeupModeInternal(Landroid/os/IBinder;Z)V

    .line 531
    return-void
.end method

.method private setWakeupModeInternal(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "wakeupMode"    # Z

    .prologue
    .line 517
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeupMode:Z

    if-eq p2, v1, :cond_0

    .line 518
    iput-boolean p2, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeupMode:Z

    .line 519
    if-eqz p2, :cond_1

    .end local p1    # "token":Landroid/os/IBinder;
    :goto_0
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;

    .line 520
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

    .line 521
    .local v0, "params":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->nativeSetParameters(Ljava/lang/String;)I

    .line 523
    .end local v0    # "params":Ljava/lang/String;
    :cond_0
    return-void

    .line 519
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 520
    .end local p1    # "token":Landroid/os/IBinder;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private throwIfNoFingerprint()V
    .locals 4

    .prologue
    .line 511
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Fingerprint sensor not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    return-void
.end method

.method private vibrateDeviceIfSupported()V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDisableVibration:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeupMode:Z

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 272
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
    .line 335
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 336
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/fingerprint/FingerprintService$ClientData;-><init>(Lcom/android/server/fingerprint/FingerprintService$1;)V

    .line 337
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    iput-object p2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    .line 338
    iput p3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    .line 339
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    invoke-direct {v2, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    .line 341
    :try_start_0
    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 342
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :cond_0
    :goto_0
    return-void

    .line 343
    .restart local v0    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "caught remote exception in linkToDeath: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method checkPermission()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINGERPRINT_SERVICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public getEnrolledFingerprints(Landroid/os/IBinder;I)Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    .line 399
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

    .line 402
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    if-eq p2, v4, :cond_0

    .line 403
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Getting a userId for a different user than current is not supported"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 407
    :cond_0
    if-eqz p2, :cond_1

    .line 408
    const-string v4, "FingerprintService"

    const-string v5, "fingerprints disabled for secondary users."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 421
    :goto_0
    return-object v0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeGetEnrollments()[Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    .line 413
    .local v2, "nativeFingerprintsArray":[Landroid/hardware/fingerprint/Fingerprint;
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 415
    .local v1, "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :goto_1
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/service/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/ContentResolver;I)Ljava/util/List;

    move-result-object v3

    .line 418
    .local v3, "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-direct {p0, v1, v3, v6}, Lcom/android/server/fingerprint/FingerprintService;->mergeAndUpdateSettingsFingerprints(Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 421
    .local v0, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    goto :goto_0

    .line 413
    .end local v0    # "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v1    # "nativeFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v3    # "settingsFingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_2
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1
.end method

.method public getNumEnrollmentSteps()I
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeGetNumEnrollmentSteps()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 364
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
    .locals 15
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 162
    const-string v12, "FingerprintService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleNotify(msg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", arg1="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", arg2="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    .line 164
    .local v10, "newState":I
    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 165
    .local v5, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    iget-object v13, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    monitor-enter v13

    .line 166
    :try_start_0
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 167
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 168
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 169
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 170
    .local v2, "client":Landroid/os/IBinder;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .local v3, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 173
    :pswitch_1
    move/from16 v7, p2

    .line 175
    .local v7, "error":I
    const/4 v10, 0x0

    .line 176
    if-eqz v3, :cond_0

    :try_start_1
    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v12, :cond_0

    .line 177
    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v12, v7}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v4

    .line 180
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v12, "FingerprintService"

    const-string v14, "can\'t send message to client. Did it die?"

    invoke-static {v12, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 264
    .end local v2    # "client":Landroid/os/IBinder;
    .end local v3    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;"
    .end local v7    # "error":I
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 186
    .restart local v2    # "client":Landroid/os/IBinder;
    .restart local v3    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;"
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;>;"
    :pswitch_2
    move/from16 v1, p2

    .line 187
    .local v1, "acquireInfo":I
    :try_start_3
    iget v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    const/4 v14, 0x1

    if-eq v12, v14, :cond_1

    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v2, v12, :cond_0

    .line 189
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->vibrateDeviceIfSupported()V

    .line 190
    if-eqz v3, :cond_0

    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v12, :cond_0

    .line 191
    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v12, v1}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onAcquired(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 193
    :catch_1
    move-exception v4

    .line 194
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v12, "FingerprintService"

    const-string v14, "can\'t send message to client. Did it die?"

    invoke-static {v12, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 204
    .end local v1    # "acquireInfo":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :pswitch_3
    move/from16 v8, p2

    .line 205
    .local v8, "fingerId":I
    iget v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    const/4 v14, 0x1

    if-eq v12, v14, :cond_2

    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mWakeClient:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v2, v12, :cond_0

    .line 207
    :cond_2
    const/4 v10, 0x0

    .line 208
    if-eqz v3, :cond_0

    :try_start_6
    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v12, :cond_0

    .line 209
    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v12, v8}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onProcessed(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 211
    :catch_2
    move-exception v4

    .line 212
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v12, "FingerprintService"

    const-string v14, "can\'t send message to client. Did it die?"

    invoke-static {v12, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 222
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "fingerId":I
    :pswitch_4
    move/from16 v8, p2

    .line 223
    .restart local v8    # "fingerId":I
    move/from16 v11, p3

    .line 224
    .local v11, "remaining":I
    iget v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    const/4 v14, 0x2

    if-ne v12, v14, :cond_0

    .line 226
    if-nez v11, :cond_3

    .line 227
    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v14, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v8, v12, v14}, Landroid/service/fingerprint/FingerprintUtils;->addFingerprintIdForUser(ILandroid/content/Context;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 229
    const/4 v10, 0x0

    .line 232
    :cond_3
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->vibrateDeviceIfSupported()V

    .line 233
    if-eqz v3, :cond_0

    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v12, :cond_0

    .line 234
    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v12, v8, v11}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 236
    :catch_3
    move-exception v4

    .line 237
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v12, "FingerprintService"

    const-string v14, "can\'t send message to client. Did it die?"

    invoke-static {v12, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 247
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v8    # "fingerId":I
    .end local v11    # "remaining":I
    :pswitch_5
    move/from16 v8, p2

    .line 248
    .restart local v8    # "fingerId":I
    if-nez v8, :cond_4

    .line 249
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v14, "Got illegal id from HAL"

    invoke-direct {v12, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 250
    :cond_4
    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget v14, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    invoke-static {v8, v12, v14}, Landroid/service/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(ILandroid/content/ContentResolver;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 253
    if-eqz v3, :cond_0

    :try_start_a
    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    if-eqz v12, :cond_0

    .line 254
    iget-object v12, v3, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v12, v8}, Landroid/service/fingerprint/IFingerprintServiceReceiver;->onRemoved(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 256
    :catch_4
    move-exception v4

    .line 257
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_b
    const-string v12, "FingerprintService"

    const-string v14, "can\'t send message to client. Did it die?"

    invoke-static {v12, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 264
    .end local v2    # "client":Landroid/os/IBinder;
    .end local v3    # "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/fingerprint/FingerprintService$ClientData;>;"
    .end local v8    # "fingerId":I
    :cond_5
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 265
    invoke-direct {p0, v10}, Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V

    .line 266
    return-void

    .line 171
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
    .line 158
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 159
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 711
    const-string v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 712
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeOpenHal()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    .line 713
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cyanogenmod.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 715
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FEATURE_FINGERPRINT present, but no Fingerprint HAL loaded!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHal:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fingerprint HAL present, but FEATURE_FINGERPRINT is not set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_1
    return-void
.end method

.method removeListener(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 354
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_0

    .line 355
    iget-object v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 356
    iput-object v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->receiver:Landroid/service/fingerprint/IFingerprintServiceReceiver;

    .line 357
    iput-object v3, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->tokenWatcher:Lcom/android/server/fingerprint/FingerprintService$TokenWatcher;

    .line 361
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
    .line 475
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

    .line 478
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p4, v0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a fingerprint name for a different user than current is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, p3, v0, p4}, Landroid/service/fingerprint/FingerprintUtils;->setFingerprintName(ILjava/lang/String;Landroid/content/ContentResolver;I)V

    .line 484
    const/4 v0, 0x1

    return v0
.end method

.method startAuthentication(Landroid/os/IBinder;IZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "disableVibration"    # Z

    .prologue
    .line 290
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 291
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 292
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-eqz v1, :cond_1

    .line 294
    const-string v1, "FingerprintService"

    const-string v2, "fingerprint is in use"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return-void

    .line 297
    :cond_1
    iput-boolean p3, p0, Lcom/android/server/fingerprint/FingerprintService;->mDisableVibration:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeAuthenticate()I

    .line 299
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V

    goto :goto_0

    .line 301
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

    .line 306
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 307
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 308
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDisableVibration:Z

    .line 310
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-nez v1, :cond_1

    .line 316
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->nativeCancel()I

    goto :goto_0

    .line 314
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
    .line 275
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 276
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 277
    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v1, p4, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad user"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_0
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mState:I

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "FingerprintService"

    const-string v2, "fingerprint is in use"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_1
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->nativeEnroll(I)I

    .line 283
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->changeState(I)V

    goto :goto_0

    .line 285
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
    .line 320
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;

    .line 321
    .local v0, "clientData":Lcom/android/server/fingerprint/FingerprintService$ClientData;
    if-eqz v0, :cond_2

    .line 322
    iget v2, v0, Lcom/android/server/fingerprint/FingerprintService$ClientData;->userId:I

    if-eq v2, p3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Bad user"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/fingerprint/FingerprintService;->nativeRemove(I)I

    move-result v1

    .line 325
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 326
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

    .line 331
    .end local v1    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 329
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
