.class Lcom/android/server/wm/MzDragState$DragAnimator$1;
.super Ljava/lang/Object;
.source "MzDragState.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MzDragState$DragAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/MzDragState$DragAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MzDragState$DragAnimator;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/server/wm/MzDragState$DragAnimator$1;->this$1:Lcom/android/server/wm/MzDragState$DragAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 417
    sub-float/2addr p1, v1

    .line 418
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method
