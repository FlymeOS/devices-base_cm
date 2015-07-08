.class Lcom/android/internal/widget/MzActionBarView$3;
.super Ljava/lang/Object;
.source "MzActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MzActionBarView;->onConfigurationChangedInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarView;)V
    .locals 0

    .prologue
    .line 2220
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView$3;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$3;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzActionBarView;->requestLayout()V

    .line 2223
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$3;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$3;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2226
    :cond_0
    return-void
.end method
