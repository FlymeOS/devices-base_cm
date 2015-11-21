.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .locals 4
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .prologue
    .line 3724
    iput-object p1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3720
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3726
    iput-object p2, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 3728
    iput p3, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    .line 3729
    # getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$4000()[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 3730
    const/4 v0, 0x0

    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 3731
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 3734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    .line 3736
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 3737
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/media/AudioService$1;

    .prologue
    .line 3715
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3715
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3715
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioService$VolumeStreamState;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3715
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 3715
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3715
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method static synthetic access$6300(Landroid/media/AudioService$VolumeStreamState;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3715
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4094
    const-string v6, "   Mute count: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4095
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4096
    const-string v6, "   Max: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4097
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4098
    const-string v6, "   Current: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4099
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 4100
    .local v5, "set":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4101
    .local v3, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4103
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4104
    .local v0, "device":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4105
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_2

    const-string v1, "default"

    .line 4107
    .local v1, "deviceName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 4108
    const-string v6, " ("

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4109
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4110
    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4112
    :cond_1
    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v4, v6, 0xa

    .line 4114
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4115
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4116
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 4105
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_2
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4119
    .end local v0    # "device":I
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_3
    return-void
.end method

.method private getDeathHandler_syncVSS(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 4075
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4076
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4077
    iget-object v4, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 4078
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$5100(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_0

    move-object v1, v0

    .line 4090
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_1
    return-object v1

    .line 4076
    .end local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4084
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1
    if-eqz p2, :cond_2

    .line 4085
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_2
    move-object v1, v0

    .line 4090
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_1

    .line 4087
    .end local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_2
    const-string v4, "AudioService"

    const-string/jumbo v5, "stream was not muted by this client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    const/4 v0, 0x0

    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_2
.end method

.method private getValidIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3976
    if-gez p1, :cond_1

    .line 3977
    const/4 p1, 0x0

    .line 3982
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return p1

    .line 3978
    .restart local p1    # "index":I
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseMasterVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    if-le p1, v0, :cond_0

    .line 3979
    :cond_2
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    goto :goto_0
.end method

.method private isMuted_syncVSS()Z
    .locals 1

    .prologue
    .line 4069
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->muteCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private muteCount()I
    .locals 4

    .prologue
    .line 4059
    const/4 v0, 0x0

    .line 4060
    .local v0, "count":I
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4061
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 4062
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I

    move-result v3

    add-int/2addr v0, v3

    .line 4061
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4064
    :cond_0
    return v0
.end method


# virtual methods
.method public adjustIndex(II)Z
    .locals 1
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I

    .prologue
    .line 3846
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 3812
    const-class v6, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 3816
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3817
    const/4 v3, 0x0

    .line 3821
    .local v3, "index":I
    :goto_0
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v3, v7}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 3823
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3824
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3825
    .local v2, "i":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3826
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3827
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3828
    .local v0, "device":I
    if-eq v0, v8, :cond_0

    .line 3829
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3830
    const/4 v3, 0x0

    .line 3839
    :goto_2
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v5, v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_1

    .line 3842
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3819
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    :try_start_1
    invoke-virtual {p0, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa

    .restart local v3    # "index":I
    goto :goto_0

    .line 3831
    .restart local v0    # "device":I
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v4    # "set":Ljava/util/Set;
    :cond_2
    and-int/lit16 v5, v0, 0x380

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v5}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, v5, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_5

    .line 3835
    :cond_4
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa

    goto :goto_2

    .line 3837
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa

    goto :goto_2

    .line 3842
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_6
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3843
    return-void
.end method

.method public applyDeviceVolume_syncVSS(I)V
    .locals 2
    .param p1, "device"    # I

    .prologue
    .line 3800
    invoke-direct {p0}, Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3801
    const/4 v0, 0x0

    .line 3808
    .local v0, "index":I
    :goto_0
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 3809
    return-void

    .line 3802
    .end local v0    # "index":I
    :cond_0
    and-int/lit16 v1, p1, 0x380

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v1, v1, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    .line 3804
    :cond_2
    iget v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_0

    .line 3806
    .end local v0    # "index":I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_0
.end method

.method public checkFixedVolumeDevices()V
    .locals 8

    .prologue
    .line 3956
    const-class v6, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 3958
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v5}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)[I

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v5, v5, v7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 3959
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3960
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3961
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3962
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3963
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3964
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3965
    .local v3, "index":I
    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, v5, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v5, v0

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v5, v5, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    .line 3967
    :cond_0
    iget v5, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3969
    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    goto :goto_0

    .line 3972
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3973
    return-void
.end method

.method public getIndex(I)I
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 3888
    const-class v2, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 3889
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3890
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 3892
    iget-object v1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 3894
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    return v1

    .line 3895
    .end local v0    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxIndex()I
    .locals 1

    .prologue
    .line 3899
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 3740
    iget-object v0, p0, Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    .line 3741
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 3742
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3745
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 3952
    iget v0, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    return v0
.end method

.method public mute(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 3941
    const-class v2, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 3942
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getDeathHandler_syncVSS(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 3943
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_0

    .line 3944
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get client death handler for stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    monitor-exit v2

    .line 3949
    :goto_0
    return-void

    .line 3947
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute_syncVSS(Z)V

    .line 3948
    monitor-exit v2

    goto :goto_0

    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readSettings()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v6, -0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 3749
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 3752
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v8}, Landroid/media/AudioService;->access$4100(Landroid/media/AudioService;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseMasterVolume:Z
    invoke-static {v8}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3753
    :cond_0
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    monitor-exit v7

    .line 3795
    :goto_0
    return-void

    .line 3759
    :cond_1
    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v8, v12, :cond_2

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_4

    .line 3761
    :cond_2
    # getter for: Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$4300()[I

    move-result-object v6

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v6, v6, v8

    mul-int/lit8 v3, v6, 0xa

    .line 3762
    .local v3, "index":I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v6}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3763
    :try_start_1
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v6}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3764
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 3766
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3767
    :try_start_2
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3768
    monitor-exit v7

    goto :goto_0

    .line 3794
    .end local v3    # "index":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 3766
    .restart local v3    # "index":I
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6

    .line 3771
    .end local v3    # "index":I
    :cond_4
    const v5, 0x437fffff    # 255.99998f

    .line 3773
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v5, :cond_8

    .line 3774
    shl-int v1, v12, v2

    .line 3775
    .local v1, "device":I
    and-int v8, v1, v5

    if-nez v8, :cond_6

    .line 3773
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3778
    :cond_6
    xor-int/lit8 v8, v1, -0x1

    and-int/2addr v5, v8

    .line 3781
    invoke-virtual {p0, v1}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    .line 3784
    .local v4, "name":Ljava/lang/String;
    if-ne v1, v11, :cond_7

    # getter for: Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$4300()[I

    move-result-object v8

    iget v9, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    aget v0, v8, v9

    .line 3786
    .local v0, "defaultIndex":I
    :goto_3
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-static {v8, v4, v0, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 3788
    .restart local v3    # "index":I
    if-eq v3, v6, :cond_5

    .line 3792
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    mul-int/lit8 v10, v3, 0xa

    invoke-direct {p0, v10}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0    # "defaultIndex":I
    .end local v3    # "index":I
    :cond_7
    move v0, v6

    .line 3784
    goto :goto_3

    .line 3794
    .end local v1    # "device":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_8
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V
    .locals 9
    .param p1, "srcStream"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 3903
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 3904
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->getStreamType()I

    move-result v5

    .line 3907
    .local v5, "srcStreamType":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 3908
    .local v3, "index":I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v5, v8}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;III)I

    move-result v3

    .line 3909
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3910
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3911
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3912
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3913
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3926
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    .end local v5    # "srcStreamType":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3916
    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v3    # "index":I
    .restart local v4    # "set":Ljava/util/Set;
    .restart local v5    # "srcStreamType":I
    :cond_0
    :try_start_1
    iget-object v6, p1, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 3917
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3918
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3919
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3920
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3921
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3922
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v5, v8}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;III)I

    move-result v3

    .line 3924
    invoke-virtual {p0, v3, v0}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    goto :goto_1

    .line 3926
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3927
    return-void
.end method

.method public setAllIndexesToMax()V
    .locals 5

    .prologue
    .line 3930
    const-class v4, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 3931
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 3932
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3933
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3934
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3935
    .local v0, "entry":Ljava/util/Map$Entry;
    iget v3, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3937
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v2    # "set":Ljava/util/Set;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3938
    return-void
.end method

.method public setIndex(II)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "device"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3851
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 3852
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 3853
    .local v2, "oldIndex":I
    invoke-direct {p0, p1}, Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I

    move-result p1

    .line 3854
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v8}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3855
    :try_start_1
    iget v9, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v9}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3856
    iget p1, p0, Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I

    .line 3858
    :cond_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3859
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3860
    :try_start_3
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3861
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3862
    if-eq v2, p1, :cond_4

    .line 3866
    :try_start_4
    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v9, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v9}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v8

    if-ne p2, v8, :cond_2

    move v0, v5

    .line 3867
    .local v0, "currentDevice":Z
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 3868
    .local v1, "numStreamTypes":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "streamType":I
    :goto_1
    if-ltz v4, :cond_3

    .line 3869
    iget v6, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v4, v6, :cond_1

    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)[I

    move-result-object v6

    aget v6, v6, v4

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v6, v8, :cond_1

    .line 3871
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    iget v8, p0, Landroid/media/AudioService$VolumeStreamState;->mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, p1, v8, v4}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;III)I

    move-result v3

    .line 3872
    .local v3, "scaledIndex":I
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6, v3, p2}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 3874
    if-eqz v0, :cond_1

    .line 3875
    iget-object v6, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v4

    iget-object v8, p0, Landroid/media/AudioService$VolumeStreamState;->this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v4}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;I)I

    move-result v8

    invoke-virtual {v6, v3, v8}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3868
    .end local v3    # "scaledIndex":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 3858
    .end local v0    # "currentDevice":Z
    .end local v1    # "numStreamTypes":I
    .end local v4    # "streamType":I
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 3884
    .end local v2    # "oldIndex":I
    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 3861
    .restart local v2    # "oldIndex":I
    :catchall_2
    move-exception v5

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v5

    :cond_2
    move v0, v6

    .line 3866
    goto :goto_0

    .line 3880
    .restart local v0    # "currentDevice":Z
    .restart local v1    # "numStreamTypes":I
    .restart local v4    # "streamType":I
    :cond_3
    monitor-exit v7

    .line 3882
    .end local v0    # "currentDevice":Z
    .end local v1    # "numStreamTypes":I
    .end local v4    # "streamType":I
    :goto_2
    return v5

    :cond_4
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v5, v6

    goto :goto_2
.end method
