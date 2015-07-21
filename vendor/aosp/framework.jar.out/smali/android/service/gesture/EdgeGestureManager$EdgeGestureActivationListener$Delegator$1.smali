.class Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;
.super Ljava/lang/Object;
.source "EdgeGestureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;->onEdgeGestureActivation(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

.field final synthetic val$flags:I

.field final synthetic val$positionIndex:I

.field final synthetic val$touchX:I

.field final synthetic val$touchY:I


# direct methods
.method constructor <init>(Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;IIII)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->this$1:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

    iput p2, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->val$touchX:I

    iput p3, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->val$touchY:I

    iput p4, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->val$positionIndex:I

    iput p5, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 55
    iget-object v0, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->this$1:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;

    iget-object v0, v0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator;->this$0:Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;

    iget v1, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->val$touchX:I

    iget v2, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->val$touchY:I

    invoke-static {}, Lcom/android/internal/util/gesture/EdgeGesturePosition;->values()[Lcom/android/internal/util/gesture/EdgeGesturePosition;

    move-result-object v3

    iget v4, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->val$positionIndex:I

    aget-object v3, v3, v4

    iget v4, p0, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener$Delegator$1;->val$flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/service/gesture/EdgeGestureManager$EdgeGestureActivationListener;->onEdgeGestureActivation(IILcom/android/internal/util/gesture/EdgeGesturePosition;I)V

    .line 56
    return-void
.end method
