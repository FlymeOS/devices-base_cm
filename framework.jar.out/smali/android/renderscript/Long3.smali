.class public Landroid/renderscript/Long3;
.super Ljava/lang/Object;
.source "Long3.java"


# instance fields
.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "i"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Landroid/renderscript/Long3;->z:J

    iput-wide p1, p0, Landroid/renderscript/Long3;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 34
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 38
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    .line 39
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "source"    # Landroid/renderscript/Long3;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 45
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 46
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 47
    return-void
.end method

.method public static add(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .prologue
    .line 95
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 96
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 97
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 98
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 100
    return-object v0
.end method

.method public static add(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .prologue
    .line 68
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 69
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 70
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 71
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 73
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 258
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 259
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 260
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 262
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .prologue
    .line 230
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 231
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 232
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 233
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 235
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)J
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .prologue
    .line 355
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .prologue
    .line 311
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 312
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 313
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 314
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 316
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .prologue
    .line 284
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 285
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 286
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 287
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 289
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .prologue
    .line 203
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 204
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 205
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 206
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 208
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .prologue
    .line 176
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 177
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 178
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 179
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 181
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long3;J)Landroid/renderscript/Long3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # J

    .prologue
    .line 149
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 150
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 151
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 152
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 154
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long3;Landroid/renderscript/Long3;)Landroid/renderscript/Long3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long3;
    .param p1, "b"    # Landroid/renderscript/Long3;

    .prologue
    .line 122
    new-instance v0, Landroid/renderscript/Long3;

    invoke-direct {v0}, Landroid/renderscript/Long3;-><init>()V

    .line 123
    .local v0, "result":Landroid/renderscript/Long3;
    iget-wide v2, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->x:J

    .line 124
    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->y:J

    .line 125
    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long3;->z:J

    .line 127
    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 82
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 83
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 84
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 85
    return-void
.end method

.method public add(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    .prologue
    .line 55
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 56
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 57
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 58
    return-void
.end method

.method public addAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

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
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 460
    :goto_0
    return-void

    .line 456
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    goto :goto_0

    .line 459
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

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

.method public addMultiple(Landroid/renderscript/Long3;J)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;
    .param p2, "factor"    # J

    .prologue
    .line 365
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 366
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 367
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 368
    return-void
.end method

.method public copyTo([JI)V
    .locals 4
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    .prologue
    .line 473
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    aput-wide v0, p1, p2

    .line 474
    add-int/lit8 v0, p2, 0x1

    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    aput-wide v2, p1, v0

    .line 475
    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    aput-wide v2, p1, v0

    .line 476
    return-void
.end method

.method public div(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 244
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 245
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 246
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 247
    return-void
.end method

.method public div(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    .prologue
    .line 217
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 218
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 219
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 220
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long3;)J
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Long3;

    .prologue
    .line 344
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()J
    .locals 4

    .prologue
    .line 400
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long3;->y:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long3;->z:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
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
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 416
    :goto_0
    return-wide v0

    .line 414
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    goto :goto_0

    .line 416
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()J
    .locals 2

    .prologue
    .line 325
    const-wide/16 v0, 0x3

    return-wide v0
.end method

.method public mod(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 298
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 299
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 300
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 301
    return-void
.end method

.method public mod(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    .prologue
    .line 271
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 272
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 273
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 274
    return-void
.end method

.method public mul(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 190
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 191
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 192
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 193
    return-void
.end method

.method public mul(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    .prologue
    .line 163
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 164
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 165
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 166
    return-void
.end method

.method public negate()V
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 333
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 334
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 335
    return-void
.end method

.method public set(Landroid/renderscript/Long3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Long3;

    .prologue
    .line 376
    iget-wide v0, p1, Landroid/renderscript/Long3;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 377
    iget-wide v0, p1, Landroid/renderscript/Long3;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 378
    iget-wide v0, p1, Landroid/renderscript/Long3;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 379
    return-void
.end method

.method public setAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

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
    iput-wide p2, p0, Landroid/renderscript/Long3;->x:J

    .line 438
    :goto_0
    return-void

    .line 434
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Long3;->y:J

    goto :goto_0

    .line 437
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Long3;->z:J

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(JJJ)V
    .locals 1
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J

    .prologue
    .line 389
    iput-wide p1, p0, Landroid/renderscript/Long3;->x:J

    .line 390
    iput-wide p3, p0, Landroid/renderscript/Long3;->y:J

    .line 391
    iput-wide p5, p0, Landroid/renderscript/Long3;->z:J

    .line 392
    return-void
.end method

.method public sub(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 136
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 137
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 138
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 139
    return-void
.end method

.method public sub(Landroid/renderscript/Long3;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long3;

    .prologue
    .line 109
    iget-wide v0, p0, Landroid/renderscript/Long3;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->x:J

    .line 110
    iget-wide v0, p0, Landroid/renderscript/Long3;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->y:J

    .line 111
    iget-wide v0, p0, Landroid/renderscript/Long3;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long3;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long3;->z:J

    .line 112
    return-void
.end method
