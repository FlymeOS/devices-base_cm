.class Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;
.super Landroid/service/gesture/IEdgeGestureActivationListener$Stub;
.source "EdgeGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Delegator"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;


# direct methods
.method private constructor <init>(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;->this$0:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    invoke-direct {p0}, Landroid/service/gesture/IEdgeGestureActivationListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;Landroid/service/gesture/EdgeGestureManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;
    .param p2, "x1"    # Landroid/service/gesture/EdgeGestureManager$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;-><init>(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)V

    return-void
.end method


# virtual methods
.method public onEdgeGestureActivation(IIII)V
    .locals 7
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I
    .param p3, "positionIndex"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;->this$0:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    # getter for: Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->access$000(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;-><init>(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method
