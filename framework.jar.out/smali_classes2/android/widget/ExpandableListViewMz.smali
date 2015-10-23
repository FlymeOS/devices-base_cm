.class public Landroid/widget/ExpandableListViewMz;
.super Landroid/widget/ListView;
.source "ExpandableListViewMz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListViewMz$1;,
        Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;,
        Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;,
        Landroid/widget/ExpandableListViewMz$PackedPosition;,
        Landroid/widget/ExpandableListViewMz$SavedState;,
        Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;,
        Landroid/widget/ExpandableListViewMz$onChildCheckListener;,
        Landroid/widget/ExpandableListViewMz$onGroupCheckListener;,
        Landroid/widget/ExpandableListViewMz$OnChildClickListener;,
        Landroid/widget/ExpandableListViewMz$OnGroupClickListener;,
        Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;,
        Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildCheckListener:Landroid/widget/ExpandableListViewMz$onChildCheckListener;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

.field private mGroupCheckListener:Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mLongPressPosition:I

.field private mMultiChoiceEnable:Z

.field private mOnChildClickListener:Landroid/widget/ExpandableListViewMz$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

.field private mPackedCheckStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackedCheckedItemCount:I

.field private mScrollActionOnGroupExpand:Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    new-array v0, v3, [I

    sput-object v0, Landroid/widget/ExpandableListViewMz;->EMPTY_STATE_SET:[I

    .line 173
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListViewMz;->GROUP_EXPANDED_STATE_SET:[I

    .line 177
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListViewMz;->GROUP_EMPTY_STATE_SET:[I

    .line 181
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/ExpandableListViewMz;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 185
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Landroid/widget/ExpandableListViewMz;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ExpandableListViewMz;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ExpandableListViewMz;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ExpandableListViewMz;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ExpandableListViewMz;->GROUP_STATE_SETS:[[I

    .line 193
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListViewMz;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 181
    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListViewMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 214
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListViewMz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRect:Landroid/graphics/Rect;

    .line 220
    sget-object v1, Landroid/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 224
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 228
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    .line 230
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    .line 232
    iget v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 233
    iget v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    .line 235
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorLeft:I

    .line 237
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorRight:I

    .line 239
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    return-void
.end method

.method private ArrayListToArray(Ljava/util/ArrayList;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1534
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1535
    const/4 v1, 0x0

    .line 1543
    :cond_0
    return-object v1

    .line 1538
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1539
    .local v2, "size":I
    new-array v1, v2, [J

    .line 1540
    .local v1, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1541
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 1540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    .prologue
    .line 1176
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1177
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1179
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 550
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pos"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 365
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 366
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 368
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 372
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v7, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v8, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 375
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 378
    .local v3, "stateSetIndex":I
    sget-object v4, Landroid/widget/ExpandableListViewMz;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 392
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 372
    goto :goto_0

    .restart local v1    # "isEmpty":Z
    :cond_4
    move v5, v4

    .line 375
    goto :goto_1

    .line 381
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_5
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 383
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Landroid/widget/ExpandableListViewMz;->CHILD_LAST_STATE_SET:[I

    .line 388
    .local v2, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 385
    .end local v2    # "stateSet":[I
    :cond_6
    sget-object v2, Landroid/widget/ExpandableListViewMz;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, -0x1

    .line 1104
    cmp-long v1, p0, v6

    if-nez v1, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return v0

    .line 1107
    :cond_1
    and-long v2, p0, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1109
    and-long v0, p0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 1129
    const-wide/high16 v0, -0x8000000000000000L

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .prologue
    .line 1144
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    .line 1085
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1087
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 1065
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1066
    const/4 v0, 0x2

    .line 1069
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 538
    iget v1, p0, Landroid/widget/ExpandableListViewMz;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 539
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateFlatCheckStates()V
    .locals 6

    .prologue
    .line 1449
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_0

    .line 1466
    :goto_0
    return-void

    .line 1452
    :cond_0
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_1

    .line 1453
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1455
    :cond_1
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mItemCount:I

    if-ge v1, v4, :cond_3

    .line 1458
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v2

    .line 1459
    .local v2, "packedPos":J
    invoke-virtual {p0, v2, v3}, Landroid/widget/ExpandableListViewMz;->isPackedPositionChecked(J)Z

    move-result v0

    .line 1460
    .local v0, "checked":Z
    if-eqz v0, :cond_2

    .line 1461
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1457
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1465
    .end local v0    # "checked":Z
    .end local v2    # "packedPos":J
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public checkedAll()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1247
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getItemsCount()I

    move-result v6

    .line 1248
    .local v6, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 1249
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListViewMz;->getPackedPositionFromUnpackListPosition(I)Landroid/widget/ExpandableListViewMz$PackedPosition;

    move-result-object v4

    .line 1251
    .local v4, "packedPosition":Landroid/widget/ExpandableListViewMz$PackedPosition;
    iget v7, v4, Landroid/widget/ExpandableListViewMz$PackedPosition;->childPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 1252
    iget v7, v4, Landroid/widget/ExpandableListViewMz$PackedPosition;->groupPosition:I

    invoke-static {v7}, Landroid/widget/ExpandableListViewMz;->getPackedPositionForGroup(I)J

    move-result-wide v2

    .line 1257
    .local v2, "packedPos":J
    :goto_1
    invoke-virtual {p0, v2, v3, v11}, Landroid/widget/ExpandableListViewMz;->setPackedPositionChecked(JZ)V

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1254
    .end local v2    # "packedPos":J
    :cond_0
    iget v7, v4, Landroid/widget/ExpandableListViewMz$PackedPosition;->groupPosition:I

    iget v8, v4, Landroid/widget/ExpandableListViewMz$PackedPosition;->childPosition:I

    invoke-static {v7, v8}, Landroid/widget/ExpandableListViewMz;->getPackedPositionForChild(II)J

    move-result-wide v2

    .restart local v2    # "packedPos":J
    goto :goto_1

    .line 1261
    .end local v2    # "packedPos":J
    .end local v4    # "packedPosition":Landroid/widget/ExpandableListViewMz$PackedPosition;
    :cond_1
    iget v7, p0, Landroid/widget/ExpandableListViewMz;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getFooterViewsCount()I

    move-result v8

    sub-int v0, v7, v8

    .line 1262
    .local v0, "availableItem":I
    invoke-super {p0}, Landroid/widget/ListView;->clearChoices()V

    .line 1263
    iget v7, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    .line 1264
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v5

    .local v5, "position":I
    :goto_2
    if-gt v5, v0, :cond_3

    .line 1265
    iget-object v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v5, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1266
    iget-object v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v7}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1267
    iget-object v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v8, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v8, v5}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1269
    :cond_2
    iget v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    .line 1264
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1272
    .end local v5    # "position":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->requestLayout()V

    .line 1273
    return-void
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1365
    invoke-super {p0}, Landroid/widget/ListView;->clearChoices()V

    .line 1367
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1371
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    .line 1372
    return-void
.end method

.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 738
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->collapseGroup(I)Z

    move-result v0

    .line 740
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 741
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 744
    :cond_0
    return v0
.end method

.method confirmCheckedPositionsById()V
    .locals 0

    .prologue
    .line 1290
    invoke-super {p0}, Landroid/widget/ListView;->confirmCheckedPositionsById()V

    .line 1291
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 1150
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1164
    :goto_0
    return-object v0

    .line 1155
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1156
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1157
    .local v7, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1158
    .local v8, "pos":Landroid/widget/ExpandableListPosition;
    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1160
    invoke-direct {p0, v8}, Landroid/widget/ExpandableListViewMz;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 1161
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1162
    .local v2, "packedPosition":J
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1164
    new-instance v0, Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListViewMz$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 248
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/16 v18, 0x0

    .line 256
    .local v18, "saveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 257
    .local v8, "clipToPadding":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    .line 259
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mScrollX:I

    move/from16 v19, v0

    .line 260
    .local v19, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mScrollY:I

    move/from16 v20, v0

    .line 261
    .local v20, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 266
    .end local v19    # "scrollX":I
    .end local v20    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v9

    .line 268
    .local v9, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mItemCount:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListViewMz;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    .line 270
    .local v14, "lastChildFlPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mBottom:I

    move/from16 v16, v0

    .line 278
    .local v16, "myB":I
    const/4 v15, -0x4

    .line 280
    .local v15, "lastItemType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorRect:Landroid/graphics/Rect;

    .line 285
    .local v12, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListViewMz;->getChildCount()I

    move-result v6

    .line 286
    .local v6, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v7, v22, v9

    .local v7, "childFlPos":I
    :goto_2
    if-ge v10, v6, :cond_6

    .line 289
    if-gez v7, :cond_5

    .line 287
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 256
    .end local v6    # "childCount":I
    .end local v7    # "childFlPos":I
    .end local v8    # "clipToPadding":Z
    .end local v9    # "headerViewsCount":I
    .end local v10    # "i":I
    .end local v12    # "indicatorRect":Landroid/graphics/Rect;
    .end local v14    # "lastChildFlPos":I
    .end local v15    # "lastItemType":I
    .end local v16    # "myB":I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 292
    .restart local v6    # "childCount":I
    .restart local v7    # "childFlPos":I
    .restart local v8    # "clipToPadding":Z
    .restart local v9    # "headerViewsCount":I
    .restart local v10    # "i":I
    .restart local v12    # "indicatorRect":Landroid/graphics/Rect;
    .restart local v14    # "lastChildFlPos":I
    .restart local v15    # "lastItemType":I
    .restart local v16    # "myB":I
    :cond_5
    if-le v7, v14, :cond_7

    .line 349
    :cond_6
    if-eqz v8, :cond_0

    .line 350
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 297
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListViewMz;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 298
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    .line 299
    .local v21, "t":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 302
    .local v5, "b":I
    if-ltz v5, :cond_3

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v17

    .line 309
    .local v17, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_8

    .line 310
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 320
    :goto_6
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 321
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 323
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Landroid/widget/ExpandableListPosition;->type:I

    .line 326
    :cond_8
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 328
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ExpandableListViewMz;->mStackFromBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 330
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 331
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 338
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListViewMz;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 339
    .local v11, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_9

    .line 341
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 342
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    .end local v11    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    .line 311
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto :goto_4

    .line 313
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto :goto_5

    .line 316
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 333
    :cond_d
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 334
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_7
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 424
    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mFirstPosition:I

    add-int v2, p3, v4

    .line 428
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    .line 429
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v0

    .line 430
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 432
    .local v3, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    .line 435
    :cond_0
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 436
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 437
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 438
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 446
    .end local v0    # "adjustedPosition":I
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_0
    return-void

    .line 441
    .restart local v0    # "adjustedPosition":I
    .restart local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 445
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListViewMz;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 710
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 712
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v4, v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 714
    .local v2, "retValue":Z
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    if-eqz v4, :cond_0

    .line 715
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;->onGroupExpand(I)V

    .line 718
    :cond_0
    if-eqz p2, :cond_1

    .line 719
    iget-object v4, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 721
    .local v0, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v4

    add-int v3, v0, v4

    .line 722
    .local v3, "shiftedGroupPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/ExpandableListViewMz;->smoothScrollToPosition(II)V

    .line 725
    .end local v0    # "groupFlatPos":I
    .end local v3    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 727
    return v2
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 471
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getCheckChildrenItems()[J
    .locals 7

    .prologue
    .line 1517
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v6, :cond_0

    .line 1518
    const/4 v6, 0x0

    .line 1529
    :goto_0
    return-object v6

    .line 1520
    :cond_0
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1521
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v0, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1523
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 1524
    .local v2, "pos":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v5

    .line 1525
    .local v5, "type":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1526
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1522
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1529
    .end local v2    # "pos":J
    .end local v5    # "type":I
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListViewMz;->ArrayListToArray(Ljava/util/ArrayList;)[J

    move-result-object v6

    goto :goto_0
.end method

.method public getCheckGroupItems()[J
    .locals 7

    .prologue
    .line 1497
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v6, :cond_0

    .line 1498
    const/4 v6, 0x0

    .line 1509
    :goto_0
    return-object v6

    .line 1500
    :cond_0
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1501
    .local v4, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    .local v0, "checked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1503
    iget-object v6, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 1504
    .local v2, "pos":J
    invoke-static {v2, v3}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v5

    .line 1505
    .local v5, "type":I
    if-nez v5, :cond_1

    .line 1506
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1509
    .end local v2    # "pos":J
    .end local v5    # "type":I
    :cond_2
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListViewMz;->ArrayListToArray(Ljava/util/ArrayList;)[J

    move-result-object v6

    goto :goto_0
.end method

.method public getCheckItemsCountForAll()I
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1551
    const/4 v0, 0x0

    .line 1553
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckItemsCountForChildren()I
    .locals 8

    .prologue
    .line 1581
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v5, :cond_1

    .line 1582
    const/4 v0, 0x0

    .line 1593
    :cond_0
    return v0

    .line 1584
    :cond_1
    const/4 v0, 0x0

    .line 1585
    .local v0, "cnt":I
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1586
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1587
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1588
    .local v2, "pos":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v4

    .line 1589
    .local v4, "type":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1590
    add-int/lit8 v0, v0, 0x1

    .line 1586
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckItemsCountForGroup()I
    .locals 8

    .prologue
    .line 1561
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v5, :cond_1

    .line 1562
    const/4 v0, 0x0

    .line 1573
    :cond_0
    return v0

    .line 1564
    :cond_1
    const/4 v0, 0x0

    .line 1565
    .local v0, "cnt":I
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1566
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1567
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1568
    .local v2, "pos":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v4

    .line 1569
    .local v4, "type":I
    if-nez v4, :cond_2

    .line 1570
    add-int/lit8 v0, v0, 0x1

    .line 1566
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1299
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 1

    .prologue
    .line 1278
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1284
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItems()[J
    .locals 6

    .prologue
    .line 1480
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v5, :cond_1

    .line 1481
    const/4 v0, 0x0

    .line 1489
    :cond_0
    return-object v0

    .line 1483
    :cond_1
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    .line 1484
    .local v4, "size":I
    new-array v0, v4, [J

    .line 1485
    .local v0, "checked":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1486
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 1487
    .local v2, "pos":J
    aput-wide v2, v0, v1

    .line 1485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .param p1, "flatListPosition"    # I

    .prologue
    .line 850
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListViewMz;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 851
    const-wide v2, 0xffffffffL

    .line 858
    :goto_0
    return-wide v2

    .line 854
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v0

    .line 855
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 856
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 857
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 5
    .param p1, "packedPosition"    # J

    .prologue
    .line 873
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 875
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 876
    .local v0, "flatListPosition":I
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 877
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListViewMz;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getItemsCount()I
    .locals 4

    .prologue
    .line 479
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v3, :cond_1

    .line 480
    const/4 v0, 0x0

    .line 490
    :cond_0
    return v0

    .line 483
    :cond_1
    const/4 v0, 0x0

    .line 485
    .local v0, "count":I
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v1

    .line 486
    .local v1, "groupCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 487
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getLongPressPosition()I
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Landroid/widget/ExpandableListViewMz;->mLongPressPosition:I

    return v0
.end method

.method public getPackedPositionFromUnpackListPosition(I)Landroid/widget/ExpandableListViewMz$PackedPosition;
    .locals 8
    .param p1, "unPackListPosition"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 926
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getItemsCount()I

    move-result v5

    if-lt p1, v5, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-object v4

    .line 930
    :cond_1
    if-nez p1, :cond_2

    .line 931
    new-instance v4, Landroid/widget/ExpandableListViewMz$PackedPosition;

    invoke-direct {v4, v6, v7}, Landroid/widget/ExpandableListViewMz$PackedPosition;-><init>(II)V

    goto :goto_0

    .line 932
    :cond_2
    if-lez p1, :cond_3

    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    if-gt p1, v5, :cond_3

    .line 933
    add-int/lit8 v0, p1, -0x1

    .line 934
    .local v0, "childPosition":I
    new-instance v4, Landroid/widget/ExpandableListViewMz$PackedPosition;

    invoke-direct {v4, v6, v0}, Landroid/widget/ExpandableListViewMz$PackedPosition;-><init>(II)V

    goto :goto_0

    .line 936
    .end local v0    # "childPosition":I
    :cond_3
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v6}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 937
    .local v1, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 938
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    .line 939
    .local v2, "currentGroupChildrenCount":I
    if-gt v1, p1, :cond_5

    add-int v5, v1, v2

    if-gt p1, v5, :cond_5

    .line 940
    if-ne v1, p1, :cond_4

    .line 941
    new-instance v4, Landroid/widget/ExpandableListViewMz$PackedPosition;

    invoke-direct {v4, v3, v7}, Landroid/widget/ExpandableListViewMz$PackedPosition;-><init>(II)V

    goto :goto_0

    .line 943
    :cond_4
    sub-int v4, p1, v1

    add-int/lit8 v0, v4, -0x1

    .line 944
    .restart local v0    # "childPosition":I
    new-instance v4, Landroid/widget/ExpandableListViewMz$PackedPosition;

    invoke-direct {v4, v3, v0}, Landroid/widget/ExpandableListViewMz$PackedPosition;-><init>(II)V

    goto :goto_0

    .line 947
    .end local v0    # "childPosition":I
    :cond_5
    add-int/lit8 v5, v2, 0x1

    add-int/2addr v1, v5

    .line 937
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getSelectedId()J
    .locals 6

    .prologue
    .line 976
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getSelectedPosition()J

    move-result-wide v2

    .line 977
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    .line 986
    :goto_0
    return-wide v4

    .line 979
    :cond_0
    invoke-static {v2, v3}, Landroid/widget/ExpandableListViewMz;->getPackedPositionGroup(J)I

    move-result v0

    .line 981
    .local v0, "groupPos":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 983
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    goto :goto_0

    .line 986
    :cond_1
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Landroid/widget/ExpandableListViewMz;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 4

    .prologue
    .line 962
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getSelectedItemPosition()I

    move-result v0

    .line 965
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUnpackListPosition(J)I
    .locals 7
    .param p1, "packedPosition"    # J

    .prologue
    const/4 v6, 0x1

    .line 887
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v5, :cond_1

    .line 888
    const/4 v1, -0x1

    .line 917
    :cond_0
    :goto_0
    return v1

    .line 891
    :cond_1
    invoke-static {p1, p2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionGroup(J)I

    move-result v2

    .line 892
    .local v2, "groupPosition":I
    invoke-static {p1, p2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionChild(J)I

    move-result v0

    .line 894
    .local v0, "childPosition":I
    const/4 v1, 0x0

    .line 895
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 896
    iget-object v5, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, v3}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 897
    add-int/lit8 v1, v1, 0x1

    .line 895
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 900
    :cond_2
    invoke-static {p1, p2}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v4

    .line 902
    .local v4, "type":I
    if-nez v2, :cond_3

    .line 903
    if-ne v4, v6, :cond_5

    .line 904
    const/4 v1, 0x1

    .line 910
    :cond_3
    :goto_2
    if-ne v4, v6, :cond_0

    .line 911
    if-eqz v2, :cond_4

    .line 912
    add-int/lit8 v1, v1, 0x1

    .line 914
    :cond_4
    add-int/2addr v1, v0

    goto :goto_0

    .line 905
    :cond_5
    if-nez v4, :cond_3

    .line 906
    const/4 v1, 0x0

    goto :goto_2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 625
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 627
    .local v10, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListViewMz;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 630
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 634
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupClickListener:Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupClickListener:Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListViewMz$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListViewMz;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 638
    const/4 v11, 0x1

    .line 687
    :goto_0
    return v11

    .line 642
    :cond_0
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListViewMz;->playSoundEffect(I)V

    .line 648
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 673
    :cond_1
    :goto_1
    const/4 v11, 0x1

    .line 685
    .local v11, "returnValue":Z
    :goto_2
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 653
    .end local v11    # "returnValue":Z
    :cond_2
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListViewMz;->playSoundEffect(I)V

    .line 657
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;->onGroupExpand(I)V

    .line 661
    :cond_3
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 662
    .local v9, "groupPos":I
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 664
    .local v8, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getHeaderViewsCount()I

    move-result v0

    add-int v12, v8, v0

    .line 665
    .local v12, "shiftedGroupPosition":I
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mScrollActionOnGroupExpand:Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;

    if-nez v0, :cond_4

    .line 666
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p0, v0, v12}, Landroid/widget/ExpandableListViewMz;->smoothScrollToPosition(II)V

    goto :goto_1

    .line 669
    :cond_4
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mScrollActionOnGroupExpand:Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;->scrollAfterGroupExpand(I)V

    goto :goto_1

    .line 676
    .end local v8    # "groupFlatPos":I
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_5
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mOnChildClickListener:Landroid/widget/ExpandableListViewMz$OnChildClickListener;

    if-eqz v0, :cond_6

    .line 677
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListViewMz;->playSoundEffect(I)V

    .line 678
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mOnChildClickListener:Landroid/widget/ExpandableListViewMz$OnChildClickListener;

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListViewMz$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListViewMz;Landroid/view/View;IIJ)Z

    move-result v11

    goto :goto_0

    .line 682
    :cond_6
    const/4 v11, 0x0

    .restart local v11    # "returnValue":Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1304
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1307
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isMultiChoiceEnable()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceEnable:Z

    return v0
.end method

.method public isPackedPositionChecked(J)Z
    .locals 3
    .param p1, "packedPos"    # J

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected mzIsHeaderOrFooter(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 1608
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    instance-of v2, v2, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    if-eqz v2, :cond_1

    .line 1609
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    check-cast v0, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;

    .line 1610
    .local v0, "adaptermz":Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v2, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    iget-object v1, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1611
    .local v1, "pos":Landroid/widget/ExpandableListPosition;
    if-nez v1, :cond_0

    .line 1612
    invoke-interface {v0, p1, v3, v3}, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;->isHeaderOrFooter(III)Z

    move-result v2

    .line 1617
    .end local v0    # "adaptermz":Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .end local v1    # "pos":Landroid/widget/ExpandableListPosition;
    :goto_0
    return v2

    .line 1614
    .restart local v0    # "adaptermz":Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .restart local v1    # "pos":Landroid/widget/ExpandableListPosition;
    :cond_0
    iget v2, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v3, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, p1, v2, v3}, Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;->isHeaderOrFooter(III)Z

    move-result v2

    goto :goto_0

    .line 1617
    .end local v0    # "adaptermz":Landroid/widget/ExpandableListViewMz$ExpandableListAdapterMz;
    .end local v1    # "pos":Landroid/widget/ExpandableListPosition;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->mzIsHeaderOrFooter(I)Z

    move-result v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1735
    instance-of v1, p1, Landroid/widget/ExpandableListViewMz$SavedState;

    if-nez v1, :cond_1

    .line 1736
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1746
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1740
    check-cast v0, Landroid/widget/ExpandableListViewMz$SavedState;

    .line 1741
    .local v0, "ss":Landroid/widget/ExpandableListViewMz$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListViewMz$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1743
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/ExpandableListViewMz$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1744
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    iget-object v2, v0, Landroid/widget/ExpandableListViewMz$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1728
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1729
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Landroid/widget/ExpandableListViewMz$SavedState;

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Landroid/widget/ExpandableListViewMz$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 572
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v5

    .line 613
    :cond_0
    :goto_0
    return v5

    .line 577
    :cond_1
    const/4 v1, 0x0

    .line 579
    .local v1, "handled":Z
    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    if-eqz v4, :cond_5

    .line 580
    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_6

    :cond_2
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_6

    .line 584
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v0

    .line 585
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 587
    .local v3, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v4, v5, :cond_4

    .line 588
    const/4 v1, 0x1

    .line 589
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p2}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v6

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6, v7, v8}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    move v2, v5

    .line 592
    .local v2, "newValue":Z
    :cond_3
    invoke-virtual {p0, p2, v2}, Landroid/widget/ExpandableListViewMz;->setItemChecked(IZ)V

    .line 602
    .end local v0    # "adjustedPosition":I
    .end local v2    # "newValue":Z
    .end local v3    # "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_4
    :goto_1
    iput-boolean v5, p0, Landroid/widget/ExpandableListViewMz;->mDataChanged:Z

    .line 603
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->rememberSyncState()V

    .line 604
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->requestLayout()V

    .line 607
    :cond_5
    if-nez v1, :cond_0

    .line 612
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListViewMz;->getFlatPositionForConnector(I)I

    move-result v0

    .line 613
    .restart local v0    # "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListViewMz;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v5

    goto :goto_0

    .line 594
    .end local v0    # "adjustedPosition":I
    :cond_6
    iget v4, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    if-ne v4, v5, :cond_4

    .line 595
    const/4 v1, 0x1

    .line 596
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 597
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p2}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v6

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6, v7, v8}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    move v2, v5

    .line 599
    .restart local v2    # "newValue":Z
    :cond_7
    invoke-virtual {p0, p2, v2}, Landroid/widget/ExpandableListViewMz;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    .line 566
    iput p2, p0, Landroid/widget/ExpandableListViewMz;->mLongPressPosition:I

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 84
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 512
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 514
    if-eqz p1, :cond_0

    .line 516
    new-instance v0, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    .line 522
    :goto_0
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 456
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 419
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 420
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1191
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1192
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1206
    iput p1, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorLeft:I

    .line 1207
    iput p2, p0, Landroid/widget/ExpandableListViewMz;->mChildIndicatorRight:I

    .line 1208
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .param p1, "choiceMode"    # I

    .prologue
    .line 1376
    invoke-super {p0, p1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1378
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1379
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    .line 1381
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1382
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    .line 1383
    return-void
.end method

.method public setGroupChecked(IZ)V
    .locals 5
    .param p1, "groupPos"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 1433
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-nez v4, :cond_0

    .line 1443
    :goto_0
    return-void

    .line 1435
    :cond_0
    iget-object v4, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 1437
    .local v0, "childCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1438
    invoke-static {p1, v1}, Landroid/widget/ExpandableListViewMz;->getPackedPositionForChild(II)J

    move-result-wide v2

    .line 1439
    .local v2, "packedPos":J
    invoke-virtual {p0, v2, v3, p2}, Landroid/widget/ExpandableListViewMz;->setPackedPositionChecked(JZ)V

    .line 1437
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1442
    .end local v2    # "packedPos":J
    :cond_1
    invoke-direct {p0}, Landroid/widget/ExpandableListViewMz;->updateFlatCheckStates()V

    goto :goto_0
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1219
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1220
    iget v0, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1221
    iget v0, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    .line 1223
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1237
    iput p1, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorLeft:I

    .line 1238
    iput p2, p0, Landroid/widget/ExpandableListViewMz;->mIndicatorRight:I

    .line 1239
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1312
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz;->getExpandableListPosition(I)J

    move-result-wide v8

    .line 1313
    .local v8, "packedPos":J
    invoke-virtual {p0}, Landroid/widget/ExpandableListViewMz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.browser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1314
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1316
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_0

    .line 1317
    if-eqz p2, :cond_2

    .line 1318
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v8, v9, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1319
    iget v1, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    .line 1336
    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/widget/ExpandableListViewMz;->getPackedPositionType(J)I

    move-result v0

    .line 1337
    .local v0, "type":I
    if-nez v0, :cond_4

    .line 1338
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mGroupCheckListener:Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

    if-eqz v1, :cond_1

    .line 1339
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mGroupCheckListener:Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

    invoke-static {v8, v9}, Landroid/widget/ExpandableListViewMz;->getPackedPositionGroup(J)I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Landroid/widget/ExpandableListViewMz$onGroupCheckListener;->onGroupCheck(IIZ)V

    .line 1340
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 1342
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v4

    .line 1343
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1359
    .end local v4    # "id":J
    :cond_1
    :goto_1
    return-void

    .line 1321
    .end local v0    # "type":I
    :cond_2
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8, v9}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1322
    iget v1, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    goto :goto_0

    .line 1326
    :cond_3
    invoke-virtual {p0, v8, v9, p2}, Landroid/widget/ExpandableListViewMz;->setPackedPositionChecked(JZ)V

    .line 1327
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 1347
    .restart local v0    # "type":I
    :cond_4
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 1348
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChildCheckListener:Landroid/widget/ExpandableListViewMz$onChildCheckListener;

    if-eqz v1, :cond_1

    .line 1349
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChildCheckListener:Landroid/widget/ExpandableListViewMz$onChildCheckListener;

    invoke-static {v8, v9}, Landroid/widget/ExpandableListViewMz;->getPackedPositionGroup(J)I

    move-result v2

    invoke-static {v8, v9}, Landroid/widget/ExpandableListViewMz;->getPackedPositionChild(J)I

    move-result v3

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/widget/ExpandableListViewMz$onChildCheckListener;->onChildCheck(IIIZ)V

    .line 1351
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    .line 1353
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v4

    .line 1354
    .restart local v4    # "id":J
    iget-object v1, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    goto :goto_1
.end method

.method public setMultiChoiceEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Landroid/widget/ExpandableListViewMz;->mMultiChoiceEnable:Z

    .line 401
    return-void
.end method

.method public setOnChildCheckListener(Landroid/widget/ExpandableListViewMz$onChildCheckListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ExpandableListViewMz$onChildCheckListener;

    .prologue
    .line 1629
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mChildCheckListener:Landroid/widget/ExpandableListViewMz$onChildCheckListener;

    .line 1630
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListViewMz$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListViewMz$OnChildClickListener;

    .prologue
    .line 832
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mOnChildClickListener:Landroid/widget/ExpandableListViewMz$OnChildClickListener;

    .line 833
    return-void
.end method

.method public setOnGroupCheckListener(Landroid/widget/ExpandableListViewMz$onGroupCheckListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

    .prologue
    .line 1625
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mGroupCheckListener:Landroid/widget/ExpandableListViewMz$onGroupCheckListener;

    .line 1626
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListViewMz$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

    .prologue
    .line 805
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupClickListener:Landroid/widget/ExpandableListViewMz$OnGroupClickListener;

    .line 806
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    .prologue
    .line 762
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupCollapseListener:Landroid/widget/ExpandableListViewMz$OnGroupCollapseListener;

    .line 763
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    .prologue
    .line 780
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mOnGroupExpandListener:Landroid/widget/ExpandableListViewMz$OnGroupExpandListener;

    .line 781
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 503
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 504
    return-void
.end method

.method public setPackedPositionChecked(JZ)V
    .locals 7
    .param p1, "packedPos"    # J
    .param p3, "checked"    # Z

    .prologue
    .line 1389
    const-wide v2, 0xffffffffL

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    .line 1393
    if-eqz p3, :cond_5

    .line 1394
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1395
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    .line 1403
    :cond_2
    :goto_1
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mChoiceMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1406
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/ExpandableListViewMz;->getUnpackListPosition(J)I

    move-result v0

    .line 1407
    .local v0, "extractPosition":I
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 1408
    .local v1, "oldValue":Z
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1410
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1411
    if-eqz p3, :cond_6

    .line 1412
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1418
    :cond_4
    :goto_2
    if-eq v1, p3, :cond_0

    .line 1419
    if-eqz p3, :cond_7

    .line 1420
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    goto :goto_0

    .line 1397
    .end local v0    # "extractPosition":I
    .end local v1    # "oldValue":Z
    :cond_5
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 1398
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/ExpandableListViewMz;->mPackedCheckedItemCount:I

    goto :goto_1

    .line 1414
    .restart local v0    # "extractPosition":I
    .restart local v1    # "oldValue":Z
    :cond_6
    iget-object v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_2

    .line 1422
    :cond_7
    iget v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/ExpandableListViewMz;->mCheckedItemCount:I

    goto :goto_0
.end method

.method public setScrollActionOnGroupExpand(Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;)V
    .locals 0
    .param p1, "action"    # Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;

    .prologue
    .line 1643
    iput-object p1, p0, Landroid/widget/ExpandableListViewMz;->mScrollActionOnGroupExpand:Landroid/widget/ExpandableListViewMz$scrollActionOnGroupExpand;

    .line 1644
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 1016
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 1018
    .local v1, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1020
    .local v2, "flatChildPos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 1024
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 1042
    :goto_0
    return v3

    .line 1026
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListViewMz;->expandGroup(I)Z

    .line 1028
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1031
    if-nez v2, :cond_1

    .line 1032
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1036
    :cond_1
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListViewMz;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1037
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1039
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1040
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1042
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 995
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 997
    .local v1, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListViewMz;->mConnector:Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListViewMz$ExpandableListConnectorMz;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 998
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 999
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListViewMz;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1000
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1001
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1002
    return-void
.end method
