.class public abstract Landroid/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterView$1;,
        Landroid/widget/AdapterView$SelectionNotifier;,
        Landroid/widget/AdapterView$AdapterDataSetObserver;,
        Landroid/widget/AdapterView$AdapterContextMenuInfo;,
        Landroid/widget/AdapterView$OnItemSelectedListener;,
        Landroid/widget/AdapterView$OnItemLongClickListener;,
        Landroid/widget/AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 235
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 239
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 82
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 92
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 124
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 150
    iput v1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 156
    iput-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 161
    iput v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 167
    iput-wide v2, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 199
    iput v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 204
    iput-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 228
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 246
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setImportantForAccessibility(I)V

    .line 249
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/AdapterView;Landroid/widget/AdapterView$SelectionNotifier;)Landroid/widget/AdapterView$SelectionNotifier;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AdapterView;
    .param p1, "x1"    # Landroid/widget/AdapterView$SelectionNotifier;

    .prologue
    .line 48
    iput-object p1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/AdapterView;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    return-void
.end method

.method private dispatchOnItemSelected()V
    .locals 0

    .prologue
    .line 903
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-direct {p0}, Landroid/widget/AdapterView;->fireOnSelected()V

    .line 904
    invoke-direct {p0}, Landroid/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    .line 905
    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 908
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 911
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 912
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 913
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 914
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 917
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 983
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 984
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    .line 985
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 986
    .local v1, "itemCount":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 989
    .end local v1    # "itemCount":I
    :cond_1
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .line 922
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v1, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 926
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 928
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 740
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const/4 p1, 0x0

    .line 744
    :cond_0
    if-eqz p1, :cond_3

    .line 745
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 746
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 747
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 756
    :goto_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 757
    iget v2, p0, Landroid/widget/AdapterView;->mLeft:I

    iget v3, p0, Landroid/widget/AdapterView;->mTop:I

    iget v4, p0, Landroid/widget/AdapterView;->mRight:I

    iget v5, p0, Landroid/widget/AdapterView;->mBottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 763
    :cond_1
    :goto_1
    return-void

    .line 750
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 760
    :cond_3
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 761
    :cond_4
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 461
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 474
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 502
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 487
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 994
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 721
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 722
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 723
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 727
    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 728
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 729
    iget-object v3, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 730
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 732
    :cond_4
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_5
    move v1, v5

    .line 722
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_6
    move v2, v5

    .line 723
    goto :goto_1

    .restart local v2    # "focusable":Z
    :cond_7
    move v3, v5

    .line 727
    goto :goto_2

    :cond_8
    move v3, v5

    .line 728
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1067
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1068
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->selectionChanged()V

    .line 1069
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 1070
    iget-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 1075
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-eqz v0, :cond_2

    .line 1076
    iget-object v0, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {v0}, Landroid/widget/AdapterView$SelectionNotifier;->run()V

    .line 1078
    :cond_2
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 934
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 935
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    const/4 v1, 0x1

    .line 939
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 800
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 801
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 793
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 1089
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 1091
    .local v3, "count":I
    if-nez v3, :cond_1

    .line 1092
    const/4 v13, -0x1

    .line 1164
    :cond_0
    :goto_0
    return v13

    .line 1095
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1096
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1099
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_2

    .line 1100
    const/4 v13, -0x1

    goto :goto_0

    .line 1104
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1105
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1112
    .local v4, "endTime":J
    move v6, v13

    .line 1115
    .local v6, "first":I
    move v9, v13

    .line 1118
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1128
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1129
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_5

    .line 1130
    const/4 v13, -0x1

    goto :goto_0

    .line 1148
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_3
    if-nez v7, :cond_4

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 1150
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 1151
    move v13, v9

    .line 1153
    const/4 v12, 0x0

    .line 1133
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    .line 1134
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1135
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_0

    .line 1140
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v8, 0x1

    .line 1141
    .restart local v8    # "hitLast":Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .line 1143
    .restart local v7    # "hitFirst":Z
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 1164
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_6
    const/4 v13, -0x1

    goto :goto_0

    .line 1140
    .restart local v14    # "rowId":J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1141
    .restart local v8    # "hitLast":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 1154
    .restart local v7    # "hitFirst":Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_5

    if-nez v7, :cond_5

    .line 1156
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1157
    move v13, v6

    .line 1159
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 681
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 634
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 772
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 773
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 777
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 778
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 644
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 356
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 604
    move-object v3, p1

    .line 607
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 608
    move-object v3, v4

    goto :goto_0

    .line 610
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 624
    :cond_0
    :goto_1
    return v5

    .line 616
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    .line 617
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 618
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 619
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 617
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 575
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 576
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 577
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 578
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 580
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 998
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 999
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1001
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 1006
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 1009
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1013
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 1014
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 1016
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1017
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 1019
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1020
    const/4 v1, 0x1

    .line 1024
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 1026
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1029
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 1030
    add-int/lit8 v2, v0, -0x1

    .line 1032
    :cond_1
    if-gez v2, :cond_2

    .line 1033
    const/4 v2, 0x0

    .line 1037
    :cond_2
    invoke-virtual {p0, v2, v7}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1038
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 1040
    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1042
    :cond_3
    if-ltz v3, :cond_4

    .line 1043
    invoke-virtual {p0, v3}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1044
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1045
    const/4 v1, 0x1

    .line 1049
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 1051
    iput v6, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1052
    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1053
    iput v6, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1054
    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1055
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1056
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 1059
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->notifySubtreeAccessibilityStateChangedIfNeeded()V

    .line 1060
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 691
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1176
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 856
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 857
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 858
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 969
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 970
    const-class v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 971
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 972
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 973
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 976
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 977
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 978
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 979
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 980
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 958
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 959
    const-class v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 960
    invoke-direct {p0}, Landroid/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 961
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 962
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 965
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 542
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    .line 543
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 944
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 947
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 949
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 950
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 951
    const/4 v1, 0x1

    .line 953
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->playSoundEffect(I)V

    .line 305
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 306
    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    move v0, v6

    .line 312
    :cond_1
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1209
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1210
    iput-boolean v5, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 1211
    iget v2, p0, Landroid/widget/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 1212
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1214
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1215
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1216
    iget v2, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1217
    if-eqz v1, :cond_0

    .line 1218
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1220
    :cond_0
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 1237
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1223
    :cond_2
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1224
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1225
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1226
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1230
    :goto_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1231
    if-eqz v1, :cond_3

    .line 1232
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 1234
    :cond_3
    iput v5, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1228
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 537
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 515
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 527
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x0

    .line 881
    iput-object v1, p0, Landroid/widget/AdapterView;->mPendingSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 883
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 890
    :cond_1
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_3

    .line 891
    new-instance v0, Landroid/widget/AdapterView$SelectionNotifier;

    invoke-direct {v0, p0, v1}, Landroid/widget/AdapterView$SelectionNotifier;-><init>(Landroid/widget/AdapterView;Landroid/widget/AdapterView$1;)V

    iput-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    .line 895
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 900
    :cond_2
    :goto_1
    return-void

    .line 893
    :cond_3
    iget-object v0, p0, Landroid/widget/AdapterView;->mSelectionNotifier:Landroid/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 897
    :cond_4
    invoke-direct {p0}, Landroid/widget/AdapterView;->dispatchOnItemSelected()V

    goto :goto_1
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v1, 0x1

    .line 660
    iput-object p1, p0, Landroid/widget/AdapterView;->mEmptyView:Landroid/view/View;

    .line 663
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 665
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 668
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 669
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    .local v1, "empty":Z
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/AdapterView;->updateEmptyStatus(Z)V

    .line 671
    return-void

    .line 669
    .end local v1    # "empty":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 696
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 697
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 699
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 700
    if-nez p1, :cond_1

    .line 701
    iput-boolean v2, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 704
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 705
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 697
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 704
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 709
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 710
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 712
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 713
    if-eqz p1, :cond_1

    .line 714
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDesiredFocusableState:Z

    .line 717
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 718
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 710
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 717
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1194
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 1195
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 1197
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1198
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 1199
    iget-wide v0, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 1201
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 783
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 280
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 281
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 345
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Landroid/widget/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setLongClickable(Z)V

    .line 348
    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 349
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 398
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput-object p1, p0, Landroid/widget/AdapterView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 399
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1184
    .local p0, "this":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<TT;>;"
    iput p1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 1185
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 1186
    return-void
.end method

.method public abstract setSelection(I)V
.end method
