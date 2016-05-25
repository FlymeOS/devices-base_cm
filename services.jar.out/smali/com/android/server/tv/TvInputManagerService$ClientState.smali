.class final Lcom/android/server/tv/TvInputManagerService$ClientState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientState"
.end annotation


# instance fields
.field private clientToken:Landroid/os/IBinder;

.field private final sessionTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;I)V
    .locals 1
    .param p2, "clientToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    .line 1656
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    .line 1657
    iput p3, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    .line 1658
    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ClientState;

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ClientState;

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/tv/TvInputManagerService$ClientState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$ClientState;

    .prologue
    .line 1649
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 7

    .prologue
    .line 1666
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1667
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2, v4}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v1

    .line 1670
    .local v1, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 1671
    .local v0, "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    if-eqz v0, :cond_0

    .line 1672
    :goto_0
    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1673
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V
    invoke-static {v4, v2, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V

    goto :goto_0

    .line 1678
    .end local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1677
    .restart local v0    # "clientState":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .restart local v1    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;

    .line 1678
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1679
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
