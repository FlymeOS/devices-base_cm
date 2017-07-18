.class public Landroid/renderscript/Long2;
.super Ljava/lang/Object;
.source "Long2.java"


# instance fields
.field public x:J

.field public y:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "i"    # J

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Landroid/renderscript/Long2;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 31
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 37
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "source"    # Landroid/renderscript/Long2;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 43
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 41
    return-void
.end method

.method public static add(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .prologue
    .line 89
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 90
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 91
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 93
    return-object v0
.end method

.method public static add(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .prologue
    .line 64
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 65
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 66
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 68
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .prologue
    .line 239
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 240
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 241
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 243
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .prologue
    .line 214
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 215
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 216
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 218
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)J
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .prologue
    .line 331
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .prologue
    .line 289
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 290
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 291
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 293
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .prologue
    .line 264
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 265
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 266
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 268
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .prologue
    .line 189
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 190
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 191
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 193
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .prologue
    .line 164
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 165
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 166
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 168
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long2;J)Landroid/renderscript/Long2;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # J

    .prologue
    .line 139
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 140
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 141
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 143
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long2;Landroid/renderscript/Long2;)Landroid/renderscript/Long2;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long2;
    .param p1, "b"    # Landroid/renderscript/Long2;

    .prologue
    .line 114
    new-instance v0, Landroid/renderscript/Long2;

    invoke-direct {v0}, Landroid/renderscript/Long2;-><init>()V

    .line 115
    .local v0, "result":Landroid/renderscript/Long2;
    iget-wide v2, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->x:J

    .line 116
    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long2;->y:J

    .line 118
    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 77
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 78
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 76
    return-void
.end method

.method public add(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    .prologue
    .line 52
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 53
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 51
    return-void
.end method

.method public addAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

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
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 421
    return-void

    .line 423
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 424
    return-void

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Long2;J)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;
    .param p2, "factor"    # J

    .prologue
    .line 341
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 342
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 340
    return-void
.end method

.method public copyTo([JI)V
    .locals 4
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    .prologue
    .line 437
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    aput-wide v0, p1, p2

    .line 438
    add-int/lit8 v0, p2, 0x1

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    aput-wide v2, p1, v0

    .line 436
    return-void
.end method

.method public div(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 227
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 228
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 226
    return-void
.end method

.method public div(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    .prologue
    .line 202
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 203
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 201
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long2;)J
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Long2;

    .prologue
    .line 320
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()J
    .locals 4

    .prologue
    .line 372
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long2;->y:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
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
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    return-wide v0

    .line 386
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    return-wide v0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public length()J
    .locals 2

    .prologue
    .line 302
    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public mod(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 277
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 278
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 276
    return-void
.end method

.method public mod(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    .prologue
    .line 252
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 253
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 251
    return-void
.end method

.method public mul(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 178
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 176
    return-void
.end method

.method public mul(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    .prologue
    .line 152
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 153
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 151
    return-void
.end method

.method public negate()V
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 310
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 308
    return-void
.end method

.method public set(Landroid/renderscript/Long2;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Long2;

    .prologue
    .line 351
    iget-wide v0, p1, Landroid/renderscript/Long2;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 352
    iget-wide v0, p1, Landroid/renderscript/Long2;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 350
    return-void
.end method

.method public setAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

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
    iput-wide p2, p0, Landroid/renderscript/Long2;->x:J

    .line 402
    return-void

    .line 404
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Long2;->y:J

    .line 405
    return-void

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValues(JJ)V
    .locals 1
    .param p1, "a"    # J
    .param p3, "b"    # J

    .prologue
    .line 362
    iput-wide p1, p0, Landroid/renderscript/Long2;->x:J

    .line 363
    iput-wide p3, p0, Landroid/renderscript/Long2;->y:J

    .line 361
    return-void
.end method

.method public sub(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 127
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 128
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 126
    return-void
.end method

.method public sub(Landroid/renderscript/Long2;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long2;

    .prologue
    .line 102
    iget-wide v0, p0, Landroid/renderscript/Long2;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->x:J

    .line 103
    iget-wide v0, p0, Landroid/renderscript/Long2;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long2;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long2;->y:J

    .line 101
    return-void
.end method
