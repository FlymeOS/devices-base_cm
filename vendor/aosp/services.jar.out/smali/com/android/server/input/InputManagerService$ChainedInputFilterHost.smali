.class final Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChainedInputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field private final mInputFilter:Landroid/view/IInputFilter;

.field private mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Landroid/view/IInputFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .locals 1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "filter"    # Landroid/view/IInputFilter;
    .param p3, "next"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    .line 1903
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    .line 1904
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .line 1905
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    .line 1902
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "filter"    # Landroid/view/IInputFilter;
    .param p3, "next"    # Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;-><init>(Lcom/android/server/input/InputManagerService;Landroid/view/IInputFilter;Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;)V

    return-void
.end method


# virtual methods
.method public connectLocked()V
    .locals 2

    .prologue
    .line 1910
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1, p0}, Landroid/view/IInputFilter;->install(Landroid/view/IInputFilterHost;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1908
    :goto_0
    return-void

    .line 1911
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disconnectLocked()V
    .locals 2

    .prologue
    .line 1918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-interface {v1}, Landroid/view/IInputFilter;->uninstall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    .line 1916
    return-void

    .line 1919
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 11
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1928
    if-nez p1, :cond_0

    .line 1929
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v10, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1933
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mDisconnected:Z

    if-nez v0, :cond_1

    .line 1934
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    if-nez v0, :cond_2

    .line 1935
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-get0(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    .line 1937
    const/high16 v2, 0x4000000

    or-int v8, p2, v2

    .line 1935
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1936
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 1935
    invoke-static/range {v0 .. v8}, Lcom/android/server/input/InputManagerService;->-wrap1(JLandroid/view/InputEvent;IIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v10

    .line 1927
    return-void

    .line 1944
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mNext:Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService$ChainedInputFilterHost;->mInputFilter:Landroid/view/IInputFilter;

    invoke-virtual {p1}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/view/IInputFilter;->filterInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1945
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1932
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method
