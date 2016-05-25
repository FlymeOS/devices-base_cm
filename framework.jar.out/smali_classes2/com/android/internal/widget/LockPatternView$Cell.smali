.class public Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field static sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field column:I

.field row:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->updateSize(B)V

    .line 146
    return-void
.end method

.method constructor <init>(IIB)V
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "size"    # B

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(IIB)V

    .line 154
    iput p1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 155
    iput p2, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 156
    return-void
.end method

.method private static checkRange(IIB)V
    .locals 3
    .param p0, "row"    # I
    .param p1, "column"    # I
    .param p2, "size"    # B

    .prologue
    .line 189
    if-ltz p0, :cond_0

    add-int/lit8 v0, p2, -0x1

    if-le p0, v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row must be in range 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v0, p2, -0x1

    if-le p1, v0, :cond_3

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column must be in range 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_3
    return-void
.end method

.method public static declared-synchronized of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 2
    .param p0, "row"    # I
    .param p1, "column"    # I
    .param p2, "size"    # B

    .prologue
    .line 171
    const-class v1, Lcom/android/internal/widget/LockPatternView$Cell;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/widget/LockPatternView$Cell;->of([[Lcom/android/internal/widget/LockPatternView$Cell;IIB)Lcom/android/internal/widget/LockPatternView$Cell;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static of([[Lcom/android/internal/widget/LockPatternView$Cell;IIB)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 1
    .param p0, "cells"    # [[Lcom/android/internal/widget/LockPatternView$Cell;
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "size"    # B

    .prologue
    .line 175
    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(IIB)V

    .line 176
    aget-object v0, p0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public static updateSize(B)V
    .locals 4
    .param p0, "size"    # B

    .prologue
    .line 180
    filled-new-array {p0, p0}, [I

    move-result-object v2

    const-class v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$Cell;

    sput-object v2, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 182
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, p0, :cond_0

    .line 183
    sget-object v2, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v2, v2, v0

    new-instance v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v3, v0, v1, p0}, Lcom/android/internal/widget/LockPatternView$Cell;-><init>(IIB)V

    aput-object v3, v2, v1

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "j":I
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 199
    instance-of v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 200
    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 201
    .local v0, "other":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 204
    .end local v0    # "other":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    return v1
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
