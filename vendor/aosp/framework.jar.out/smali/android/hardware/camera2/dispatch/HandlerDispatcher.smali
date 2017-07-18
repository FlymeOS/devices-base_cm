.class public Landroid/hardware/camera2/dispatch/HandlerDispatcher;
.super Ljava/lang/Object;
.source "HandlerDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerDispatcher"


# instance fields
.field private final mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/dispatch/HandlerDispatcher;)Landroid/hardware/camera2/dispatch/Dispatchable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    return-object v0
.end method

.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Landroid/hardware/camera2/dispatch/HandlerDispatcher;, "Landroid/hardware/camera2/dispatch/HandlerDispatcher<TT;>;"
    .local p1, "dispatchTarget":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "dispatchTarget must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/dispatch/Dispatchable;

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 56
    const-string/jumbo v0, "handler must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Landroid/hardware/camera2/dispatch/HandlerDispatcher;, "Landroid/hardware/camera2/dispatch/HandlerDispatcher<TT;>;"
    iget-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;-><init>(Landroid/hardware/camera2/dispatch/HandlerDispatcher;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method
