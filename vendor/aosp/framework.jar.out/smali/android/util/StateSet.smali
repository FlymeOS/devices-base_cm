.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final NOTHING:[I

.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final WILD_CARD:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 66
    const/16 v9, 0x14

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    sput-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    .line 80
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_0

    .line 81
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 82
    const-string/jumbo v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    .line 81
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 85
    :cond_0
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 86
    .local v4, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 87
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 88
    .local v8, "viewState":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 89
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_1

    .line 90
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 91
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 86
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "j":I
    .end local v8    # "viewState":I
    :cond_3
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 97
    .local v0, "NUM_BITS":I
    shl-int v9, v13, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 98
    const/4 v1, 0x0

    :goto_2
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 100
    .local v3, "numBits":I
    new-array v7, v3, [I

    .line 101
    .local v7, "set":[I
    const/4 v5, 0x0

    .line 102
    .local v5, "pos":I
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    array-length v9, v4

    if-ge v2, v9, :cond_5

    .line 103
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    .line 104
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 102
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 107
    :cond_5
    sget-object v9, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    .end local v2    # "j":I
    .end local v3    # "numBits":I
    .end local v5    # "pos":I
    .end local v7    # "set":[I
    :cond_6
    new-array v9, v12, [I

    sput-object v9, Landroid/util/StateSet;->WILD_CARD:[I

    .line 130
    new-array v9, v13, [I

    aput v12, v9, v12

    sput-object v9, Landroid/util/StateSet;->NOTHING:[I

    .line 38
    return-void

    .line 66
    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 4
    .param p0, "states"    # [I

    .prologue
    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 245
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 247
    aget v3, p0, v1

    sparse-switch v3, :sswitch_data_0

    .line 245
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :sswitch_0
    const-string/jumbo v3, "W "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 252
    :sswitch_1
    const-string/jumbo v3, "P "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 255
    :sswitch_2
    const-string/jumbo v3, "S "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 258
    :sswitch_3
    const-string/jumbo v3, "F "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    :sswitch_4
    const-string/jumbo v3, "E "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 247
    nop

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_3
        0x101009d -> :sswitch_0
        0x101009e -> :sswitch_4
        0x10100a1 -> :sswitch_2
        0x10100a7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static get(I)[I
    .locals 2
    .param p0, "mask"    # I

    .prologue
    .line 113
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v0, v0

    if-lt p0, v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid state set mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static isWildCard([I)Z
    .locals 3
    .param p0, "stateSetOrSpec"    # [I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    array-length v2, p0

    if-eqz v2, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static stateSetMatches([II)Z
    .locals 6
    .param p0, "stateSpec"    # [I
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 209
    array-length v1, p0

    .line 210
    .local v1, "stateSpecSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 211
    aget v2, p0, v0

    .line 212
    .local v2, "stateSpecState":I
    if-nez v2, :cond_0

    .line 214
    return v5

    .line 216
    :cond_0
    if-lez v2, :cond_1

    .line 217
    if-eq p1, v2, :cond_2

    .line 218
    return v4

    .line 222
    :cond_1
    neg-int v3, v2

    if-ne p1, v3, :cond_2

    .line 224
    return v4

    .line 210
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "stateSpecState":I
    :cond_3
    return v5
.end method

.method public static stateSetMatches([I[I)Z
    .locals 10
    .param p0, "stateSpec"    # [I
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 149
    if-nez p1, :cond_1

    .line 150
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v8

    :cond_0
    return v8

    .line 152
    :cond_1
    array-length v6, p0

    .line 153
    .local v6, "stateSpecSize":I
    array-length v5, p1

    .line 154
    .local v5, "stateSetSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_a

    .line 155
    aget v7, p0, v1

    .line 156
    .local v7, "stateSpecState":I
    if-nez v7, :cond_2

    .line 158
    return v8

    .line 161
    :cond_2
    if-lez v7, :cond_3

    .line 162
    const/4 v3, 0x1

    .line 168
    .local v3, "mustMatch":Z
    :goto_1
    const/4 v0, 0x0

    .line 169
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 170
    aget v4, p1, v2

    .line 171
    .local v4, "state":I
    if-nez v4, :cond_4

    .line 173
    if-eqz v3, :cond_5

    .line 175
    return v9

    .line 165
    .end local v0    # "found":Z
    .end local v2    # "j":I
    .end local v3    # "mustMatch":Z
    .end local v4    # "state":I
    :cond_3
    const/4 v3, 0x0

    .line 166
    .restart local v3    # "mustMatch":Z
    neg-int v7, v7

    goto :goto_1

    .line 181
    .restart local v0    # "found":Z
    .restart local v2    # "j":I
    .restart local v4    # "state":I
    :cond_4
    if-ne v4, v7, :cond_8

    .line 182
    if-eqz v3, :cond_7

    .line 183
    const/4 v0, 0x1

    .line 192
    .end local v4    # "state":I
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v0, :cond_9

    .line 154
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .restart local v4    # "state":I
    :cond_7
    return v9

    .line 169
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 195
    .end local v4    # "state":I
    :cond_9
    return v9

    .line 198
    .end local v0    # "found":Z
    .end local v2    # "j":I
    .end local v3    # "mustMatch":Z
    .end local v7    # "stateSpecState":I
    :cond_a
    return v8
.end method

.method public static trimStateSet([II)[I
    .locals 3
    .param p0, "states"    # [I
    .param p1, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 232
    array-length v1, p0

    if-ne v1, p1, :cond_0

    .line 233
    return-object p0

    .line 236
    :cond_0
    new-array v0, p1, [I

    .line 237
    .local v0, "trimmedStates":[I
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 238
    return-object v0
.end method
