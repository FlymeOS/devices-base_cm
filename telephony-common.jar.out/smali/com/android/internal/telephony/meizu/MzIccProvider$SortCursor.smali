.class Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;
.super Landroid/database/CrossProcessCursorWrapper;
.source "MzIccProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/meizu/MzIccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/CrossProcessCursorWrapper;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mPos:I

.field private sortList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/meizu/MzIccProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/meizu/MzIccProvider;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/internal/telephony/meizu/MzIccProvider;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 244
    iput-object p1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->this$0:Lcom/android/internal/telephony/meizu/MzIccProvider;

    .line 245
    invoke-direct {p0, p2}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->sortList:Ljava/util/ArrayList;

    .line 242
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mPos:I

    .line 246
    iput-object p2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mCursor:Landroid/database/Cursor;

    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    new-instance v1, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;

    invoke-direct {v1, p1, v3}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;-><init>(Lcom/android/internal/telephony/meizu/MzIccProvider;Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;)V

    .line 251
    .local v1, "sortEntry":Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;
    invoke-static {}, Lcom/android/internal/telephony/meizu/MzIccProvider;->-get0()I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;->key:Ljava/lang/String;

    .line 252
    iput v0, v1, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;->order:I

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "i":I
    .end local v1    # "sortEntry":Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 244
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;)I
    .locals 12
    .param p1, "entry1"    # Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;
    .param p2, "entry2"    # Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;

    .prologue
    const/16 v11, 0x7a

    const/16 v10, 0x61

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 261
    iget-object v4, p1, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;->key:Ljava/lang/String;

    .line 262
    .local v4, "name0":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;->key:Ljava/lang/String;

    .line 265
    .local v5, "name1":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 278
    :cond_0
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_0
    return v6

    .line 266
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 268
    .local v2, "ch1":C
    if-lt v2, v10, :cond_2

    if-gt v2, v11, :cond_2

    const/4 v3, 0x1

    .line 269
    .local v3, "ch1Cansort":Z
    :goto_1
    if-nez v3, :cond_3

    return v8

    .line 268
    .end local v3    # "ch1Cansort":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "ch1Cansort":Z
    goto :goto_1

    .line 271
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 273
    .local v0, "ch0":C
    if-lt v0, v10, :cond_4

    if-gt v0, v11, :cond_4

    const/4 v1, 0x1

    .line 274
    .local v1, "ch0Cansort":Z
    :goto_2
    if-nez v1, :cond_5

    return v7

    .line 273
    .end local v1    # "ch0Cansort":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "ch0Cansort":Z
    goto :goto_2

    .line 276
    :cond_5
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    return v6

    .line 278
    .end local v0    # "ch0":C
    .end local v1    # "ch0Cansort":Z
    .end local v2    # "ch1":C
    .end local v3    # "ch1Cansort":Z
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_0

    :cond_7
    move v6, v8

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "entry1"    # Ljava/lang/Object;
    .param p2, "entry2"    # Ljava/lang/Object;

    .prologue
    .line 260
    check-cast p1, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;

    .end local p1    # "entry1":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;

    .end local p2    # "entry2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->compare(Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;)I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mPos:I

    return v0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 314
    iget v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 283
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 284
    iput p1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mPos:I

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;

    iget v0, v1, Lcom/android/internal/telephony/meizu/MzIccProvider$SortEntry;->order:I

    .line 286
    .local v0, "order":I
    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1

    .line 288
    .end local v0    # "order":I
    :cond_0
    if-gez p1, :cond_1

    .line 289
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mPos:I

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mPos:I

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    return v1
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/meizu/MzIccProvider$SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
