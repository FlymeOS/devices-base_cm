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
    .line 4016
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4014
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 4017
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4019
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4014
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 4020
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4021
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 14

    .prologue
    .line 4075
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1400(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 4076
    .local v6, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11, v12}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4078
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getInboxLayoutResource()I
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$2000(Landroid/app/Notification$Builder;)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 4080
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v11, v6}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4082
    const v11, 0x1020015

    const/16 v12, 0x8

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4084
    const/4 v11, 0x7

    new-array v8, v11, [I

    fill-array-data v8, :array_0

    .line 4088
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

    .line 4089
    .local v7, "rowId":I
    const/16 v11, 0x8

    invoke-virtual {v1, v7, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4088
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4092
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

    .line 4094
    .local v4, "largeText":Z
    :goto_1
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v11}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1050056

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v10, v11

    .line 4096
    .local v10, "subTextSize":F
    const/4 v2, 0x0

    .line 4097
    .local v2, "i":I
    :goto_2
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_3

    array-length v11, v8

    if-ge v2, v11, :cond_3

    .line 4098
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 4099
    .local v9, "str":Ljava/lang/CharSequence;
    if-eqz v9, :cond_1

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 4100
    aget v11, v8, v2

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4101
    aget v11, v8, v2

    iget-object v12, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v12, v9}, Landroid/app/Notification$Builder;->access$900(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4102
    if-eqz v4, :cond_1

    .line 4103
    aget v11, v8, v2

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v10}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 4107
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 4108
    goto :goto_2

    .line 4092
    .end local v2    # "i":I
    .end local v4    # "largeText":Z
    .end local v9    # "str":Ljava/lang/CharSequence;
    .end local v10    # "subTextSize":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 4110
    .restart local v2    # "i":I
    .restart local v4    # "largeText":Z
    .restart local v10    # "subTextSize":F
    :cond_3
    const v12, 0x1020345

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v1, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4113
    const v12, 0x1020344

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v13, v8

    if-le v11, v13, :cond_5

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v1, v12, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4116
    invoke-virtual {p0, v1}, Landroid/app/Notification$InboxStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 4118
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V
    invoke-static {v11, v1}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 4120
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v12, 0x1020338

    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v11, v1, v12}, Landroid/app/Notification$Builder;->access$1500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    .line 4122
    return-object v1

    .line 4110
    :cond_4
    const/16 v11, 0x8

    goto :goto_3

    .line 4113
    :cond_5
    const/16 v11, 0x8

    goto :goto_4

    .line 4084
    nop

    :array_0
    .array-data 4
        0x102033d
        0x102033e
        0x102033f
        0x1020340
        0x1020341
        0x1020342
        0x1020343
    .end array-data
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4052
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4054
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 4055
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string v2, "android.textLines"

    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4056
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4044
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4045
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4130
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1600(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4131
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4063
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4065
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4066
    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4067
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    const-string v1, "android.textLines"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4069
    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4028
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4029
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4036
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4037
    return-object p0
.end method
