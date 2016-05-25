.class public Landroid/renderscript/Byte3;
.super Ljava/lang/Object;
.source "Byte3.java"


# instance fields
.field public x:B

.field public y:B

.field public z:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(BBB)V
    .locals 0
    .param p1, "initX"    # B
    .param p2, "initY"    # B
    .param p3, "initZ"    # B

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 34
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    .line 35
    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/renderscript/Byte3;)V
    .locals 1
    .param p1, "source"    # Landroid/renderscript/Byte3;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 41
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 42
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 43
    return-void
.end method

.method public static add(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    .prologue
    .line 91
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 92
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 93
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 94
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 96
    return-object v0
.end method

.method public static add(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .prologue
    .line 64
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 65
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 66
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 67
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 69
    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    .prologue
    .line 253
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 254
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 255
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 256
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 258
    return-object v0
.end method

.method public static div(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .prologue
    .line 226
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 227
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 228
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 229
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 231
    return-object v0
.end method

.method public static dotProduct(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)B
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .prologue
    .line 297
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static mul(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    .prologue
    .line 199
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 200
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 201
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 202
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 204
    return-object v0
.end method

.method public static mul(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .prologue
    .line 172
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 173
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 174
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 175
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 177
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte3;B)Landroid/renderscript/Byte3;
    .locals 2
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # B

    .prologue
    .line 145
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 146
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 147
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 148
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 150
    return-object v0
.end method

.method public static sub(Landroid/renderscript/Byte3;Landroid/renderscript/Byte3;)Landroid/renderscript/Byte3;
    .locals 3
    .param p0, "a"    # Landroid/renderscript/Byte3;
    .param p1, "b"    # Landroid/renderscript/Byte3;

    .prologue
    .line 118
    new-instance v0, Landroid/renderscript/Byte3;

    invoke-direct {v0}, Landroid/renderscript/Byte3;-><init>()V

    .line 119
    .local v0, "result":Landroid/renderscript/Byte3;
    iget-byte v1, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->x:B

    .line 120
    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->y:B

    .line 121
    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte3;->z:B

    .line 123
    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "value"    # B

    .prologue
    .line 78
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 79
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 80
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 81
    return-void
.end method

.method public add(Landroid/renderscript/Byte3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .prologue
    .line 51
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 52
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 53
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 54
    return-void
.end method

.method public addAt(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # B

    .prologue
    .line 393
    packed-switch p1, :pswitch_data_0

    .line 404
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :pswitch_0
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 402
    :goto_0
    return-void

    .line 398
    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    goto :goto_0

    .line 401
    :pswitch_2
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMultiple(Landroid/renderscript/Byte3;B)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;
    .param p2, "factor"    # B

    .prologue
    .line 307
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 308
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 309
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 310
    return-void
.end method

.method public copyTo([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 415
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    aput-byte v0, p1, p2

    .line 416
    add-int/lit8 v0, p2, 0x1

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    aput-byte v1, p1, v0

    .line 417
    add-int/lit8 v0, p2, 0x2

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    aput-byte v1, p1, v0

    .line 418
    return-void
.end method

.method public div(B)V
    .locals 1
    .param p1, "value"    # B

    .prologue
    .line 240
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 241
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 242
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 243
    return-void
.end method

.method public div(Landroid/renderscript/Byte3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .prologue
    .line 213
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 214
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 215
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 216
    return-void
.end method

.method public dotProduct(Landroid/renderscript/Byte3;)B
    .locals 3
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .prologue
    .line 286
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v2, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public elementSum()B
    .locals 2

    .prologue
    .line 342
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte3;->y:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Landroid/renderscript/Byte3;->z:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public get(I)B
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 352
    packed-switch p1, :pswitch_data_0

    .line 360
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_0
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 358
    :goto_0
    return v0

    .line 356
    :pswitch_1
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    goto :goto_0

    .line 358
    :pswitch_2
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public length()B
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x3

    return v0
.end method

.method public mul(B)V
    .locals 1
    .param p1, "value"    # B

    .prologue
    .line 186
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 187
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 188
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 189
    return-void
.end method

.method public mul(Landroid/renderscript/Byte3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .prologue
    .line 159
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 160
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 161
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 162
    return-void
.end method

.method public negate()V
    .locals 1

    .prologue
    .line 274
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 275
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 276
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 277
    return-void
.end method

.method public set(Landroid/renderscript/Byte3;)V
    .locals 1
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .prologue
    .line 318
    iget-byte v0, p1, Landroid/renderscript/Byte3;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 319
    iget-byte v0, p1, Landroid/renderscript/Byte3;->y:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 320
    iget-byte v0, p1, Landroid/renderscript/Byte3;->z:B

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 321
    return-void
.end method

.method public setAt(IB)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # B

    .prologue
    .line 371
    packed-switch p1, :pswitch_data_0

    .line 382
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: i"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_0
    iput-byte p2, p0, Landroid/renderscript/Byte3;->x:B

    .line 380
    :goto_0
    return-void

    .line 376
    :pswitch_1
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    goto :goto_0

    .line 379
    :pswitch_2
    iput-byte p2, p0, Landroid/renderscript/Byte3;->z:B

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setValues(BBB)V
    .locals 0
    .param p1, "a"    # B
    .param p2, "b"    # B
    .param p3, "c"    # B

    .prologue
    .line 331
    iput-byte p1, p0, Landroid/renderscript/Byte3;->x:B

    .line 332
    iput-byte p2, p0, Landroid/renderscript/Byte3;->y:B

    .line 333
    iput-byte p3, p0, Landroid/renderscript/Byte3;->z:B

    .line 334
    return-void
.end method

.method public sub(B)V
    .locals 1
    .param p1, "value"    # B

    .prologue
    .line 132
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 133
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 134
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 135
    return-void
.end method

.method public sub(Landroid/renderscript/Byte3;)V
    .locals 2
    .param p1, "a"    # Landroid/renderscript/Byte3;

    .prologue
    .line 105
    iget-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->x:B

    .line 106
    iget-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->y:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->y:B

    .line 107
    iget-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    iget-byte v1, p1, Landroid/renderscript/Byte3;->z:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte3;->z:B

    .line 108
    return-void
.end method
