.class Lcom/android/internal/widget/MzActionBarContainer$3;
.super Ljava/lang/Object;
.source "MzActionBarContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$3;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarContainer$3;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    iget-object v1, p0, Lcom/android/internal/widget/MzActionBarContainer$3;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    # getter for: Lcom/android/internal/widget/MzActionBarContainer;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/widget/MzActionBarContainer;->access$500(Lcom/android/internal/widget/MzActionBarContainer;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzActionBarContainer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 126
    return-void
.end method
