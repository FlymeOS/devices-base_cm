.class Lcom/android/server/TorchService$3;
.super Ljava/lang/Object;
.source "TorchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TorchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TorchService;


# direct methods
.method constructor <init>(Lcom/android/server/TorchService;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/server/TorchService$3;->this$0:Lcom/android/server/TorchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/TorchService$3;->this$0:Lcom/android/server/TorchService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/TorchService;->updateFlashlight(Z)V
    invoke-static {v0, v1}, Lcom/android/server/TorchService;->access$700(Lcom/android/server/TorchService;Z)V

    .line 456
    return-void
.end method
