.class public Landroid/widget/ExpandableListViewMz$PackedPosition;
.super Ljava/lang/Object;
.source "ExpandableListViewMz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ExpandableListViewMz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackedPosition"
.end annotation


# instance fields
.field public childPosition:I

.field public groupPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I

    .prologue
    .line 1751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1752
    iput p1, p0, Landroid/widget/ExpandableListViewMz$PackedPosition;->groupPosition:I

    .line 1753
    iput p2, p0, Landroid/widget/ExpandableListViewMz$PackedPosition;->childPosition:I

    .line 1751
    return-void
.end method
