.class Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;
.super Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;
.source "MzActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPopupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MzActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/MzActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-direct {p0}, Lcom/android/internal/view/menu/MzActionMenuItemView$PopupCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/MzActionMenuPresenter;
    .param p2, "x1"    # Landroid/widget/MzActionMenuPresenter$1;

    .prologue
    .line 964
    invoke-direct {p0, p1}, Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/MzActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$900(Landroid/widget/MzActionMenuPresenter;)Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MzActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/widget/MzActionMenuPresenter;

    # getter for: Landroid/widget/MzActionMenuPresenter;->mActionButtonPopup:Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0}, Landroid/widget/MzActionMenuPresenter;->access$900(Landroid/widget/MzActionMenuPresenter;)Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MzActionMenuPresenter$ActionButtonSubmenu;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
