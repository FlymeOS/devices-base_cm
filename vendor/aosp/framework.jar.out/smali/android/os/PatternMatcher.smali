.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PatternMatcher$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2


# instance fields
.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    .line 98
    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 53
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    .line 51
    return-void
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "match"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/16 v12, 0x5c

    const/16 v11, 0x2a

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 110
    if-nez p1, :cond_0

    return v8

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7

    .line 113
    :cond_1
    if-ne p2, v7, :cond_2

    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    return v7

    .line 115
    :cond_2
    const/4 v9, 0x2

    if-eq p2, v9, :cond_3

    .line 116
    return v8

    .line 119
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, "NP":I
    if-gtz v1, :cond_5

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_4

    :goto_0
    return v7

    :cond_4
    move v7, v8

    goto :goto_0

    .line 123
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 124
    .local v0, "NM":I
    const/4 v5, 0x0

    .local v5, "ip":I
    const/4 v4, 0x0

    .line 125
    .local v4, "im":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 126
    :goto_1
    if-ge v5, v1, :cond_17

    if-ge v4, v0, :cond_17

    .line 127
    move v2, v6

    .line 128
    .local v2, "c":C
    add-int/lit8 v5, v5, 0x1

    .line 129
    if-ge v5, v1, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 130
    :goto_2
    if-ne v2, v12, :cond_8

    const/4 v3, 0x1

    .line 131
    .local v3, "escaped":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 132
    move v2, v6

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    if-ge v5, v1, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 136
    :cond_6
    :goto_4
    if-ne v6, v11, :cond_15

    .line 137
    if-nez v3, :cond_12

    if-ne v2, v10, :cond_12

    .line 138
    add-int/lit8 v9, v1, -0x1

    if-lt v5, v9, :cond_a

    .line 141
    return v7

    .line 129
    .end local v3    # "escaped":Z
    :cond_7
    const/4 v6, 0x0

    .local v6, "nextChar":C
    goto :goto_2

    .line 130
    .end local v6    # "nextChar":C
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "escaped":Z
    goto :goto_3

    .line 134
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "nextChar":C
    goto :goto_4

    .line 143
    .end local v6    # "nextChar":C
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 144
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 147
    .local v6, "nextChar":C
    if-ne v6, v12, :cond_b

    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 149
    if-ge v5, v1, :cond_d

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 152
    .end local v6    # "nextChar":C
    :cond_b
    :goto_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_e

    .line 157
    :cond_c
    if-ne v4, v0, :cond_f

    .line 160
    return v8

    .line 149
    .restart local v6    # "nextChar":C
    :cond_d
    const/4 v6, 0x0

    .local v6, "nextChar":C
    goto :goto_5

    .line 155
    .end local v6    # "nextChar":C
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 156
    if-ge v4, v0, :cond_c

    goto :goto_5

    .line 162
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 163
    if-ge v5, v1, :cond_10

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 164
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    :cond_10
    const/4 v6, 0x0

    .restart local v6    # "nextChar":C
    goto :goto_6

    .line 171
    .end local v6    # "nextChar":C
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 172
    if-ge v4, v0, :cond_13

    .line 168
    :cond_12
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_11

    .line 173
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 174
    if-ge v5, v1, :cond_14

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, "nextChar":C
    goto :goto_1

    .end local v6    # "nextChar":C
    :cond_14
    const/4 v6, 0x0

    .local v6, "nextChar":C
    goto :goto_1

    .line 177
    .end local v6    # "nextChar":C
    :cond_15
    if-eq v2, v10, :cond_16

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v2, :cond_16

    return v8

    .line 178
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    .end local v2    # "c":C
    .end local v3    # "escaped":Z
    :cond_17
    if-lt v5, v1, :cond_18

    if-lt v4, v0, :cond_18

    .line 184
    return v7

    .line 190
    :cond_18
    add-int/lit8 v9, v1, -0x2

    if-ne v5, v9, :cond_19

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_19

    .line 191
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_19

    .line 192
    return v7

    .line 195
    :cond_19
    return v8
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {v0, p1, v1}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    const-string/jumbo v0, "? "

    .line 70
    .local v0, "type":Ljava/lang/String;
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 72
    :pswitch_0
    const-string/jumbo v0, "LITERAL: "

    goto :goto_0

    .line 75
    :pswitch_1
    const-string/jumbo v0, "PREFIX: "

    goto :goto_0

    .line 78
    :pswitch_2
    const-string/jumbo v0, "GLOB: "

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method
