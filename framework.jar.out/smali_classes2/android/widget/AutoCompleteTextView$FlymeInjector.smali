.class final Landroid/widget/AutoCompleteTextView$FlymeInjector;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1408
    return-void
.end method

.method static getPosition(Landroid/widget/AutoCompleteTextView;I)I
    .locals 1
    .param p0, "tv"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "position"    # I

    .prologue
    .line 1394
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method static initFlymeExtraFields(Landroid/widget/AutoCompleteTextView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/AutoCompleteTextView;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1388
    new-instance v0, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView$FlymeInjector$DropdownPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->flymSetFieldPopup(Landroid/widget/ListPopupWindow;)V

    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mFlymeFilterComplete:Z

    .line 1390
    return-void
.end method

.method static updateFlymeDropDownForFilter(Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .param p0, "tv"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    .line 1401
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mFlymeFilterComplete:Z

    if-eqz v0, :cond_0

    .line 1402
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mIsFlymeMmsFirstFileter:Z

    .line 1404
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mFlymeFilterComplete:Z

    .line 1406
    return-void
.end method
