.class Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "MzScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MzScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/MzScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/MzScrollingTabContainerView;Lcom/android/internal/widget/MzScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/widget/MzScrollingTabContainerView;
    .param p2, "x1"    # Lcom/android/internal/widget/MzScrollingTabContainerView$1;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/MzScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->access$200(Lcom/android/internal/widget/MzScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    # getter for: Lcom/android/internal/widget/MzScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView;->access$200(Lcom/android/internal/widget/MzScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 743
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 748
    if-nez p2, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/MzScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/widget/MzScrollingTabContainerView;->createTabView(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;
    invoke-static {v1, v0, v2}, Lcom/android/internal/widget/MzScrollingTabContainerView;->access$300(Lcom/android/internal/widget/MzScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    move-result-object p2

    .line 753
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 751
    check-cast v0, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MzScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method
