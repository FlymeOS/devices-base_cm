.class public Landroid/renderscript/Int2;
.super Ljava/lang/Object;
.source "Int2.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 37
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int2;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Int2;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 43
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 41
    return-void
.end method

.method public static add(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    .prologue
    .line 89
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 90
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 91
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 93
    return-object v0
.end method

.method public static add(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    .prologue
    .line 64
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 65
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 66
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    iget v2, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 68
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    .prologue
    .line 239
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 240
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 241
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 243
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    .prologue
    .line 214
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 215
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 216
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    iget v2, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 218
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)I
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    .prologue
    .line 331
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int2;->y:I

    iget v2, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    .prologue
    .line 289
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 290
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 291
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 293
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    .prologue
    .line 264
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 265
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 266
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    iget v2, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 268
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    .prologue
    .line 189
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 190
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 191
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 193
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    .prologue
    .line 164
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 165
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 166
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    iget v2, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 168
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # I

    .prologue
    .line 139
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 140
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 141
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 143
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int2;
    .param p1, "b"    # Landroid/renderscript/Int2;

    .prologue
    .line 114
    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    .line 115
    .local v0, "result":Landroid/renderscript/Int2;
    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    .line 116
    iget v1, p0, Landroid/renderscript/Int2;->y:I

    iget v2, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->y:I

    .line 118
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 77
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 78
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 76
    return-void
.end method

.method public add(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    .prologue
    .line 52
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 53
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget v1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 51
    return-void
.end method

.method public addAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    .line 418
    packed-switch p1, :pswitch_data_0

    .line 426
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 421
    return-void

    .line 423
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 424
    return-void

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int2;I)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;
    .param p2, "factor"    # I

    .prologue
    .line 341
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 342
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget v1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 340
    return-void
.end method

.method public copyTo([II)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 437
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    aput v0, p1, p2

    .line 438
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int2;->y:I

    aput v1, p1, v0

    .line 436
    return-void
.end method

.method public div(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 227
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 228
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 226
    return-void
.end method

.method public div(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    .prologue
    .line 202
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 203
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget v1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 201
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int2;)I
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Int2;

    .prologue
    .line 320
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int2;->y:I

    iget v2, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public elementSum()I
    .locals 2

    .prologue
    .line 372
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 388
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    return v0

    .line 386
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    return v0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public length()I
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x2

    return v0
.end method

.method public mod(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 277
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 278
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 276
    return-void
.end method

.method public mod(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    .prologue
    .line 252
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 253
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget v1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 251
    return-void
.end method

.method public mul(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 177
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 178
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 176
    return-void
.end method

.method public mul(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    .prologue
    .line 152
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 153
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget v1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 151
    return-void
.end method

.method public negate()V
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 310
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 308
    return-void
.end method

.method public set(Landroid/renderscript/Int2;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Int2;

    .prologue
    .line 351
    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 352
    iget v0, p1, Landroid/renderscript/Int2;->y:I

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 350
    return-void
.end method

.method public setAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    .line 399
    packed-switch p1, :pswitch_data_0

    .line 407
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Int2;->x:I

    .line 402
    return-void

    .line 404
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    .line 405
    return-void

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValues(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 362
    iput p1, p0, Landroid/renderscript/Int2;->x:I

    .line 363
    iput p2, p0, Landroid/renderscript/Int2;->y:I

    .line 361
    return-void
.end method

.method public sub(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 127
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 128
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 126
    return-void
.end method

.method public sub(Landroid/renderscript/Int2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int2;

    .prologue
    .line 102
    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    .line 103
    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget v1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    .line 101
    return-void
.end method
