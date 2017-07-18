.class public final Lcom/android/internal/http/HttpDateTime;
.super Ljava/lang/Object;
.source "HttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/http/HttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 68
    sput-object v0, Lcom/android/internal/http/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    .line 71
    const-string/jumbo v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 70
    sput-object v0, Lcom/android/internal/http/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .locals 3
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    .line 127
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    .line 126
    add-int/2addr v0, v1

    return v0

    .line 129
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method private static getMonth(Ljava/lang/String;)I
    .locals 6
    .param p0, "monthString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 149
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 148
    add-int/2addr v1, v2

    .line 150
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 148
    add-int/2addr v1, v2

    add-int/lit16 v0, v1, -0x123

    .line 151
    .local v0, "hash":I
    sparse-switch v0, :sswitch_data_0

    .line 177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 153
    :sswitch_0
    return v3

    .line 155
    :sswitch_1
    return v4

    .line 157
    :sswitch_2
    return v5

    .line 159
    :sswitch_3
    const/4 v1, 0x3

    return v1

    .line 161
    :sswitch_4
    const/4 v1, 0x4

    return v1

    .line 163
    :sswitch_5
    const/4 v1, 0x5

    return v1

    .line 165
    :sswitch_6
    const/4 v1, 0x6

    return v1

    .line 167
    :sswitch_7
    const/4 v1, 0x7

    return v1

    .line 169
    :sswitch_8
    const/16 v1, 0x8

    return v1

    .line 171
    :sswitch_9
    const/16 v1, 0x9

    return v1

    .line 173
    :sswitch_a
    const/16 v1, 0xa

    return v1

    .line 175
    :sswitch_b
    const/16 v1, 0xb

    return v1

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_1
        0x16 -> :sswitch_0
        0x1a -> :sswitch_7
        0x1d -> :sswitch_2
        0x20 -> :sswitch_3
        0x23 -> :sswitch_9
        0x24 -> :sswitch_4
        0x25 -> :sswitch_8
        0x28 -> :sswitch_6
        0x2a -> :sswitch_5
        0x30 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getTime(Ljava/lang/String;)Lcom/android/internal/http/HttpDateTime$TimeOfDay;
    .locals 7
    .param p0, "timeString"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v5, 0x0

    .line 209
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v0, v5, -0x30

    .line 210
    .local v0, "hour":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_0

    .line 211
    mul-int/lit8 v5, v0, 0xa

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    add-int v0, v5, v6

    move v1, v2

    .line 213
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 215
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    .line 216
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 215
    add-int v3, v5, v6

    .line 218
    .local v3, "minute":I
    add-int/lit8 v1, v1, 0x1

    .line 220
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    .line 221
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 220
    add-int v4, v5, v6

    .line 223
    .local v4, "second":I
    new-instance v5, Lcom/android/internal/http/HttpDateTime$TimeOfDay;

    invoke-direct {v5, v0, v3, v4}, Lcom/android/internal/http/HttpDateTime$TimeOfDay;-><init>(III)V

    return-object v5
.end method

.method private static getYear(Ljava/lang/String;)I
    .locals 7
    .param p0, "yearString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 183
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    .line 184
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 183
    add-int v0, v1, v2

    .line 185
    .local v0, "year":I
    const/16 v1, 0x46

    if-lt v0, v1, :cond_0

    .line 186
    add-int/lit16 v1, v0, 0x76c

    return v1

    .line 188
    :cond_0
    add-int/lit16 v1, v0, 0x7d0

    return v1

    .line 190
    .end local v0    # "year":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 192
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    .line 193
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    .line 192
    add-int/2addr v1, v2

    .line 194
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 192
    add-int v0, v1, v2

    .line 195
    .restart local v0    # "year":I
    add-int/lit16 v1, v0, 0x76c

    return v1

    .line 196
    .end local v0    # "year":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 197
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit16 v1, v1, 0x3e8

    .line 198
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    .line 197
    add-int/2addr v1, v2

    .line 199
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    .line 197
    add-int/2addr v1, v2

    .line 200
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 197
    add-int/2addr v1, v2

    return v1

    .line 202
    :cond_3
    const/16 v1, 0x7b2

    return v1
.end method

.method public static parse(Ljava/lang/String;)J
    .locals 12
    .param p0, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 88
    const/4 v4, 0x1

    .line 89
    .local v4, "date":I
    const/4 v5, 0x0

    .line 90
    .local v5, "month":I
    const/16 v6, 0x7b2

    .line 93
    .local v6, "year":I
    sget-object v1, Lcom/android/internal/http/HttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 94
    .local v8, "rfcMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/http/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v4

    .line 96
    invoke-virtual {v8, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/http/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v5

    .line 97
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/http/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v6

    .line 98
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/http/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/android/internal/http/HttpDateTime$TimeOfDay;

    move-result-object v9

    .line 112
    .local v9, "timeOfDay":Lcom/android/internal/http/HttpDateTime$TimeOfDay;
    :goto_0
    const/16 v1, 0x7f6

    if-lt v6, v1, :cond_0

    .line 113
    const/16 v6, 0x7f6

    .line 114
    const/4 v5, 0x0

    .line 115
    const/4 v4, 0x1

    .line 118
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "time":Landroid/text/format/Time;
    iget v1, v9, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->second:I

    iget v2, v9, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->minute:I

    iget v3, v9, Lcom/android/internal/http/HttpDateTime$TimeOfDay;->hour:I

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2

    .line 100
    .end local v0    # "time":Landroid/text/format/Time;
    .end local v9    # "timeOfDay":Lcom/android/internal/http/HttpDateTime$TimeOfDay;
    :cond_1
    sget-object v1, Lcom/android/internal/http/HttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 101
    .local v7, "ansicMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/http/HttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v5

    .line 103
    invoke-virtual {v7, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/http/HttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v4

    .line 104
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/http/HttpDateTime;->getTime(Ljava/lang/String;)Lcom/android/internal/http/HttpDateTime$TimeOfDay;

    move-result-object v9

    .line 105
    .restart local v9    # "timeOfDay":Lcom/android/internal/http/HttpDateTime$TimeOfDay;
    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/http/HttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 107
    .end local v9    # "timeOfDay":Lcom/android/internal/http/HttpDateTime$TimeOfDay;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
