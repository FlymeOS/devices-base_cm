.class Landroid/widget/ListView$FlymeInjector;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initExtFlymeFields(Landroid/widget/ListView;)V
    .locals 3
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 4548
    iput-object v2, p0, Landroid/widget/ListView;->mMzDragSelectListener:Landroid/widget/ListView$OnDragSelectListener;

    .line 4549
    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsBeginDragSelect:Z

    .line 4550
    iput v0, p0, Landroid/widget/ListView;->mMzDragMotionViewTop:I

    .line 4551
    iput v0, p0, Landroid/widget/ListView;->mMzDragMotionViewBottom:I

    .line 4552
    iput v1, p0, Landroid/widget/ListView;->mMzDragMotionPosition:I

    .line 4553
    iput v1, p0, Landroid/widget/ListView;->mMzDragMotionY:I

    .line 4554
    iput v0, p0, Landroid/widget/ListView;->mMzLastDragMotionY:I

    .line 4555
    iput v0, p0, Landroid/widget/ListView;->mMzIntercepeDragMotionX:I

    .line 4556
    iput v0, p0, Landroid/widget/ListView;->mMzIntercepeDragMotionY:I

    .line 4557
    iput v1, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4558
    iput v1, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4559
    iput v1, p0, Landroid/widget/ListView;->mMzDragDownPosition:I

    .line 4560
    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsOutOfListContent:Z

    .line 4561
    iput v0, p0, Landroid/widget/ListView;->mMzDragWidth:I

    .line 4562
    iput v0, p0, Landroid/widget/ListView;->mMzDragSlop:I

    .line 4563
    iput v1, p0, Landroid/widget/ListView;->mMzLongPressPosition:I

    .line 4564
    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsOutOfDragRegion:Z

    .line 4565
    iput-boolean v0, p0, Landroid/widget/ListView;->mMzSelectToBottom:Z

    .line 4566
    iput-object v2, p0, Landroid/widget/ListView;->mMzFocuseRect:Landroid/graphics/Rect;

    .line 4567
    iput-object v2, p0, Landroid/widget/ListView;->mMzScrollSelection:Landroid/widget/ListView$MzScrollSelectionRunnable;

    .line 4568
    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsDividerInside:Z

    .line 4569
    iget v0, p0, Landroid/widget/ListView;->mDividerHeight:I

    iput v0, p0, Landroid/widget/ListView;->mMzInDividerHeight:I

    .line 4570
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListView;->mMzIsCheckBoxAnim:Z

    .line 4571
    return-void
.end method

.method static mzContentFits(Landroid/widget/ListView;)Z
    .locals 6
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4733
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 4734
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 4737
    :cond_0
    :goto_0
    return v1

    .line 4735
    :cond_1
    iget v3, p0, Landroid/widget/ListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 4737
    :cond_2
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method static mzDrawDivider(Landroid/widget/ListView;I)Z
    .locals 19
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "childIndex"    # I

    .prologue
    .line 4598
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListView;->mFirstPosition:I

    .line 4599
    .local v5, "first":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->mzGetFieldHeaderViewInfos()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4600
    .local v7, "headerCount":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ListView;->mItemCount:I

    .line 4601
    .local v13, "itemCount":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->mzGetFieldFooterViewInfos()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    sub-int v6, v13, v17

    .line 4603
    .local v6, "footerLimit":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4604
    .local v2, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v2, Landroid/widget/ListView$DividerFilter;

    .line 4605
    .local v9, "isDividerFilter":Z
    instance-of v12, v2, Landroid/widget/HeaderViewListAdapter;

    .line 4606
    .local v12, "isHeaderViewListAdapter":Z
    const/16 v16, 0x0

    .line 4607
    .local v16, "wrappedAdapter":Landroid/widget/ListAdapter;
    if-eqz v12, :cond_0

    move-object/from16 v17, v2

    .line 4608
    check-cast v17, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v16

    .line 4609
    move-object/from16 v0, v16

    instance-of v9, v0, Landroid/widget/ListView$DividerFilter;

    .line 4610
    if-nez v9, :cond_0

    .line 4611
    const/16 v16, 0x0

    .line 4614
    :cond_0
    move/from16 v8, p1

    .line 4615
    .local v8, "index":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 4616
    add-int/lit8 v8, v8, 0x1

    .line 4618
    :cond_1
    add-int v14, v5, v8

    .line 4619
    .local v14, "itemIndex":I
    if-ge v14, v7, :cond_5

    const/4 v11, 0x1

    .line 4620
    .local v11, "isHeader":Z
    :goto_0
    if-lt v14, v6, :cond_6

    const/4 v10, 0x1

    .line 4621
    .local v10, "isFooter":Z
    :goto_1
    const/4 v15, 0x1

    .line 4622
    .local v15, "toDraw":Z
    if-eqz v9, :cond_8

    .line 4623
    if-eqz v12, :cond_7

    .line 4624
    if-eqz v16, :cond_2

    if-nez v11, :cond_2

    if-nez v10, :cond_2

    move-object/from16 v17, v16

    .line 4625
    check-cast v17, Landroid/widget/ListView$DividerFilter;

    sub-int v18, v14, v7

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v15

    .line 4638
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ListView;->mStackFromBottom:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 4639
    const/4 v4, 0x0

    .line 4640
    .local v4, "drawTop":Z
    if-eqz v9, :cond_b

    .line 4641
    if-eqz v12, :cond_a

    .line 4642
    if-eqz v16, :cond_3

    .line 4643
    check-cast v16, Landroid/widget/ListView$DividerFilter;

    .end local v16    # "wrappedAdapter":Landroid/widget/ListAdapter;
    invoke-interface/range {v16 .. v16}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v4

    .line 4652
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    if-nez v4, :cond_4

    .line 4653
    const/4 v15, 0x0

    .line 4673
    .end local v4    # "drawTop":Z
    .end local v15    # "toDraw":Z
    :cond_4
    :goto_4
    return v15

    .line 4619
    .end local v10    # "isFooter":Z
    .end local v11    # "isHeader":Z
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v16    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 4620
    .restart local v11    # "isHeader":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10    # "isFooter":Z
    .restart local v15    # "toDraw":Z
    :cond_7
    move-object/from16 v17, v2

    .line 4628
    check-cast v17, Landroid/widget/ListView$DividerFilter;

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v15

    goto :goto_2

    .line 4630
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 4631
    if-eqz v12, :cond_9

    if-nez v11, :cond_9

    if-nez v10, :cond_9

    .line 4632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    sub-int v18, v14, v7

    invoke-interface/range {v17 .. v18}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v15

    goto :goto_2

    .line 4634
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v15

    goto :goto_2

    .line 4646
    .restart local v4    # "drawTop":Z
    :cond_a
    check-cast v2, Landroid/widget/ListView$DividerFilter;

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v2}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v4

    goto :goto_3

    .line 4648
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 4649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v4

    goto :goto_3

    .line 4656
    .end local v4    # "drawTop":Z
    :cond_c
    const/4 v3, 0x0

    .line 4657
    .local v3, "drawBottom":Z
    if-eqz v9, :cond_f

    .line 4658
    if-eqz v12, :cond_e

    .line 4659
    if-eqz v16, :cond_d

    .line 4660
    check-cast v16, Landroid/widget/ListView$DividerFilter;

    .end local v16    # "wrappedAdapter":Landroid/widget/ListAdapter;
    invoke-interface/range {v16 .. v16}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v3

    .line 4669
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_d
    :goto_5
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    if-nez v3, :cond_4

    .line 4670
    const/4 v15, 0x0

    goto :goto_4

    .line 4663
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    .restart local v16    # "wrappedAdapter":Landroid/widget/ListAdapter;
    :cond_e
    check-cast v2, Landroid/widget/ListView$DividerFilter;

    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v2}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v3

    goto :goto_5

    .line 4665
    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 4666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListView;->mMzDividerFilterListener:Landroid/widget/ListView$DividerFilter;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v3

    goto :goto_5
.end method

.method static mzEndDragSelection(Landroid/widget/ListView;)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 4715
    iput v0, p0, Landroid/widget/ListView;->mMzDragMotionY:I

    .line 4716
    iput v0, p0, Landroid/widget/ListView;->mMzLastDragMotionY:I

    .line 4717
    iput-boolean v1, p0, Landroid/widget/ListView;->mMzIsBeginDragSelect:Z

    .line 4718
    iput-boolean v1, p0, Landroid/widget/ListView;->mMzIsOutOfDragRegion:Z

    .line 4719
    iput v0, p0, Landroid/widget/ListView;->mMzDragDownPosition:I

    .line 4720
    iput v0, p0, Landroid/widget/ListView;->mMzLongPressPosition:I

    .line 4721
    iput v0, p0, Landroid/widget/ListView;->mLastDownSelectPosition:I

    .line 4722
    iput v0, p0, Landroid/widget/ListView;->mLastUpSelectPosition:I

    .line 4723
    iput v0, p0, Landroid/widget/ListView;->mMzDragMotionPosition:I

    .line 4724
    iput-boolean v1, p0, Landroid/widget/ListView;->mMzIsOutOfListContent:Z

    .line 4725
    iput v0, p0, Landroid/widget/ListView;->mMzIntercepeDragMotionX:I

    .line 4726
    iput v0, p0, Landroid/widget/ListView;->mMzIntercepeDragMotionY:I

    .line 4727
    iget-object v0, p0, Landroid/widget/ListView;->mMzScrollSelection:Landroid/widget/ListView$MzScrollSelectionRunnable;

    if-eqz v0, :cond_0

    .line 4728
    iget-object v0, p0, Landroid/widget/ListView;->mMzScrollSelection:Landroid/widget/ListView$MzScrollSelectionRunnable;

    invoke-virtual {v0}, Landroid/widget/ListView$MzScrollSelectionRunnable;->finish()V

    .line 4730
    :cond_0
    return-void
.end method

.method static mzOnDragMotionChanged(Landroid/widget/ListView;I)Z
    .locals 7
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "motionY"    # I

    .prologue
    const/4 v4, 0x0

    .line 4677
    iget-object v5, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 4678
    .local v3, "listTop":I
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Landroid/widget/ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v5, v6

    .line 4679
    .local v2, "listBottom":I
    if-lt p1, v3, :cond_0

    if-le p1, v2, :cond_1

    .line 4701
    :cond_0
    :goto_0
    return v4

    .line 4683
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->findMotionRow(I)I

    move-result v1

    .line 4686
    .local v1, "dragPosition":I
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->mzIsHeaderOrFooter(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4690
    if-ltz p1, :cond_0

    if-ltz v1, :cond_0

    .line 4691
    iget v4, p0, Landroid/widget/ListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4692
    .local v0, "dragMotionView":Landroid/view/View;
    iput v1, p0, Landroid/widget/ListView;->mMzDragMotionPosition:I

    .line 4693
    iget v4, p0, Landroid/widget/ListView;->mMzDragMotionPosition:I

    if-nez v4, :cond_2

    .line 4694
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/ListView;->mMzDragMotionViewTop:I

    .line 4698
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, p0, Landroid/widget/ListView;->mMzDragMotionViewBottom:I

    .line 4699
    const/4 v4, 0x1

    goto :goto_0

    .line 4696
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/ListView;->mDividerHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/widget/ListView;->mMzDragMotionViewTop:I

    goto :goto_1
.end method

.method static mzOnSizeChanged(Landroid/widget/ListView;)V
    .locals 3
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 4574
    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 4575
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    .line 4577
    :cond_0
    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->mzGetFieldPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4578
    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/widget/ListView;->mDefaultCheckWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4579
    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->mzGetFieldPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->mzGetFieldScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4580
    iget-object v0, p0, Landroid/widget/ListView;->mMzDragRegionRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->mzGetFieldPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4581
    return-void
.end method

.method static mzSetupChild(Landroid/widget/ListView;Landroid/view/View;)V
    .locals 4
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 4584
    if-eqz p1, :cond_2

    iget v2, p0, Landroid/widget/ListView;->mChoiceModeMZ:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/ListView;->mChoiceModeMZ:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 4586
    :cond_0
    const v2, 0x1020001

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4587
    .local v0, "checkbox":Landroid/view/View;
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_2

    .line 4588
    iget-boolean v2, p0, Landroid/widget/ListView;->mMzIsCheckBoxAnim:Z

    if-eqz v2, :cond_1

    instance-of v2, v0, Landroid/widget/CheckBox;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 4589
    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setIsAnimation(Z)V

    .line 4591
    :cond_1
    iget-object v2, p0, Landroid/widget/ListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/ListView;->mDragAndDropPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 4592
    .local v1, "inSelectionMode":Z
    :goto_0
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkbox":Landroid/view/View;
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 4595
    .end local v1    # "inSelectionMode":Z
    :cond_2
    return-void

    .line 4591
    .restart local v0    # "checkbox":Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static mzUpdateDragView(Landroid/view/View;Z)V
    .locals 0
    .param p0, "dragView"    # Landroid/view/View;
    .param p1, "checked"    # Z

    .prologue
    .line 4708
    if-nez p0, :cond_0

    .line 4712
    :goto_0
    return-void

    .line 4711
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method
