.class public Landroid/renderscript/Double3;
.super Ljava/lang/Object;
.source "Double3.java"


# instance fields
.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    .line 39
    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    .line 40
    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Double3;)V
    .locals 2
    .param p1, "data"    # Landroid/renderscript/Double3;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 33
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 34
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 35
    return-void
.end method

.method public static add(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    .prologue
    .line 89
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 90
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 91
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 92
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 94
    return-object v0
.end method

.method public static add(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .prologue
    .line 51
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 52
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 53
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 54
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 56
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    .prologue
    .line 251
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 252
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 253
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 254
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 256
    return-object v0
.end method

.method public static div(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .prologue
    .line 224
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 225
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 226
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 227
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 229
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)D
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .prologue
    .line 277
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static mul(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    .prologue
    .line 197
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 198
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 199
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 200
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 202
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .prologue
    .line 170
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 171
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 172
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 173
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 175
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;D)Landroid/renderscript/Double3;
    .locals 5
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # D

    .prologue
    .line 143
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 144
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 145
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 146
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v2, p1

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 148
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Double3;Landroid/renderscript/Double3;)Landroid/renderscript/Double3;
    .locals 6
    .param p0, "a"    # Landroid/renderscript/Double3;
    .param p1, "b"    # Landroid/renderscript/Double3;

    .prologue
    .line 116
    new-instance v0, Landroid/renderscript/Double3;

    invoke-direct {v0}, Landroid/renderscript/Double3;-><init>()V

    .line 117
    .local v0, "res":Landroid/renderscript/Double3;
    iget-wide v2, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->x:D

    .line 118
    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->y:D

    .line 119
    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Landroid/renderscript/Double3;->z:D

    .line 121
    return-object v0
.end method


# virtual methods
.method public add(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 76
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 77
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 78
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 79
    return-void
.end method

.method public add(Landroid/renderscript/Double3;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double3;

    .prologue
    .line 65
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 66
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 67
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 68
    return-void
.end method

.method public addAt(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # D

    .prologue
    .line 378
    packed-switch p1, :pswitch_data_0

    .line 389
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 387
    :goto_0
    return-void

    .line 383
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    goto :goto_0

    .line 386
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Double3;D)V
    .locals 4
    .param p1, "a"    # Landroid/renderscript/Double3;
    .param p2, "factor"    # D

    .prologue
    .line 287
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 288
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 289
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 290
    return-void
.end method

.method public copyTo([DI)V
    .locals 4
    .param p1, "data"    # [D
    .param p2, "offset"    # I

    .prologue
    .line 413
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    aput-wide v0, p1, p2

    .line 414
    add-int/lit8 v0, p2, 0x1

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    aput-wide v2, p1, v0

    .line 415
    add-int/lit8 v0, p2, 0x2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    aput-wide v2, p1, v0

    .line 416
    return-void
.end method

.method public div(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 238
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 239
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 240
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 241
    return-void
.end method

.method public div(Landroid/renderscript/Double3;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double3;

    .prologue
    .line 211
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 212
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 213
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 214
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Double3;)D
    .locals 6
    .param p1, "a"    # Landroid/renderscript/Double3;

    .prologue
    .line 266
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v4, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public elementSum()D
    .locals 4

    .prologue
    .line 327
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double3;->y:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double3;->z:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public get(I)D
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 337
    packed-switch p1, :pswitch_data_0

    .line 345
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_0
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 343
    :goto_0
    return-wide v0

    .line 341
    :pswitch_1
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    goto :goto_0

    .line 343
    :pswitch_2
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    goto :goto_0

    .line 337
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
    .line 318
    const/4 v0, 0x3

    return v0
.end method

.method public mul(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 184
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 185
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 186
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 187
    return-void
.end method

.method public mul(Landroid/renderscript/Double3;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double3;

    .prologue
    .line 157
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 158
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 159
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 160
    return-void
.end method

.method public negate()V
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 308
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 309
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 310
    return-void
.end method

.method public set(Landroid/renderscript/Double3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Double3;

    .prologue
    .line 298
    iget-wide v0, p1, Landroid/renderscript/Double3;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 299
    iget-wide v0, p1, Landroid/renderscript/Double3;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 300
    iget-wide v0, p1, Landroid/renderscript/Double3;->z:D

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 301
    return-void
.end method

.method public setAt(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # D

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    .line 367
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :pswitch_0
    iput-wide p2, p0, Landroid/renderscript/Double3;->x:D

    .line 365
    :goto_0
    return-void

    .line 361
    :pswitch_1
    iput-wide p2, p0, Landroid/renderscript/Double3;->y:D

    goto :goto_0

    .line 364
    :pswitch_2
    iput-wide p2, p0, Landroid/renderscript/Double3;->z:D

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 401
    iput-wide p1, p0, Landroid/renderscript/Double3;->x:D

    .line 402
    iput-wide p3, p0, Landroid/renderscript/Double3;->y:D

    .line 403
    iput-wide p5, p0, Landroid/renderscript/Double3;->z:D

    .line 404
    return-void
.end method

.method public sub(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 130
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 131
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 132
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 133
    return-void
.end method

.method public sub(Landroid/renderscript/Double3;)V
    .locals 4
    .param p1, "value"    # Landroid/renderscript/Double3;

    .prologue
    .line 103
    iget-wide v0, p0, Landroid/renderscript/Double3;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->x:D

    .line 104
    iget-wide v0, p0, Landroid/renderscript/Double3;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->y:D

    .line 105
    iget-wide v0, p0, Landroid/renderscript/Double3;->z:D

    iget-wide v2, p1, Landroid/renderscript/Double3;->z:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double3;->z:D

    .line 106
    return-void
.end method
