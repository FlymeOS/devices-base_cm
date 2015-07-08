.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field private mSimSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 3895
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 3893
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    .line 3896
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 3898
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 3893
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    .line 3899
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 3900
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 14

    .prologue
    .line 3954
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1300(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 3955
    .local v6, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Landroid/app/Notification$Builder;->access$1302(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3957
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getInboxLayoutResource()I
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 3959
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11, v6}, Landroid/app/Notification$Builder;->access$1302(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3961
    const v11, 0x1020015

    const/16 v12, 0x8

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3963
    const/4 v11, 0x7

    new-array v8, v11, [I

    fill-array-data v8, :array_0

    .line 3967
    .local v8, "rowIds":[I
    move-object v0, v8

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget v7, v0, v3

    .line 3968
    .local v7, "rowId":I
    const/16 v11, 0x8

    invoke-virtual {v1, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3967
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3971
    .end local v7    # "rowId":I
    :cond_0
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    const/4 v4, 0x1

    .line 3973
    .local v4, "largeText":Z
    :goto_1
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1050054

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v10, v11

    .line 3975
    .local v10, "subTextSize":F
    const/4 v2, 0x0

    .line 3976
    .local v2, "i":I
    :goto_2
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_3

    array-length v11, v8

    if-ge v2, v11, :cond_3

    .line 3977
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 3978
    .local v9, "str":Ljava/lang/CharSequence;
    if-eqz v9, :cond_1

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 3979
    aget v11, v8, v2

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3980
    aget v11, v8, v2

    iget-object v12, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v12, v9}, Landroid/app/Notification$Builder;->access$900(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3981
    if-eqz v4, :cond_1

    .line 3982
    aget v11, v8, v2

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v10}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 3986
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 3987
    goto :goto_2

    .line 3971
    .end local v2    # "i":I
    .end local v4    # "largeText":Z
    .end local v9    # "str":Ljava/lang/CharSequence;
    .end local v10    # "subTextSize":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 3989
    .restart local v2    # "i":I
    .restart local v4    # "largeText":Z
    .restart local v10    # "subTextSize":F
    :cond_3
    const v12, 0x1020341

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v1, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3992
    const v12, 0x1020340

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v13, v8

    if-le v11, v13, :cond_5

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v1, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3995
    invoke-virtual {p0, v1}, Landroid/app/Notification$InboxStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 3997
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V
    invoke-static {v11, v1}, Landroid/app/Notification$Builder;->access$1700(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 3999
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v12, 0x1020334

    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v11, v1, v12}, Landroid/app/Notification$Builder;->access$1400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    invoke-virtual {p0, v1}, Landroid/app/Notification$InboxStyle;->makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V

    .line 4001
    return-object v1

    .line 3989
    :cond_4
    const/16 v11, 0x8

    goto :goto_3

    .line 3992
    :cond_5
    const/16 v11, 0x8

    goto :goto_4

    .line 3963
    nop

    :array_0
    .array-data 4
        0x1020339
        0x102033a
        0x102033b
        0x102033c
        0x102033d
        0x102033e
        0x102033f
    .end array-data
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3931
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 3933
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 3934
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string v2, "android.textLines"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p1}, Landroid/app/Notification$InboxStyle;->putExtrasIntegerArrayList(Landroid/os/Bundle;)V

    .line 3935
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 3923
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$InboxStyle;->addSimSlotHide()V

    .line 3924
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4009
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1500(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4010
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3942
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 3944
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3945
    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3946
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    const-string v1, "android.textLines"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3948
    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 3907
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 3908
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 3915
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 3916
    return-object p0
.end method

.method private addSimSlotHide()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    sget v1, Landroid/app/NotificationBuilderExt;->SIM_SLOT_HIDE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private putExtrasIntegerArrayList(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "android.simSlots"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;I)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "slotId"    # I

    .prologue
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3924
    return-object p0
.end method

.method public makeBigContentViewFlyme(Landroid/widget/RemoteViews;)V
    .locals 18
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    sget v2, Lcom/flyme/internal/R$id;->text2:I

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v2, 0x7

    new-array v14, v2, [I

    const/4 v2, 0x0

    sget v3, Lcom/flyme/internal/R$id;->inbox_text0:I

    aput v3, v14, v2

    const/4 v2, 0x1

    sget v3, Lcom/flyme/internal/R$id;->inbox_text1:I

    aput v3, v14, v2

    const/4 v2, 0x2

    sget v3, Lcom/flyme/internal/R$id;->inbox_text2:I

    aput v3, v14, v2

    const/4 v2, 0x3

    sget v3, Lcom/flyme/internal/R$id;->inbox_text3:I

    aput v3, v14, v2

    const/4 v2, 0x4

    sget v3, Lcom/flyme/internal/R$id;->inbox_text4:I

    aput v3, v14, v2

    const/4 v2, 0x5

    sget v3, Lcom/flyme/internal/R$id;->inbox_text5:I

    aput v3, v14, v2

    const/4 v2, 0x6

    sget v3, Lcom/flyme/internal/R$id;->inbox_text6:I

    aput v3, v14, v2

    .local v14, "rowIds":[I
    move-object v8, v14

    .local v8, "arr$":[I
    array-length v12, v8

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_0

    aget v13, v8, v10

    .local v13, "rowId":I
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v13    # "rowId":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v11, 0x1

    .local v11, "largeText":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->mzGetFieldContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:dimen@notification_subtext_size#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    move/from16 v17, v0

    .local v17, "subTextSize":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_7

    array-length v2, v14

    if-ge v9, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    .local v16, "str":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mSimSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .local v15, "simSlot":Ljava/lang/Integer;
    if-eqz v16, :cond_2

    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget v2, v14, v9

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    aget v2, v14, v9

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->mzInvokeMethodProcessLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz v11, :cond_1

    aget v2, v14, v9

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_1
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Landroid/app/NotificationBuilderExt;->SIM_SLOT_0:I

    if-ne v2, v3, :cond_4

    aget v3, v14, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/flyme/internal/R$drawable;->sim1_notice_m:I

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v9    # "i":I
    .end local v11    # "largeText":Z
    .end local v15    # "simSlot":Ljava/lang/Integer;
    .end local v16    # "str":Ljava/lang/CharSequence;
    .end local v17    # "subTextSize":F
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v9    # "i":I
    .restart local v11    # "largeText":Z
    .restart local v15    # "simSlot":Ljava/lang/Integer;
    .restart local v16    # "str":Ljava/lang/CharSequence;
    .restart local v17    # "subTextSize":F
    :cond_4
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Landroid/app/NotificationBuilderExt;->SIM_SLOT_1:I

    if-ne v2, v3, :cond_5

    aget v3, v14, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/flyme/internal/R$drawable;->sim2_notice_m:I

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    :cond_5
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Landroid/app/NotificationBuilderExt;->SIM_SLOT_UNKNOWN:I

    if-ne v2, v3, :cond_6

    aget v3, v14, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/flyme/internal/R$drawable;->nosim_notice_m:I

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    :cond_6
    aget v3, v14, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_3

    .end local v15    # "simSlot":Ljava/lang/Integer;
    .end local v16    # "str":Ljava/lang/CharSequence;
    :cond_7
    sget v3, Lcom/flyme/internal/R$id;->inbox_end_pad:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/flyme/internal/R$id;->inbox_more:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v4, v14

    if-le v2, v4, :cond_9

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4010
    return-void

    :cond_8
    const/16 v2, 0x8

    goto :goto_4

    :cond_9
    const/16 v2, 0x8

    goto :goto_5
.end method
