.class public Lcom/android/internal/telephony/TelephonyDevController;
.super Landroid/os/Handler;
.source "TelephonyDevController.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_HARDWARE_CONFIG_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TDC"

.field private static final mLock:Ljava/lang/Object;

.field private static mModems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static mSims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sRilHardwareConfig:Landroid/os/Message;

.field private static sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 100
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyDevController;->initFromResource()V

    .line 102
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 103
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 104
    return-void
.end method

.method public static create()Lcom/android/internal/telephony/TelephonyDevController;
    .locals 3

    .prologue
    .line 63
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "TelephonyDevController already created!?!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 67
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/TelephonyDevController;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyDevController;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    .line 68
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyDevController;
    .locals 3

    .prologue
    .line 73
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "TelephonyDevController not yet created!?!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 77
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static getModemCount()I
    .locals 4

    .prologue
    .line 194
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 196
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModemCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 197
    monitor-exit v2

    return v0

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .param p0, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 168
    iget-object v3, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 169
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 170
    .local v1, "hwcfg":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "hw":Lcom/android/internal/telephony/HardwareConfig;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    .line 174
    .restart local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    if-eqz v0, :cond_0

    .line 175
    iget v3, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v3, :cond_1

    .line 176
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    .line 170
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget v3, v0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 178
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 186
    .end local v0    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v1    # "hwcfg":Ljava/util/List;
    .end local v2    # "i":I
    :cond_2
    const-string v3, "handleGetHardwareConfigChanged - returned an error."

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 188
    :cond_3
    return-void
.end method

.method private initFromResource()V
    .locals 9

    .prologue
    .line 82
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    .line 83
    .local v6, "resource":Landroid/content/res/Resources;
    const v7, 0x1070043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "hwStrings":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 86
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 87
    .local v2, "hwString":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/HardwareConfig;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/HardwareConfig;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "hw":Lcom/android/internal/telephony/HardwareConfig;
    if-eqz v1, :cond_0

    .line 89
    iget v7, v1, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v7, :cond_1

    .line 90
    sget-object v7, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    :cond_1
    iget v7, v1, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 92
    sget-object v7, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-static {v1, v7}, Lcom/android/internal/telephony/TelephonyDevController;->updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 97
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "hw":Lcom/android/internal/telephony/HardwareConfig;
    .end local v2    # "hwString":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "TDC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "TDC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p0, "cmdsIf"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 112
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    invoke-interface {p0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getHardwareConfig(Landroid/os/Message;)V

    .line 114
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sRilHardwareConfig:Landroid/os/Message;

    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 116
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 117
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    .line 121
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForHardwareConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static unregisterRIL(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p0, "cmdsIf"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 125
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->sTelephonyDevController:Lcom/android/internal/telephony/TelephonyDevController;

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHardwareConfigChanged(Landroid/os/Handler;)V

    .line 126
    return-void
.end method

.method private static updateOrInsert(Lcom/android/internal/telephony/HardwareConfig;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "hw"    # Lcom/android/internal/telephony/HardwareConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/HardwareConfig;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 151
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 152
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 153
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    .line 154
    .local v1, "item":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v3, v1, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOrInsert: removing: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "item":Lcom/android/internal/telephony/HardwareConfig;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOrInsert: inserting: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    monitor-exit v4

    .line 162
    return-void

    .line 161
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public getAllModems()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 313
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v2, "modems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    const-string v3, "getAllModems: empty list."

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 322
    :cond_0
    monitor-exit v4

    return-object v2

    .line 317
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    .line 318
    .local v1, "modem":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    .end local v2    # "modems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAllSims()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 331
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v2, "sims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    const-string v3, "getAllSims: empty list."

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 340
    :cond_0
    monitor-exit v4

    return-object v2

    .line 335
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    .line 336
    .local v1, "sim":Lcom/android/internal/telephony/HardwareConfig;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    .end local v2    # "sims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAllSimsForModem(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "modemIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HardwareConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    sget-object v5, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 285
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const-string v4, "getAllSimsForModem: no registered sim device?!?"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 287
    monitor-exit v5

    .line 304
    :goto_0
    return-object v2

    .line 290
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v4

    if-le p1, v4, :cond_1

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllSimsForModem: out-of-bounds access for modem device "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " max: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 292
    monitor-exit v5

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 295
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllSimsForModem "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/HardwareConfig;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getModem(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v1

    .line 299
    .local v1, "modem":Lcom/android/internal/telephony/HardwareConfig;
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/HardwareConfig;

    .line 300
    .local v3, "sim":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v4, v3, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 304
    .end local v3    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getModem(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 205
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const-string v2, "getModem: no registered modem device?!?"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 208
    monitor-exit v1

    .line 217
    :goto_0
    return-object v0

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModem: out-of-bounds access for modem device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getModemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 213
    monitor-exit v1

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 216
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModem: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 217
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getModemForSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 7
    .param p1, "simIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 256
    sget-object v4, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 257
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    :cond_0
    const-string v5, "getModemForSim: no registered modem/sim device?!?"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 259
    monitor-exit v4

    move-object v1, v3

    .line 276
    :goto_0
    return-object v1

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v5

    if-le p1, v5, :cond_2

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModemForSim: out-of-bounds access for sim device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 264
    monitor-exit v4

    move-object v1, v3

    goto :goto_0

    .line 267
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getModemForSim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/TelephonyDevController;->getSim(I)Lcom/android/internal/telephony/HardwareConfig;

    move-result-object v2

    .line 270
    .local v2, "sim":Lcom/android/internal/telephony/HardwareConfig;
    sget-object v5, Lcom/android/internal/telephony/TelephonyDevController;->mModems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    .line 271
    .local v1, "modem":Lcom/android/internal/telephony/HardwareConfig;
    iget-object v5, v1, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    monitor-exit v4

    goto :goto_0

    .line 277
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "modem":Lcom/android/internal/telephony/HardwareConfig;
    .end local v2    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 276
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "sim":Lcom/android/internal/telephony/HardwareConfig;
    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_0
.end method

.method public getSim(I)Lcom/android/internal/telephony/HardwareConfig;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 236
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const-string v2, "getSim: no registered sim device?!?"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 239
    monitor-exit v1

    .line 248
    :goto_0
    return-object v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSim: out-of-bounds access for sim device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/TelephonyDevController;->getSimCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 244
    monitor-exit v1

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 247
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSim: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 248
    sget-object v0, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HardwareConfig;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSimCount()I
    .locals 4

    .prologue
    .line 225
    sget-object v2, Lcom/android/internal/telephony/TelephonyDevController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 226
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/TelephonyDevController;->mSims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 227
    .local v0, "count":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 228
    monitor-exit v2

    return v0

    .line 229
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->loge(Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 135
    :pswitch_0
    const-string v1, "handleMessage: received EVENT_HARDWARE_CONFIG_CHANGED"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyDevController;->logd(Ljava/lang/String;)V

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 137
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyDevController;->handleGetHardwareConfigChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
