.class final Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private pageViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2435
    .local p1, "pageViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 2436
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;->pageViews:Ljava/util/List;

    .line 2434
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 2456
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;->pageViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 2455
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;->pageViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 2451
    invoke-super {p0, p1}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    .line 2464
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "arg0":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;->pageViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;)V

    .line 2465
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$ViewPagerAdapter;->pageViews:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 2446
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
