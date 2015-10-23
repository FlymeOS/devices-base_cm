.class Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "MzActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MzActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MzActionMenuView;


# direct methods
.method private constructor <init>(Landroid/widget/MzActionMenuView;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;->this$0:Landroid/widget/MzActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MzActionMenuView;Landroid/widget/MzActionMenuView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/MzActionMenuView;
    .param p2, "x1"    # Landroid/widget/MzActionMenuView$1;

    .prologue
    .line 889
    invoke-direct {p0, p1}, Landroid/widget/MzActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/MzActionMenuView;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 892
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 896
    const/4 v0, 0x0

    return v0
.end method
