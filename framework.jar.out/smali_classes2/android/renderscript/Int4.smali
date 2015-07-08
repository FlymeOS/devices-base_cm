.class public Landroid/renderscript/Int4;
.super Ljava/lang/Object;
.source "Int4.java"


# instance fields
.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/renderscript/Int4;->w:I

    iput p1, p0, Landroid/renderscript/Int4;->z:I

    iput p1, p0, Landroid/renderscript/Int4;->y:I

    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 35
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "w"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 39
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 40
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    .line 41
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int4;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Int4;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 47
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 48
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 49
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 50
    return-void
.end method

.method public static add(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 102
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 103
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 104
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 105
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 107
    return-object v0
.end method

.method public static add(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .prologue
    .line 72
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 73
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 74
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 75
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 76
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 78
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .prologue
    .line 275
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 276
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 277
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 278
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 279
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 281
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .prologue
    .line 246
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 247
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 248
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 249
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 250
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 252
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)I
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .prologue
    .line 379
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    iget v2, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    iget v2, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    iget v2, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .prologue
    .line 333
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 334
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 335
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 336
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 337
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 339
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .prologue
    .line 304
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 305
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 306
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 307
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 308
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 310
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .prologue
    .line 217
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 218
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 219
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 220
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 221
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 223
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .prologue
    .line 188
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 189
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 190
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 191
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 192
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 194
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;I)Landroid/renderscript/Int4;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # I

    .prologue
    .line 159
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 160
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 161
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 162
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 163
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 165
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int4;Landroid/renderscript/Int4;)Landroid/renderscript/Int4;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int4;
    .param p1, "b"    # Landroid/renderscript/Int4;

    .prologue
    .line 130
    new-instance v0, Landroid/renderscript/Int4;

    invoke-direct {v0}, Landroid/renderscript/Int4;-><init>()V

    .line 131
    .local v0, "result":Landroid/renderscript/Int4;
    iget v1, p0, Landroid/renderscript/Int4;->x:I

    iget v2, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->x:I

    .line 132
    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->y:I

    .line 133
    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->z:I

    .line 134
    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int4;->w:I

    .line 136
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 87
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 88
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 89
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 90
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 91
    return-void
.end method

.method public add(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    .prologue
    .line 58
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 59
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 60
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 61
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 62
    return-void
.end method

.method public addAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    .line 484
    packed-switch p1, :pswitch_data_0

    .line 498
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 496
    :goto_0
    return-void

    .line 489
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    goto :goto_0

    .line 492
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    goto :goto_0

    .line 495
    :pswitch_3
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    goto :goto_0

    .line 484
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int4;I)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;
    .param p2, "factor"    # I

    .prologue
    .line 389
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 390
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 391
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 392
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 393
    return-void
.end method

.method public copyTo([II)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 509
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    aput v0, p1, p2

    .line 510
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    aput v1, p1, v0

    .line 511
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    aput v1, p1, v0

    .line 512
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    aput v1, p1, v0

    .line 513
    return-void
.end method

.method public div(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 261
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 262
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 263
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 264
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 265
    return-void
.end method

.method public div(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    .prologue
    .line 232
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 233
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 234
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 235
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 236
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int4;)I
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Int4;

    .prologue
    .line 368
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    iget v2, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    iget v2, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    iget v2, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public elementSum()I
    .locals 2

    .prologue
    .line 428
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p0, Landroid/renderscript/Int4;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->z:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int4;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    .line 446
    :goto_0
    return v0

    .line 442
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    goto :goto_0

    .line 444
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    goto :goto_0

    .line 446
    :pswitch_3
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public length()I
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x4

    return v0
.end method

.method public mod(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 319
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 320
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 321
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 322
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 323
    return-void
.end method

.method public mod(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    .prologue
    .line 290
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 291
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 292
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 293
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 294
    return-void
.end method

.method public mul(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 203
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 204
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 205
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 206
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 207
    return-void
.end method

.method public mul(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    .prologue
    .line 174
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 175
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 176
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 177
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 178
    return-void
.end method

.method public negate()V
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 356
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 357
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 358
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 359
    return-void
.end method

.method public set(Landroid/renderscript/Int4;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Int4;

    .prologue
    .line 401
    iget v0, p1, Landroid/renderscript/Int4;->x:I

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 402
    iget v0, p1, Landroid/renderscript/Int4;->y:I

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 403
    iget v0, p1, Landroid/renderscript/Int4;->z:I

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 404
    iget v0, p1, Landroid/renderscript/Int4;->w:I

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 405
    return-void
.end method

.method public setAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    .line 473
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Int4;->x:I

    .line 471
    :goto_0
    return-void

    .line 464
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    goto :goto_0

    .line 467
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Int4;->z:I

    goto :goto_0

    .line 470
    :pswitch_3
    iput p2, p0, Landroid/renderscript/Int4;->w:I

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setValues(IIII)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 416
    iput p1, p0, Landroid/renderscript/Int4;->x:I

    .line 417
    iput p2, p0, Landroid/renderscript/Int4;->y:I

    .line 418
    iput p3, p0, Landroid/renderscript/Int4;->z:I

    .line 419
    iput p4, p0, Landroid/renderscript/Int4;->w:I

    .line 420
    return-void
.end method

.method public sub(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 145
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 146
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 147
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 148
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 149
    return-void
.end method

.method public sub(Landroid/renderscript/Int4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int4;

    .prologue
    .line 116
    iget v0, p0, Landroid/renderscript/Int4;->x:I

    iget v1, p1, Landroid/renderscript/Int4;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->x:I

    .line 117
    iget v0, p0, Landroid/renderscript/Int4;->y:I

    iget v1, p1, Landroid/renderscript/Int4;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->y:I

    .line 118
    iget v0, p0, Landroid/renderscript/Int4;->z:I

    iget v1, p1, Landroid/renderscript/Int4;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->z:I

    .line 119
    iget v0, p0, Landroid/renderscript/Int4;->w:I

    iget v1, p1, Landroid/renderscript/Int4;->w:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int4;->w:I

    .line 120
    return-void
.end method
