.class Landroid/widget/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearAdapter"
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I = 0x1090102

.field private static final ITEM_TEXT_ACTIVATED_APPEARANCE:I = 0x1030426

.field private static final ITEM_TEXT_APPEARANCE:I = 0x1030425


# instance fields
.field private mActivatedYear:I

.field private mCount:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMinYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 127
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionForYear(I)I
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 167
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    sub-int v0, p1, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    if-nez p2, :cond_2

    const/4 v1, 0x1

    .line 183
    .local v1, "hasNewView":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 184
    iget-object v5, p0, Landroid/widget/YearPickerView$YearAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090102

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 189
    .local v3, "v":Landroid/widget/TextView;
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    move-result v4

    .line 190
    .local v4, "year":I
    iget v5, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-ne v5, v4, :cond_4

    const/4 v0, 0x1

    .line 192
    .local v0, "activated":Z
    :goto_2
    if-nez v1, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->isActivated()Z

    move-result v5

    if-eq v5, v0, :cond_1

    .line 194
    :cond_0
    if-eqz v0, :cond_5

    .line 195
    const v2, 0x1030426

    .line 199
    .local v2, "textAppearanceResId":I
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 200
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 203
    .end local v2    # "textAppearanceResId":I
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-object v3

    .line 182
    .end local v0    # "activated":Z
    .end local v1    # "hasNewView":Z
    .end local v3    # "v":Landroid/widget/TextView;
    .end local v4    # "year":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "hasNewView":Z
    goto :goto_0

    :cond_3
    move-object v3, p2

    .line 186
    check-cast v3, Landroid/widget/TextView;

    .restart local v3    # "v":Landroid/widget/TextView;
    goto :goto_1

    .line 190
    .restart local v4    # "year":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "activated":Z
    goto :goto_2

    .line 197
    :cond_5
    const v2, 0x1030425

    .restart local v2    # "textAppearanceResId":I
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public getYearForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 171
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    add-int/2addr v0, p1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 3
    .param p1, "minDate"    # Ljava/util/Calendar;
    .param p2, "maxDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 133
    .local v1, "minYear":I
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v0, v2, 0x1

    .line 135
    .local v0, "count":I
    iget v2, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    if-eq v2, v0, :cond_1

    .line 136
    :cond_0
    iput v1, p0, Landroid/widget/YearPickerView$YearAdapter;->mMinYear:I

    .line 137
    iput v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mCount:I

    .line 138
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetInvalidated()V

    .line 131
    :cond_1
    return-void
.end method

.method public setSelection(I)Z
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 143
    iget v0, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    if-eq v0, p1, :cond_0

    .line 144
    iput p1, p0, Landroid/widget/YearPickerView$YearAdapter;->mActivatedYear:I

    .line 145
    invoke-virtual {p0}, Landroid/widget/YearPickerView$YearAdapter;->notifyDataSetChanged()V

    .line 146
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
