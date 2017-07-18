.class Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;
.super Landroid/widget/ExpandableListConnector;
.source "ExpandableListViewMz.java"

# interfaces
.implements Landroid/widget/ListView$DividerFilter;
.implements Lcom/meizu/widget/ListSelectFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListViewMz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpandableListConnectorMz"
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;)V
    .locals 0
    .param p1, "expandableListAdapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 1761
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    .line 1760
    return-void
.end method


# virtual methods
.method public bottomDeviderEnabled()Z
    .locals 4

    .prologue
    .line 1814
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1815
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1817
    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .line 1818
    .local v1, "filter":Landroid/widget/ListView$DividerFilter;
    invoke-interface {v1}, Landroid/widget/ListView$DividerFilter;->bottomDeviderEnabled()Z

    move-result v2

    .line 1819
    .local v2, "result":Z
    return v2

    .line 1821
    .end local v1    # "filter":Landroid/widget/ListView$DividerFilter;
    .end local v2    # "result":Z
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public dividerEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 1800
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1801
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v4, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 1803
    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .line 1804
    .local v1, "filter":Landroid/widget/ListView$DividerFilter;
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1805
    .local v2, "pos":Landroid/widget/ExpandableListPosition;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v4}, Landroid/widget/ListView$DividerFilter;->dividerEnabled(I)Z

    move-result v3

    .line 1806
    .local v3, "result":Z
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1807
    return v3

    .line 1809
    .end local v1    # "filter":Landroid/widget/ListView$DividerFilter;
    .end local v2    # "pos":Landroid/widget/ExpandableListPosition;
    .end local v3    # "result":Z
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "flatListPos"    # I

    .prologue
    .line 1766
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v2, v4, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1769
    .local v2, "pos":Landroid/widget/ExpandableListPosition;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1770
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v4

    iget v5, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v6, v2, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v4, v5, v6}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result v3

    .line 1782
    :goto_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1784
    return v3

    .line 1773
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1774
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v4, v0, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 1775
    check-cast v1, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    .line 1776
    .local v1, "adaptermz":Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    iget v4, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v4}, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;->isGroupSelectable(I)Z

    move-result v3

    .local v3, "retValue":Z
    goto :goto_0

    .line 1778
    .end local v1    # "adaptermz":Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .end local v3    # "retValue":Z
    :cond_1
    const/4 v3, 0x1

    .local v3, "retValue":Z
    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1827
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1828
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Lcom/meizu/widget/ListSelectFilter;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1829
    check-cast v2, Lcom/meizu/widget/ListSelectFilter;

    .line 1830
    .local v2, "filter":Lcom/meizu/widget/ListSelectFilter;
    invoke-interface {v2, p1}, Lcom/meizu/widget/ListSelectFilter;->isSelectable(I)Z

    move-result v1

    .line 1831
    .local v1, "canSelect":Z
    return v1

    .line 1833
    .end local v1    # "canSelect":Z
    .end local v2    # "filter":Lcom/meizu/widget/ListSelectFilter;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method public topDividerEnabled()Z
    .locals 4

    .prologue
    .line 1788
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1789
    .local v0, "adapter":Landroid/widget/ExpandableListAdapter;
    instance-of v3, v0, Landroid/widget/ListView$DividerFilter;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1791
    check-cast v1, Landroid/widget/ListView$DividerFilter;

    .line 1792
    .local v1, "filter":Landroid/widget/ListView$DividerFilter;
    invoke-interface {v1}, Landroid/widget/ListView$DividerFilter;->topDividerEnabled()Z

    move-result v2

    .line 1793
    .local v2, "result":Z
    return v2

    .line 1795
    .end local v1    # "filter":Landroid/widget/ListView$DividerFilter;
    .end local v2    # "result":Z
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
