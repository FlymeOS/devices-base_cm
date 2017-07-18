.class Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;
.super Ljava/lang/Object;
.source "BrokerableCMSystemService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;)V
    .locals 0

    .prologue
    .line 208
    .local p1, "this$0":Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;, "Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService<TT;>;"
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 211
    invoke-static {}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Implementation service connected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-virtual {v2, p2}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->getIBinderAsIInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-set0(Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 214
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->notifyAll()V

    .line 215
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-get1(Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;)Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Notifying service connected"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-get1(Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;)Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;->onBrokeredServiceConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 210
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 224
    invoke-static {}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Implementation service unexpectedly disconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-set0(Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 227
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-virtual {v0}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->notifyAll()V

    .line 228
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-get1(Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;)Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService$2;->this$0:Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;->-get1(Lorg/cyanogenmod/platform/internal/BrokerableCMSystemService;)Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/common/BrokeredServiceConnection;->onBrokeredServiceDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 223
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
