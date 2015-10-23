.class Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "MzActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MzActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/MzActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MzActionMenuPresenter;Landroid/widget/MzActionMenuPresenter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/MzActionMenuPresenter;
    .param p2, "x1"    # Landroid/widget/MzActionMenuPresenter$1;

    .prologue
    .line 920
    invoke-direct {p0, p1}, Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/MzActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 933
    instance-of v1, p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 934
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 936
    :cond_0
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 937
    .local v0, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    .line 938
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 940
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 924
    if-nez p1, :cond_0

    .line 928
    :goto_0
    return v2

    .line 926
    :cond_0
    iget-object v3, p0, Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/MzActionMenuPresenter;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Landroid/widget/MzActionMenuPresenter;->mOpenSubMenuId:I

    .line 927
    iget-object v1, p0, Landroid/widget/MzActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/MzActionMenuPresenter;

    invoke-virtual {v1}, Landroid/widget/MzActionMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 928
    .local v0, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
