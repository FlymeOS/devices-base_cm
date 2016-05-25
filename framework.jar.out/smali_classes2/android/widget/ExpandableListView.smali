.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$1;,
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
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

.field private static final INDICATOR_UNDEFINED:I = -0x2

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

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-array v0, v3, [I

    sput-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 194
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 198
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 202
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 206
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 214
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 202
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
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 228
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 221
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 239
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 246
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 248
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 250
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 251
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 253
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 256
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 259
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 262
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 266
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 270
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 273
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 278
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    .prologue
    .line 1146
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1147
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1149
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 632
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

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

    .line 482
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 483
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 485
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 489
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v7, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v8, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 492
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

    .line 495
    .local v3, "stateSetIndex":I
    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 509
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 489
    goto :goto_0

    .restart local v1    # "isEmpty":Z
    :cond_4
    move v5, v4

    .line 492
    goto :goto_1

    .line 498
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_5
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 500
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 502
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 505
    .local v2, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 502
    .end local v2    # "stateSet":[I
    :cond_6
    sget-object v2, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, -0x1

    .line 1074
    cmp-long v1, p0, v6

    if-nez v1, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return v0

    .line 1077
    :cond_1
    and-long v2, p0, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1079
    and-long v0, p0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 1099
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
    .line 1114
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
    .line 1055
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1057
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

    .line 1035
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1036
    const/4 v0, 0x2

    .line 1039
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

.method private hasRtlSupport()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 620
    iget v1, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 621
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

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

.method private isRtlCompatibilityMode()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 287
    .local v1, "targetSdkVersion":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    move v0, v3

    .line 289
    .local v0, "isSystemApp":Z
    :goto_0
    const/16 v4, 0x11

    if-ge v1, v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "isSystemApp":Z
    :cond_3
    move v0, v2

    .line 287
    goto :goto_0
.end method

.method private resolveChildIndicator()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 335
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 336
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_2

    .line 337
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_0

    .line 338
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 340
    :cond_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    .line 341
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_3

    .line 345
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 347
    :cond_3
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    .line 348
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    goto :goto_0
.end method

.method private resolveIndicator()V
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 310
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_3

    .line 311
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    .line 312
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 314
    :cond_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    .line 315
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 325
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 326
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 328
    :cond_2
    return-void

    .line 318
    :cond_3
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_4

    .line 319
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 321
    :cond_4
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    .line 322
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 779
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 781
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 785
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 1120
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1134
    :goto_0
    return-object v0

    .line 1125
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1126
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1127
    .local v7, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1129
    .local v8, "pos":Landroid/widget/ExpandableListPosition;
    invoke-direct {p0, v8}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 1130
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1132
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1134
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 356
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const/16 v19, 0x0

    .line 364
    .local v19, "saveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x22

    const/16 v25, 0x22

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 365
    .local v8, "clipToPadding":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    move/from16 v20, v0

    .line 368
    .local v20, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    move/from16 v21, v0

    .line 369
    .local v21, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v24, v0

    add-int v24, v24, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    move/from16 v25, v0

    add-int v25, v25, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mRight:I

    move/from16 v26, v0

    add-int v26, v26, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mLeft:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mBottom:I

    move/from16 v27, v0

    add-int v27, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mTop:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 374
    .end local v20    # "scrollX":I
    .end local v21    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 376
    .local v9, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v25

    sub-int v24, v24, v25

    sub-int v24, v24, v9

    add-int/lit8 v15, v24, -0x1

    .line 378
    .local v15, "lastChildFlPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mBottom:I

    move/from16 v17, v0

    .line 386
    .local v17, "myB":I
    const/16 v16, -0x4

    .line 388
    .local v16, "lastItemType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 393
    .local v12, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v6

    .line 394
    .local v6, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    move/from16 v24, v0

    sub-int v7, v24, v9

    .local v7, "childFlPos":I
    :goto_2
    if-ge v10, v6, :cond_6

    .line 397
    if-gez v7, :cond_5

    .line 395
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 364
    .end local v6    # "childCount":I
    .end local v7    # "childFlPos":I
    .end local v8    # "clipToPadding":Z
    .end local v9    # "headerViewsCount":I
    .end local v10    # "i":I
    .end local v12    # "indicatorRect":Landroid/graphics/Rect;
    .end local v15    # "lastChildFlPos":I
    .end local v16    # "lastItemType":I
    .end local v17    # "myB":I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 400
    .restart local v6    # "childCount":I
    .restart local v7    # "childFlPos":I
    .restart local v8    # "clipToPadding":Z
    .restart local v9    # "headerViewsCount":I
    .restart local v10    # "i":I
    .restart local v12    # "indicatorRect":Landroid/graphics/Rect;
    .restart local v15    # "lastChildFlPos":I
    .restart local v16    # "lastItemType":I
    .restart local v17    # "myB":I
    :cond_5
    if-le v7, v15, :cond_7

    .line 466
    :cond_6
    if-eqz v8, :cond_0

    .line 467
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 405
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 406
    .local v14, "item":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v22

    .line 407
    .local v22, "t":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 410
    .local v5, "b":I
    if-ltz v5, :cond_3

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v18

    .line 415
    .local v18, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v13

    .line 416
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v23

    .line 420
    .local v23, "width":I
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 421
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 422
    if-eqz v13, :cond_c

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    :goto_4
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    :goto_5
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 438
    :goto_6
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    :goto_7
    add-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 439
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    :goto_8
    add-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 441
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v16, v0

    .line 444
    :cond_8
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 446
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 448
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 449
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 456
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 457
    .local v11, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_9

    .line 459
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 460
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 463
    .end local v11    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    .line 423
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    goto/16 :goto_4

    .line 425
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    goto/16 :goto_5

    .line 428
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v24, v0

    :goto_a
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 430
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v24, v0

    :goto_b
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    .line 428
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v24, v0

    goto :goto_a

    .line 430
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v24, v0

    goto :goto_b

    .line 434
    :cond_f
    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v24, v0

    sub-int v24, v23, v24

    :goto_c
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 435
    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v24, v0

    sub-int v24, v23, v24

    :goto_d
    move/from16 v0, v24

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    .line 434
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v24, v0

    goto :goto_c

    .line 435
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v24, v0

    goto :goto_d

    .line 438
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v24, v0

    goto/16 :goto_7

    .line 439
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v24, v0

    goto/16 :goto_8

    .line 451
    :cond_14
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 452
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 525
    iget v4, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 529
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    .line 530
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 531
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 533
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

    .line 536
    :cond_0
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 537
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 538
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 539
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 547
    .end local v0    # "adjustedPosition":I
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_0
    return-void

    .line 542
    .restart local v0    # "adjustedPosition":I
    .restart local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 546
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
    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 749
    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 751
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 752
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 753
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v3

    .line 755
    .local v3, "retValue":Z
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_0

    .line 756
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 759
    :cond_0
    if-eqz p2, :cond_1

    .line 760
    iget-object v5, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v5, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 762
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    .line 763
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 766
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 768
    return v3
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 572
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .param p1, "flatListPosition"    # I

    .prologue
    .line 891
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 892
    const-wide v2, 0xffffffffL

    .line 899
    :goto_0
    return-wide v2

    .line 895
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 896
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 897
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 898
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 5
    .param p1, "packedPosition"    # J

    .prologue
    .line 914
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 916
    .local v0, "elPackedPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 917
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 918
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 919
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 920
    invoke-direct {p0, v1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 6

    .prologue
    .line 946
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    .line 947
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    .line 956
    :goto_0
    return-wide v4

    .line 949
    :cond_0
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 951
    .local v0, "groupPos":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 953
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    goto :goto_0

    .line 956
    :cond_1
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 4

    .prologue
    .line 932
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 935
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 668
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 670
    .local v10, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 673
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 677
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 681
    const/4 v11, 0x1

    .line 726
    :goto_0
    return v11

    .line 685
    :cond_0
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 691
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 712
    :cond_1
    :goto_1
    const/4 v11, 0x1

    .line 724
    .local v11, "returnValue":Z
    :goto_2
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 696
    .end local v11    # "returnValue":Z
    :cond_2
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 698
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 700
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_3

    .line 701
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 704
    :cond_3
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 705
    .local v9, "groupPos":I
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 707
    .local v8, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v12, v8, v0

    .line 708
    .local v12, "shiftedGroupPosition":I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p0, v0, v12}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_1

    .line 715
    .end local v8    # "groupFlatPos":I
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_4
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_5

    .line 716
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 717
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v11

    goto :goto_0

    .line 721
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "returnValue":Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 1022
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1347
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1348
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1349
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1353
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1354
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1355
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1332
    instance-of v1, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 1333
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1343
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1337
    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    .line 1338
    .local v0, "ss":Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1340
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1341
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v2, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 301
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 302
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1325
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1326
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Landroid/widget/ExpandableListView$SavedState;

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 649
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 656
    :goto_0
    return v1

    .line 655
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 656
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 594
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 596
    if-eqz p1, :cond_0

    .line 598
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 604
    :goto_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 605
    return-void

    .line 600
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 520
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 521
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1161
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1162
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1176
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1177
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1178
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1179
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1193
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 1194
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 1195
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1196
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1207
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1208
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1209
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1211
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1225
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1226
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1227
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1228
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1242
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 1243
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 1244
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1245
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    .prologue
    .line 873
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 874
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .prologue
    .line 846
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 847
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 803
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 804
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .prologue
    .line 821
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 822
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 585
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 586
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 986
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 988
    .local v1, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 990
    .local v2, "flatChildPos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 994
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 1012
    :goto_0
    return v3

    .line 996
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 998
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1001
    if-nez v2, :cond_1

    .line 1002
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1006
    :cond_1
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1007
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1009
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1010
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1012
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 965
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 967
    .local v1, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 968
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 969
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 970
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 971
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 972
    return-void
.end method
