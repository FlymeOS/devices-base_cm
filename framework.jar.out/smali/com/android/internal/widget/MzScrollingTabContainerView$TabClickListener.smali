.class Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "MzScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/MzScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Lcom/android/internal/widget/MzScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/MzScrollingTabContainerView;
    .param p2, "x1"    # Lcom/android/internal/widget/MzScrollingTabContainerView$1;

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 759
    move-object v3, p1

    check-cast v3, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    .line 760
    .local v3, "tabView":Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    invoke-virtual {v3}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar$Tab;->select()V

    .line 761
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->access$200(Lcom/android/internal/widget/MzScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 762
    .local v2, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 763
    iget-object v4, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabClickListener;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/widget/MzScrollingTabContainerView;->access$200(Lcom/android/internal/widget/MzScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 764
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 766
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method
