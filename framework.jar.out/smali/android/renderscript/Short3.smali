.class public Landroid/renderscript/Short3;
.super Ljava/lang/Object;
.source "Short3.java"


# instance fields
.field public x:S

.field public y:S

.field public z:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Short3;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Short3;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 45
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 46
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 47
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "i"    # S

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-short p1, p0, Landroid/renderscript/Short3;->z:S

    iput-short p1, p0, Landroid/renderscript/Short3;->y:S

    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 34
    return-void
.end method

.method public constructor <init>(SSS)V
    .locals 0
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 38
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 39
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    .line 40
    return-void
.end method

.method public static add(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .prologue
    .line 68
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 69
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 70
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 71
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 73
    return-object v0
.end method

.method public static add(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .prologue
    .line 95
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 96
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 97
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 98
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 100
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .prologue
    .line 230
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 231
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 232
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 233
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 235
    return-object v0
.end method

.method public static div(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 258
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 259
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 260
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 262
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)S
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .prologue
    .line 355
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    iget-short v2, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    iget-short v2, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static mod(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .prologue
    .line 284
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 285
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 286
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 287
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 289
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .prologue
    .line 311
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 312
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 313
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 314
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 316
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .prologue
    .line 176
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 177
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 178
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 179
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 181
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .prologue
    .line 203
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 204
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 205
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 206
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 208
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short3;Landroid/renderscript/Short3;)Landroid/renderscript/Short3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # Landroid/renderscript/Short3;

    .prologue
    .line 122
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 123
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    iget-short v2, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 124
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 125
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 127
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Short3;S)Landroid/renderscript/Short3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Short3;
    .param p1, "b"    # S

    .prologue
    .line 149
    new-instance v0, Landroid/renderscript/Short3;

    invoke-direct {v0}, Landroid/renderscript/Short3;-><init>()V

    .line 150
    .local v0, "result":Landroid/renderscript/Short3;
    iget-short v1, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->x:S

    .line 151
    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->y:S

    .line 152
    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, v0, Landroid/renderscript/Short3;->z:S

    .line 154
    return-object v0
.end method


# virtual methods
.method public add(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    .prologue
    .line 55
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 56
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 57
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 58
    return-void
.end method

.method public add(S)V
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 82
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 83
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 84
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 85
    return-void
.end method

.method public addAt(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # S

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
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 460
    :goto_0
    return-void

    .line 456
    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    goto :goto_0

    .line 459
    :pswitch_2
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, p2

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    goto :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Short3;S)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;
    .param p2, "factor"    # S

    .prologue
    .line 365
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 366
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 367
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 368
    return-void
.end method

.method public copyTo([SI)V
    .locals 2
    .param p1, "data"    # [S
    .param p2, "offset"    # I

    .prologue
    .line 473
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    aput-short v0, p1, p2

    .line 474
    add-int/lit8 v0, p2, 0x1

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    aput-short v1, p1, v0

    .line 475
    add-int/lit8 v0, p2, 0x2

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    aput-short v1, p1, v0

    .line 476
    return-void
.end method

.method public div(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    .prologue
    .line 217
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 218
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 219
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 220
    return-void
.end method

.method public div(S)V
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 244
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 245
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 246
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    div-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 247
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Short3;)S
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Short3;

    .prologue
    .line 344
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    iget-short v2, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    iget-short v2, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public elementSum()S
    .locals 2

    .prologue
    .line 400
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p0, Landroid/renderscript/Short3;->y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Landroid/renderscript/Short3;->z:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public get(I)S
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
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 416
    :goto_0
    return v0

    .line 414
    :pswitch_1
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    goto :goto_0

    .line 416
    :pswitch_2
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()S
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x3

    return v0
.end method

.method public mod(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    .prologue
    .line 271
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 272
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 273
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 274
    return-void
.end method

.method public mod(S)V
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 298
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 299
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 300
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    rem-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 301
    return-void
.end method

.method public mul(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    .prologue
    .line 163
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 164
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 165
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 166
    return-void
.end method

.method public mul(S)V
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 190
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 191
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 192
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    mul-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 193
    return-void
.end method

.method public negate()V
    .locals 1

    .prologue
    .line 332
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 333
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 334
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 335
    return-void
.end method

.method public set(Landroid/renderscript/Short3;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Short3;

    .prologue
    .line 376
    iget-short v0, p1, Landroid/renderscript/Short3;->x:S

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 377
    iget-short v0, p1, Landroid/renderscript/Short3;->y:S

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 378
    iget-short v0, p1, Landroid/renderscript/Short3;->z:S

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 379
    return-void
.end method

.method public setAt(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # S

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
    iput-short p2, p0, Landroid/renderscript/Short3;->x:S

    .line 438
    :goto_0
    return-void

    .line 434
    :pswitch_1
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    goto :goto_0

    .line 437
    :pswitch_2
    iput-short p2, p0, Landroid/renderscript/Short3;->z:S

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(SSS)V
    .locals 0
    .param p1, "a"    # S
    .param p2, "b"    # S
    .param p3, "c"    # S

    .prologue
    .line 389
    iput-short p1, p0, Landroid/renderscript/Short3;->x:S

    .line 390
    iput-short p2, p0, Landroid/renderscript/Short3;->y:S

    .line 391
    iput-short p3, p0, Landroid/renderscript/Short3;->z:S

    .line 392
    return-void
.end method

.method public sub(Landroid/renderscript/Short3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Short3;

    .prologue
    .line 109
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    iget-short v1, p1, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 110
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    iget-short v1, p1, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 111
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    iget-short v1, p1, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 112
    return-void
.end method

.method public sub(S)V
    .locals 1
    .param p1, "value"    # S

    .prologue
    .line 136
    iget-short v0, p0, Landroid/renderscript/Short3;->x:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->x:S

    .line 137
    iget-short v0, p0, Landroid/renderscript/Short3;->y:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->y:S

    .line 138
    iget-short v0, p0, Landroid/renderscript/Short3;->z:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/renderscript/Short3;->z:S

    .line 139
    return-void
.end method
