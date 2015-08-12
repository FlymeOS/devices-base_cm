.class Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "MzActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Landroid/widget/MzActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p2, "popup"    # Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    .prologue
    .line 946
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 947
    iput-object p2, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    .line 948
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 951
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Landroid/widget/MzActionMenuPresenter;->access$1000(Landroid/widget/MzActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 952
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;
    invoke-static {v1}, Landroid/widget/MzActionMenuPresenter;->access$1100(Landroid/widget/MzActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 955
    .local v0, "menuView":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->adjustWindowPositionForMz(Z)V

    .line 957
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/MzActionMenuPresenter;

    iget-object v2, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->mPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    # setter for: Landroid/widget/MzActionMenuPresenter;->mOverflowPopup:Landroid/widget/MzActionMenuPresenter$OverflowPopup;
    invoke-static {v1, v2}, Landroid/widget/MzActionMenuPresenter;->access$202(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$OverflowPopup;)Landroid/widget/MzActionMenuPresenter$OverflowPopup;

    .line 960
    :cond_0
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;->this$0:Landroid/widget/MzActionMenuPresenter;

    const/4 v2, 0x0

    # setter for: Landroid/widget/MzActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v1, v2}, Landroid/widget/MzActionMenuPresenter;->access$302(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/MzActionMenuPresenter$OpenOverflowRunnable;

    .line 961
    return-void
.end method
