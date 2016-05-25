.class public Lcom/android/internal/telephony/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"

.field public static final VDBG:Z


# instance fields
.field private mConfig:Ljava/lang/String;

.field private mCurMaxRetryCount:I

.field private mMaxRetryCount:I

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private mRng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    .line 118
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v0, "RetryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v0, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 435
    .local v0, "randomTime":I
    if-nez v0, :cond_0

    .line 436
    const/4 v1, 0x0

    .line 438
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRng:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 400
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 401
    .local v2, "value":I
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v2    # "value":I
    .local v1, "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_0
    return-object v1

    .line 402
    .end local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "RetryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    new-instance v1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .restart local v1    # "retVal":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 420
    if-gez p2, :cond_0

    .line 421
    const-string v1, "RetryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bad value: is < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x0

    .line 427
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 424
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "retVal":Z
    goto :goto_0
.end method


# virtual methods
.method public configure(III)Z
    .locals 2
    .param p1, "maxRetryCount"    # I
    .param p2, "retryTime"    # I
    .param p3, "randomizationTime"    # I

    .prologue
    const/4 v0, 0x0

    .line 149
    const-string v1, "maxRetryCount"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const-string v1, "retryTime"

    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string v1, "randomizationTime"

    invoke-direct {p0, v1, p3}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 162
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public configure(Ljava/lang/String;)Z
    .locals 11
    .param p1, "configStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 180
    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 184
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 187
    const/4 v0, 0x0

    .line 191
    .local v0, "defaultRandomization":I
    iput v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 193
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 195
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "strArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_a

    .line 199
    aget-object v6, v4, v1

    const-string v9, "="

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "splitStr":[Ljava/lang/String;
    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v7

    .line 202
    array-length v6, v3

    if-le v6, v8, :cond_6

    .line 203
    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 205
    aget-object v6, v3, v7

    const-string v9, "default_randomization"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    aget-object v6, v3, v7

    aget-object v9, v3, v8

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 207
    .local v5, "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    .line 256
    .end local v0    # "defaultRandomization":I
    .end local v1    # "i":I
    .end local v3    # "splitStr":[Ljava/lang/String;
    .end local v4    # "strArray":[Ljava/lang/String;
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_1
    return v6

    .line 208
    .restart local v0    # "defaultRandomization":I
    .restart local v1    # "i":I
    .restart local v3    # "splitStr":[Ljava/lang/String;
    .restart local v4    # "strArray":[Ljava/lang/String;
    .restart local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_2
    aget-object v6, v3, v7

    const-string v9, "max_retries"

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 210
    const-string v6, "infinite"

    aget-object v9, v3, v8

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 211
    iput-boolean v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    goto :goto_2

    .line 213
    :cond_3
    aget-object v6, v3, v7

    aget-object v9, v3, v8

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 214
    .restart local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    goto :goto_1

    .line 215
    :cond_4
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    goto :goto_2

    .line 218
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_5
    const-string v6, "RetryManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized configuration name value pair: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 220
    goto :goto_1

    .line 227
    :cond_6
    aget-object v6, v4, v1

    const-string v9, ":"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 228
    aget-object v6, v3, v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v7

    .line 229
    new-instance v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v2, v7, v7}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    .line 230
    .local v2, "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    const-string v6, "delayTime"

    aget-object v9, v3, v7

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 231
    .restart local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    goto/16 :goto_1

    .line 232
    :cond_7
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    .line 235
    array-length v6, v3

    if-le v6, v8, :cond_9

    .line 236
    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    .line 238
    const-string v6, "randomizationTime"

    aget-object v9, v3, v8

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 239
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v7

    goto/16 :goto_1

    .line 240
    :cond_8
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .line 244
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 242
    :cond_9
    iput v0, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    goto :goto_3

    .line 247
    .end local v2    # "rr":Lcom/android/internal/telephony/RetryManager$RetryRec;
    .end local v3    # "splitStr":[Ljava/lang/String;
    .end local v5    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v6, v7, :cond_b

    .line 248
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    .line 251
    :cond_b
    iget v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    move v6, v8

    .line 253
    goto/16 :goto_1

    .end local v0    # "defaultRandomization":I
    .end local v1    # "i":I
    .end local v4    # "strArray":[Ljava/lang/String;
    :cond_c
    move v6, v7

    .line 256
    goto/16 :goto_1
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    return v0
.end method

.method public getRetryTimer()I
    .locals 4

    .prologue
    .line 277
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 278
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 284
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v2, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    move-result v3

    add-int v1, v2, v3

    .line 291
    .local v1, "retVal":I
    :goto_1
    return v1

    .line 280
    .end local v0    # "index":I
    .end local v1    # "retVal":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "index":I
    goto :goto_0

    .line 287
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "retVal":I
    goto :goto_1
.end method

.method public increaseRetryCount()V
    .locals 2

    .prologue
    .line 306
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 307
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    if-le v0, v1, :cond_0

    .line 308
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 311
    :cond_0
    return-void
.end method

.method public isRetryForever()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    return v0
.end method

.method public isRetryNeeded()Z
    .locals 3

    .prologue
    .line 267
    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 269
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 267
    .end local v0    # "retVal":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetRetryCount()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 370
    return-void
.end method

.method public restoreCurMaxRetryCount()V
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    .line 353
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    .line 354
    return-void
.end method

.method public retryForeverUsingLastTimeout()V
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    .line 379
    return-void
.end method

.method public setCurMaxRetryCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    .line 336
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    if-gez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    .line 341
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    .line 344
    return-void
.end method

.method public setRetryCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 318
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    if-le v0, v1, :cond_0

    .line 319
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 322
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    if-gez v0, :cond_1

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .line 327
    :cond_1
    return-void
.end method

.method public setRetryForever(Z)V
    .locals 0
    .param p1, "retryForever"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    .line 362
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RetryManager: { forever="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " curMaxRetry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mCurMaxRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " config={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/RetryManager;->mConfig:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "} retryArray={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    .line 126
    .local v1, "r":Lcom/android/internal/telephony/RetryManager$RetryRec;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    goto :goto_0

    .line 128
    .end local v1    # "r":Lcom/android/internal/telephony/RetryManager$RetryRec;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    return-object v2
.end method
