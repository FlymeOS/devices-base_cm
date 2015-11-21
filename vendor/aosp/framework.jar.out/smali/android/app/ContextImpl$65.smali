.class final Landroid/app/ContextImpl$65;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 788
    const-string/jumbo v3, "torch"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 789
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/ITorchService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ITorchService;

    move-result-object v2

    .line 790
    .local v2, "service":Landroid/hardware/ITorchService;
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    .line 791
    .local v1, "outerContext":Landroid/content/Context;
    new-instance v3, Landroid/hardware/TorchManager;

    invoke-direct {v3, v1, v2}, Landroid/hardware/TorchManager;-><init>(Landroid/content/Context;Landroid/hardware/ITorchService;)V

    return-object v3
.end method
