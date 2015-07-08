.class Lcom/android/internal/widget/MzActionBarView$2;
.super Ljava/lang/Object;
.source "MzActionBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzActionBarView;
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
    .line 162
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarView$2;->this$0:Lcom/android/internal/widget/MzActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$2;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mMenuPrepared:Z
    invoke-static {v0}, Lcom/android/internal/widget/MzActionBarView;->access$100(Lcom/android/internal/widget/MzActionBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/internal/widget/MzActionBarView$2;->this$0:Lcom/android/internal/widget/MzActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/MzActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/MzActionBarView$2;->this$0:Lcom/android/internal/widget/MzActionBarView;

    # getter for: Lcom/android/internal/widget/MzActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-static {v2}, Lcom/android/internal/widget/MzActionBarView;->access$200(Lcom/android/internal/widget/MzActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 168
    :cond_0
    return-void
.end method
