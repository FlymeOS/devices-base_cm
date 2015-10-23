.class Lcom/android/internal/app/ActionBarImpl$5;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Lcom/android/internal/widget/MzActionBarView$OnActionBarSplitChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ActionBarImpl;->initExt(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplitChanged(Z)V
    .locals 2
    .param p1, "split"    # Z

    .prologue
    .line 1878
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/app/ActionBarImpl;->access$1600(Lcom/android/internal/app/ActionBarImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1879
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    iget-object v0, v0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl$5;->this$0:Lcom/android/internal/app/ActionBarImpl;

    # getter for: Lcom/android/internal/app/ActionBarImpl;->mDelayUpdateTabs:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/app/ActionBarImpl;->access$1600(Lcom/android/internal/app/ActionBarImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1880
    return-void
.end method
