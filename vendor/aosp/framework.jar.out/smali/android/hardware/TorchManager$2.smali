.class Landroid/hardware/TorchManager$2;
.super Ljava/lang/Object;
.source "TorchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/TorchManager;->toggleTorch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/TorchManager;


# direct methods
.method constructor <init>(Landroid/hardware/TorchManager;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Landroid/hardware/TorchManager$2;->this$0:Landroid/hardware/TorchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/hardware/TorchManager$2;->this$0:Landroid/hardware/TorchManager;

    # getter for: Landroid/hardware/TorchManager;->mService:Landroid/hardware/ITorchService;
    invoke-static {v1}, Landroid/hardware/TorchManager;->access$200(Landroid/hardware/TorchManager;)Landroid/hardware/ITorchService;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/ITorchService;->toggleTorch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
