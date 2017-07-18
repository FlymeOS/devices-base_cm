.class Lcom/android/server/display/OverlayDisplayWindow$5;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "OverlayDisplayWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/OverlayDisplayWindow;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-static {v0}, Lcom/android/server/display/OverlayDisplayWindow;->-get4(Lcom/android/server/display/OverlayDisplayWindow;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/display/OverlayDisplayWindow;->-set0(Lcom/android/server/display/OverlayDisplayWindow;F)F

    .line 379
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayWindow$5;->this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->relayout()V

    .line 380
    const/4 v0, 0x1

    return v0
.end method
