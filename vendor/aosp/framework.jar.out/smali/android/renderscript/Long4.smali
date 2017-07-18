.class public Landroid/renderscript/Long4;
.super Ljava/lang/Object;
.source "Long4.java"


# instance fields
.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "i"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Landroid/renderscript/Long4;->w:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->z:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->y:J

    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    .line 33
    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # J
    .param p7, "w"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    .line 39
    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    .line 40
    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    .line 41
    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "source"    # Landroid/renderscript/Long4;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 47
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 48
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 49
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 45
    return-void
.end method

.method public static add(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .prologue
    .line 101
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 102
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 103
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 104
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 105
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 107
    return-object v0
.end method

.method public static add(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .prologue
    .line 72
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 73
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 74
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 75
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 76
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 78
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .prologue
    .line 275
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 276
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 277
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 278
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 279
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 281
    return-object v0
.end method

.method public static div(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .prologue
    .line 246
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 247
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 248
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 249
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 250
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 252
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)J
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .prologue
    .line 379
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .prologue
    .line 333
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 334
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 335
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 336
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 337
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 339
    return-object v0
.end method

.method public static mod(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .prologue
    .line 304
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 305
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 306
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 307
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 308
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 310
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .prologue
    .line 217
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 218
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 219
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 220
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 221
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 223
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .prologue
    .line 188
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 189
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 190
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 191
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 192
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 194
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long4;J)Landroid/renderscript/Long4;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # J

    .prologue
    .line 159
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 160
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 161
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 162
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 163
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 165
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Long4;Landroid/renderscript/Long4;)Landroid/renderscript/Long4;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Long4;
    .param p1, "b"    # Landroid/renderscript/Long4;

    .prologue
    .line 130
    new-instance v0, Landroid/renderscript/Long4;

    invoke-direct {v0}, Landroid/renderscript/Long4;-><init>()V

    .line 131
    .local v0, "result":Landroid/renderscript/Long4;
    iget-wide v2, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->x:J

    .line 132
    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->y:J

    .line 133
    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->z:J

    .line 134
    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Long4;->w:J

    .line 136
    return-object v0
.end method


# virtual methods
.method public add(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 87
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 88
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 89
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 90
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 86
    return-void
.end method

.method public add(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    .prologue
    .line 58
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 59
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 60
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 61
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 57
    return-void
.end method

.method public addAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

    .prologue
    .line 484
    packed-switch p1, :pswitch_data_0

    .line 498
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 487
    return-void

    .line 489
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 490
    return-void

    .line 492
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 493
    return-void

    .line 495
    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 496
    return-void

    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Long4;J)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;
    .param p2, "factor"    # J

    .prologue
    .line 389
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 390
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 391
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 392
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 388
    return-void
.end method

.method public copyTo([JI)V
    .locals 4
    .param p1, "data"    # [J
    .param p2, "offset"    # I

    .prologue
    .line 509
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    aput-wide v0, p1, p2

    .line 510
    add-int/lit8 v0, p2, 0x1

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    aput-wide v2, p1, v0

    .line 511
    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    aput-wide v2, p1, v0

    .line 512
    add-int/lit8 v0, p2, 0x3

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    aput-wide v2, p1, v0

    .line 508
    return-void
.end method

.method public div(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 261
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 262
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 263
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 264
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 260
    return-void
.end method

.method public div(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    .prologue
    .line 232
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 233
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 234
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 235
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 231
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Long4;)J
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Long4;

    .prologue
    .line 368
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v4, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()J
    .locals 4

    .prologue
    .line 428
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p0, Landroid/renderscript/Long4;->y:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->z:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Long4;->w:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public get(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    return-wide v0

    .line 442
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    return-wide v0

    .line 444
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    return-wide v0

    .line 446
    :pswitch_3
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    return-wide v0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public length()J
    .locals 2

    .prologue
    .line 348
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public mod(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 319
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 320
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 321
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 322
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 318
    return-void
.end method

.method public mod(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    .prologue
    .line 290
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 291
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 292
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 293
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 289
    return-void
.end method

.method public mul(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 203
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 204
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 205
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 206
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 202
    return-void
.end method

.method public mul(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    .prologue
    .line 174
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 175
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 176
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 177
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 173
    return-void
.end method

.method public negate()V
    .locals 2

    .prologue
    .line 355
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 356
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 357
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 358
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    neg-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 354
    return-void
.end method

.method public set(Landroid/renderscript/Long4;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Long4;

    .prologue
    .line 401
    iget-wide v0, p1, Landroid/renderscript/Long4;->x:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 402
    iget-wide v0, p1, Landroid/renderscript/Long4;->y:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 403
    iget-wide v0, p1, Landroid/renderscript/Long4;->z:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 404
    iget-wide v0, p1, Landroid/renderscript/Long4;->w:J

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 400
    return-void
.end method

.method public setAt(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # J

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    .line 473
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Long4;->x:J

    .line 462
    return-void

    .line 464
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Long4;->y:J

    .line 465
    return-void

    .line 467
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Long4;->z:J

    .line 468
    return-void

    .line 470
    :pswitch_3
    iput-wide p2, p0, Landroid/renderscript/Long4;->w:J

    .line 471
    return-void

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setValues(JJJJ)V
    .locals 1
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "c"    # J
    .param p7, "d"    # J

    .prologue
    .line 416
    iput-wide p1, p0, Landroid/renderscript/Long4;->x:J

    .line 417
    iput-wide p3, p0, Landroid/renderscript/Long4;->y:J

    .line 418
    iput-wide p5, p0, Landroid/renderscript/Long4;->z:J

    .line 419
    iput-wide p7, p0, Landroid/renderscript/Long4;->w:J

    .line 415
    return-void
.end method

.method public sub(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 145
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 146
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 147
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 148
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 144
    return-void
.end method

.method public sub(Landroid/renderscript/Long4;)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Long4;

    .prologue
    .line 116
    iget-wide v0, p0, Landroid/renderscript/Long4;->x:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->x:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->x:J

    .line 117
    iget-wide v0, p0, Landroid/renderscript/Long4;->y:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->y:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->y:J

    .line 118
    iget-wide v0, p0, Landroid/renderscript/Long4;->z:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->z:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->z:J

    .line 119
    iget-wide v0, p0, Landroid/renderscript/Long4;->w:J

    iget-wide v2, p1, Landroid/renderscript/Long4;->w:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Long4;->w:J

    .line 115
    return-void
.end method
