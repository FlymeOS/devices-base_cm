.class Landroid/widget/SimpleMonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleMonthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;
    }
.end annotation


# instance fields
.field private mCalendarTextColors:Landroid/content/res/ColorStateList;

.field private final mContext:Landroid/content/Context;

.field private mFirstDayOfWeek:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private final mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 41
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    .line 197
    new-instance v0, Landroid/widget/SimpleMonthAdapter$1;

    invoke-direct {v0, p0}, Landroid/widget/SimpleMonthAdapter$1;-><init>(Landroid/widget/SimpleMonthAdapter;)V

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 47
    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SimpleMonthAdapter;Ljava/util/Calendar;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthAdapter;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthAdapter;->isCalendarInRange(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SimpleMonthAdapter;)Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SimpleMonthAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    return-object v0
.end method

.method private isCalendarInRange(Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "value"    # Ljava/util/Calendar;

    .prologue
    .line 194
    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectedDayInMonth(II)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/4 v0, 0x1

    .line 190
    iget-object v1, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 111
    iget-object v2, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 112
    .local v1, "diffYear":I
    iget-object v2, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 113
    .local v0, "diffMonth":I
    mul-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/widget/SimpleMonthAdapter;->mFirstDayOfWeek:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 135
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 136
    check-cast v0, Landroid/widget/SimpleMonthView;

    .line 152
    .local v0, "v":Landroid/widget/SimpleMonthView;
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 153
    .local v8, "minMonth":I
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 154
    .local v9, "minYear":I
    add-int v7, p1, v8

    .line 155
    .local v7, "currentMonth":I
    rem-int/lit8 v2, v7, 0xc

    .line 156
    .local v2, "month":I
    div-int/lit8 v4, v7, 0xc

    add-int v3, v4, v9

    .line 158
    .local v3, "year":I
    invoke-direct {p0, v3, v2}, Landroid/widget/SimpleMonthAdapter;->isSelectedDayInMonth(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 166
    .local v1, "selectedDay":I
    :goto_1
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->reuse()V

    .line 169
    if-ne v8, v2, :cond_3

    if-ne v9, v3, :cond_3

    .line 170
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 176
    .local v5, "enabledDayRangeStart":I
    :goto_2
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 177
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 182
    .local v6, "enabledDayRangeEnd":I
    :goto_3
    iget v4, p0, Landroid/widget/SimpleMonthAdapter;->mFirstDayOfWeek:I

    invoke-virtual/range {v0 .. v6}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 184
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->invalidate()V

    .line 186
    return-object v0

    .line 138
    .end local v0    # "v":Landroid/widget/SimpleMonthView;
    .end local v1    # "selectedDay":I
    .end local v2    # "month":I
    .end local v3    # "year":I
    .end local v5    # "enabledDayRangeStart":I
    .end local v6    # "enabledDayRangeEnd":I
    .end local v7    # "currentMonth":I
    .end local v8    # "minMonth":I
    .end local v9    # "minYear":I
    :cond_1
    new-instance v0, Landroid/widget/SimpleMonthView;

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 141
    .restart local v0    # "v":Landroid/widget/SimpleMonthView;
    new-instance v10, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v11, -0x1

    invoke-direct {v10, v4, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 143
    .local v10, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v10}, Landroid/widget/SimpleMonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setClickable(Z)V

    .line 145
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    .line 147
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 161
    .end local v10    # "params":Landroid/widget/AbsListView$LayoutParams;
    .restart local v2    # "month":I
    .restart local v3    # "year":I
    .restart local v7    # "currentMonth":I
    .restart local v8    # "minMonth":I
    .restart local v9    # "minYear":I
    :cond_2
    const/4 v1, -0x1

    .restart local v1    # "selectedDay":I
    goto :goto_1

    .line 172
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "enabledDayRangeStart":I
    goto :goto_2

    .line 179
    :cond_4
    const/16 v6, 0x1f

    .restart local v6    # "enabledDayRangeEnd":I
    goto :goto_3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method setCalendarTextAppearance(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 97
    iget-object v2, p0, Landroid/widget/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 100
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 101
    iput-object v1, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    .line 89
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 58
    iput p1, p0, Landroid/widget/SimpleMonthAdapter;->mFirstDayOfWeek:I

    .line 60
    invoke-virtual {p0}, Landroid/widget/SimpleMonthAdapter;->notifyDataSetInvalidated()V

    .line 61
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter;->mOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    .line 85
    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4
    .param p1, "min"    # Ljava/util/Calendar;
    .param p2, "max"    # Ljava/util/Calendar;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 52
    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    invoke-virtual {p0}, Landroid/widget/SimpleMonthAdapter;->notifyDataSetInvalidated()V

    .line 55
    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    .line 75
    invoke-virtual {p0}, Landroid/widget/SimpleMonthAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method
