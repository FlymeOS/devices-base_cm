.class public Landroid/renderscript/Int3;
.super Ljava/lang/Object;
.source "Int3.java"


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/renderscript/Int3;->z:I

    iput p1, p0, Landroid/renderscript/Int3;->y:I

    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 34
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 38
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    .line 39
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Int3;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 45
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 46
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 47
    return-void
.end method

.method public static add(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    .line 95
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 96
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 97
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 98
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 100
    return-object v0
.end method

.method public static add(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    .line 68
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 69
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 70
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 71
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 73
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 258
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 259
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 260
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 262
    return-object v0
.end method

.method public static div(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    .line 230
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 231
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 232
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 233
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 235
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)I
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    .line 355
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    iget v2, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    iget v2, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    .line 311
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 312
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 313
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 314
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 316
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    .line 284
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 285
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 286
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 287
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 289
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    .line 203
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 204
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 205
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 206
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 208
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    .line 176
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 177
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 178
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 179
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 181
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;I)Landroid/renderscript/Int3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # I

    .prologue
    .line 149
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 150
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 151
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 152
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 154
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Int3;Landroid/renderscript/Int3;)Landroid/renderscript/Int3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Int3;
    .param p1, "b"    # Landroid/renderscript/Int3;

    .prologue
    .line 122
    new-instance v0, Landroid/renderscript/Int3;

    invoke-direct {v0}, Landroid/renderscript/Int3;-><init>()V

    .line 123
    .local v0, "result":Landroid/renderscript/Int3;
    iget v1, p0, Landroid/renderscript/Int3;->x:I

    iget v2, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->x:I

    .line 124
    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->y:I

    .line 125
    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int3;->z:I

    .line 127
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 82
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 83
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 84
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 85
    return-void
.end method

.method public add(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    .line 55
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 56
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 57
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 58
    return-void
.end method

.method public addAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    .line 451
    packed-switch p1, :pswitch_data_0

    .line 462
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 460
    :goto_0
    return-void

    .line 456
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    goto :goto_0

    .line 459
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Int3;I)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;
    .param p2, "factor"    # I

    .prologue
    .line 365
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 366
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 367
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 368
    return-void
.end method

.method public copyTo([II)V
    .locals 2
    .param p1, "data"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 473
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    aput v0, p1, p2

    .line 474
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    aput v1, p1, v0

    .line 475
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    aput v1, p1, v0

    .line 476
    return-void
.end method

.method public div(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 244
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 245
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 246
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 247
    return-void
.end method

.method public div(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    .line 217
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 218
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 219
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 220
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Int3;)I
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    .line 344
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    iget v2, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    iget v2, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public elementSum()I
    .locals 2

    .prologue
    .line 400
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p0, Landroid/renderscript/Int3;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/renderscript/Int3;->z:I

    add-int/2addr v0, v1

    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 410
    packed-switch p1, :pswitch_data_0

    .line 418
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_0
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    .line 416
    :goto_0
    return v0

    .line 414
    :pswitch_1
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    goto :goto_0

    .line 416
    :pswitch_2
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x3

    return v0
.end method

.method public mod(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 298
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 299
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 300
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 301
    return-void
.end method

.method public mod(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    .line 271
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 272
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 273
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 274
    return-void
.end method

.method public mul(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 190
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 191
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 192
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 193
    return-void
.end method

.method public mul(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    .line 163
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 164
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 165
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 166
    return-void
.end method

.method public negate()V
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 333
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 334
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 335
    return-void
.end method

.method public set(Landroid/renderscript/Int3;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    .line 376
    iget v0, p1, Landroid/renderscript/Int3;->x:I

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 377
    iget v0, p1, Landroid/renderscript/Int3;->y:I

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 378
    iget v0, p1, Landroid/renderscript/Int3;->z:I

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 379
    return-void
.end method

.method public setAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # I

    .prologue
    .line 429
    packed-switch p1, :pswitch_data_0

    .line 440
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :pswitch_0
    iput p2, p0, Landroid/renderscript/Int3;->x:I

    .line 438
    :goto_0
    return-void

    .line 434
    :pswitch_1
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    goto :goto_0

    .line 437
    :pswitch_2
    iput p2, p0, Landroid/renderscript/Int3;->z:I

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(III)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    .line 389
    iput p1, p0, Landroid/renderscript/Int3;->x:I

    .line 390
    iput p2, p0, Landroid/renderscript/Int3;->y:I

    .line 391
    iput p3, p0, Landroid/renderscript/Int3;->z:I

    .line 392
    return-void
.end method

.method public sub(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 136
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 137
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 138
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 139
    return-void
.end method

.method public sub(Landroid/renderscript/Int3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Int3;

    .prologue
    .line 109
    iget v0, p0, Landroid/renderscript/Int3;->x:I

    iget v1, p1, Landroid/renderscript/Int3;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->x:I

    .line 110
    iget v0, p0, Landroid/renderscript/Int3;->y:I

    iget v1, p1, Landroid/renderscript/Int3;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->y:I

    .line 111
    iget v0, p0, Landroid/renderscript/Int3;->z:I

    iget v1, p1, Landroid/renderscript/Int3;->z:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int3;->z:I

    .line 112
    return-void
.end method
