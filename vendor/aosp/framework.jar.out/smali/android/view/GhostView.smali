.class public Landroid/view/GhostView;
.super Landroid/view/View;
.source "GhostView.java"


# instance fields
.field private mBeingMoved:Z

.field private mReferences:I

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    .line 40
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iput-object p0, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 41
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 42
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 43
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 37
    return-void
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object v0

    return-object v0
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-nez v9, :cond_0

    .line 96
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    .line 99
    .local v4, "overlay":Landroid/view/ViewGroupOverlay;
    iget-object v5, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    .line 100
    .local v5, "overlayViewGroup":Landroid/view/ViewOverlay$OverlayViewGroup;
    iget-object v1, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 101
    .local v1, "ghostView":Landroid/view/GhostView;
    const/4 v7, 0x0

    .line 102
    .local v7, "previousRefCount":I
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 104
    .local v3, "oldParent":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 105
    .local v2, "oldGrandParent":Landroid/view/ViewGroup;
    if-eq v2, v5, :cond_1

    .line 106
    iget v7, v1, Landroid/view/GhostView;->mReferences:I

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    const/4 v1, 0x0

    .line 111
    .end local v1    # "ghostView":Landroid/view/GhostView;
    .end local v2    # "oldGrandParent":Landroid/view/ViewGroup;
    .end local v3    # "oldParent":Landroid/view/View;
    :cond_1
    if-nez v1, :cond_4

    .line 112
    if-nez p2, :cond_2

    .line 113
    new-instance p2, Landroid/graphics/Matrix;

    .end local p2    # "matrix":Landroid/graphics/Matrix;
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 114
    .restart local p2    # "matrix":Landroid/graphics/Matrix;
    invoke-static {p0, p1, p2}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 116
    :cond_2
    new-instance v1, Landroid/view/GhostView;

    invoke-direct {v1, p0}, Landroid/view/GhostView;-><init>(Landroid/view/View;)V

    .line 117
    .restart local v1    # "ghostView":Landroid/view/GhostView;
    invoke-virtual {v1, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    .line 118
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .local v6, "parent":Landroid/widget/FrameLayout;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 120
    invoke-static {p1, v6}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 121
    invoke-static {p1, v1}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 122
    invoke-virtual {v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 123
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v8, "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v9, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v9, v8}, Landroid/view/GhostView;->moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I

    move-result v0

    .line 125
    .local v0, "firstGhost":I
    iget-object v9, v4, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v9, v6, v1, v8, v0}, Landroid/view/GhostView;->insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V

    .line 126
    iput v7, v1, Landroid/view/GhostView;->mReferences:I

    .line 130
    .end local v0    # "firstGhost":I
    .end local v1    # "ghostView":Landroid/view/GhostView;
    .end local v6    # "parent":Landroid/widget/FrameLayout;
    .end local v8    # "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    :goto_0
    iget v9, v1, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Landroid/view/GhostView;->mReferences:I

    .line 131
    return-object v1

    .line 127
    :cond_4
    if-eqz p2, :cond_3

    .line 128
    invoke-virtual {v1, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public static calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 89
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 86
    return-void
.end method

.method private static copySize(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p0, "from"    # Landroid/view/View;
    .param p1, "to"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setTop(I)V

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBottom(I)V

    .line 154
    return-void
.end method

.method public static getGhost(Landroid/view/View;)Landroid/view/GhostView;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    return-object v0
.end method

.method private static getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I
    .locals 6
    .param p0, "overlayViewGroup"    # Landroid/view/ViewGroup;
    .param p3, "firstGhost"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p2, "tempParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v1, p3

    .line 238
    .local v1, "low":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 240
    .local v0, "high":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 241
    add-int v5, v1, v0

    div-int/lit8 v2, v5, 0x2

    .line 242
    .local v2, "mid":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 243
    .local v4, "wrapper":Landroid/view/ViewGroup;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/GhostView;

    .line 244
    .local v3, "midView":Landroid/view/GhostView;
    iget-object v5, v3, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v5, p2}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 245
    invoke-static {p1, p2}, Landroid/view/GhostView;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 246
    add-int/lit8 v1, v2, 0x1

    .line 250
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 248
    :cond_0
    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    .line 253
    .end local v2    # "mid":I
    .end local v3    # "midView":Landroid/view/GhostView;
    .end local v4    # "wrapper":Landroid/view/ViewGroup;
    :cond_1
    return v1
.end method

.method private static getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 303
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 304
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 306
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method private static insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V
    .locals 3
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "wrapper"    # Landroid/view/ViewGroup;
    .param p2, "ghostView"    # Landroid/view/GhostView;
    .param p4, "firstGhost"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/GhostView;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p3, "tempParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 214
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v1, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p2, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 221
    invoke-static {p0, v1, p3, p4}, Landroid/view/GhostView;->getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I

    move-result v0

    .line 222
    .local v0, "index":I
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 223
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private static isGhostWrapper(Landroid/view/View;)Z
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 260
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 261
    check-cast v1, Landroid/widget/FrameLayout;

    .line 262
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 263
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Landroid/view/GhostView;

    return v2

    .line 267
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_0
    return v4
.end method

.method private static isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "comparedWith"    # Landroid/view/View;

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 317
    .local v6, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 318
    .local v2, "childrenCount":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v7

    .line 319
    .local v7, "preorderedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v7, :cond_2

    .line 320
    invoke-virtual {v6}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v3

    .line 325
    :goto_0
    const/4 v5, 0x1

    .line 326
    .local v5, "isOnTop":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 327
    if-eqz v3, :cond_3

    invoke-virtual {v6, v2, v4}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v1

    .line 328
    .local v1, "childIndex":I
    :goto_2
    if-nez v7, :cond_4

    .line 329
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "child":Landroid/view/View;
    :goto_3
    if-ne v0, p0, :cond_5

    .line 331
    const/4 v5, 0x0

    .line 339
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childIndex":I
    :cond_0
    :goto_4
    if-eqz v7, :cond_1

    .line 340
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 342
    :cond_1
    return v5

    .line 319
    .end local v4    # "i":I
    .end local v5    # "isOnTop":Z
    :cond_2
    const/4 v3, 0x0

    .local v3, "customOrder":Z
    goto :goto_0

    .line 327
    .end local v3    # "customOrder":Z
    .restart local v4    # "i":I
    .restart local v5    # "isOnTop":Z
    :cond_3
    move v1, v4

    .restart local v1    # "childIndex":I
    goto :goto_2

    .line 329
    :cond_4
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_3

    .line 333
    :cond_5
    if-ne v0, p1, :cond_6

    .line 334
    const/4 v5, 0x1

    .line 335
    goto :goto_4

    .line 326
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p1, "comparedWith":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 277
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 278
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 280
    :cond_0
    const/4 v5, 0x1

    return v5

    .line 282
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 283
    .local v1, "depth":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 284
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 285
    .local v4, "viewParent":Landroid/view/View;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 287
    .local v0, "comparedWithParent":Landroid/view/View;
    if-eq v4, v0, :cond_2

    .line 289
    invoke-static {v4, v0}, Landroid/view/GhostView;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    return v5

    .line 283
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "comparedWithParent":Landroid/view/View;
    .end local v4    # "viewParent":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_4

    const/4 v3, 0x1

    .line 295
    .local v3, "isComparedWithTheParent":Z
    :goto_1
    return v3

    .line 294
    .end local v3    # "isComparedWithTheParent":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isComparedWithTheParent":Z
    goto :goto_1
.end method

.method private static moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I
    .locals 7
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "tempViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v6, 0x0

    .line 168
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 169
    .local v4, "numChildren":I
    if-nez v4, :cond_0

    .line 170
    const/4 v5, -0x1

    return v5

    .line 171
    :cond_0
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    add-int/lit8 v1, v4, -0x1

    .line 174
    .local v1, "firstGhost":I
    add-int/lit8 v3, v4, -0x2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 175
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    :cond_1
    return v1

    .line 178
    :cond_2
    move v1, v3

    .line 174
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 184
    .end local v1    # "firstGhost":I
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v3, v4, -0x2

    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 185
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 187
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/GhostView;

    .line 189
    .local v2, "ghostView":Landroid/view/GhostView;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/view/GhostView;->mBeingMoved:Z

    .line 190
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 191
    iput-boolean v6, v2, Landroid/view/GhostView;->mBeingMoved:Z

    .line 184
    .end local v2    # "ghostView":Landroid/view/GhostView;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 196
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 197
    const/4 v1, -0x1

    .line 206
    .restart local v1    # "firstGhost":I
    :goto_2
    return v1

    .line 199
    .end local v1    # "firstGhost":I
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 201
    .restart local v1    # "firstGhost":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_3
    if-ltz v3, :cond_7

    .line 202
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 204
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2
.end method

.method public static removeGhost(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 140
    .local v0, "ghostView":Landroid/view/GhostView;
    if-eqz v0, :cond_0

    .line 141
    iget v3, v0, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/view/GhostView;->mReferences:I

    .line 142
    iget v3, v0, Landroid/view/GhostView;->mReferences:I

    if-nez v3, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 144
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 145
    .local v1, "grandParent":Landroid/view/ViewGroup;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    .end local v1    # "grandParent":Landroid/view/ViewGroup;
    .end local v2    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 76
    iget-boolean v1, p0, Landroid/view/GhostView;->mBeingMoved:Z

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 78
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iput-object v3, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    .line 79
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 80
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 74
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 48
    instance-of v2, p1, Landroid/view/DisplayListCanvas;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 50
    .local v0, "dlCanvas":Landroid/view/DisplayListCanvas;
    iget-object v2, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View;->mRecreateDisplayList:Z

    .line 51
    iget-object v2, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v1

    .line 52
    .local v1, "renderNode":Landroid/view/RenderNode;
    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 55
    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    .line 47
    .end local v0    # "dlCanvas":Landroid/view/DisplayListCanvas;
    .end local v1    # "renderNode":Landroid/view/RenderNode;
    :cond_0
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/view/GhostView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    .line 60
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-ne v1, p0, :cond_0

    .line 68
    if-nez p1, :cond_1

    const/4 v0, 0x4

    .line 69
    .local v0, "inverseVisibility":I
    :goto_0
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 65
    .end local v0    # "inverseVisibility":I
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "inverseVisibility":I
    goto :goto_0
.end method
