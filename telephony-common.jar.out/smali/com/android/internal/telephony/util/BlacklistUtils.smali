.class public Lcom/android/internal/telephony/util/BlacklistUtils;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"


# static fields
.field public static final BLOCK_CALLS:I = 0x1

.field public static final BLOCK_MESSAGES:I = 0x10

.field private static final DEBUG:Z = false

.field public static final MATCH_LIST:I = 0x3

.field public static final MATCH_NONE:I = 0x0

.field public static final MATCH_PRIVATE:I = 0x1

.field public static final MATCH_REGEX:I = 0x4

.field public static final MATCH_UNKNOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BlacklistUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdate(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "valid"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 57
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v1, "cv":Landroid/content/ContentValues;
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_0

    .line 60
    const-string/jumbo v6, "phone"

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    :cond_0
    and-int/lit8 v3, p3, 0x10

    if-eqz v3, :cond_1

    .line 63
    const-string/jumbo v6, "message"

    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    :cond_1
    sget-object v3, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 67
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "count":I
    if-lez v0, :cond_4

    :goto_2
    return v4

    .end local v0    # "count":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    move v3, v5

    .line 60
    goto :goto_0

    :cond_3
    move v3, v5

    .line 63
    goto :goto_1

    .restart local v0    # "count":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_4
    move v4, v5

    .line 69
    goto :goto_2
.end method

.method public static isBlacklistEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 159
    const-string/jumbo v3, "phone_blacklist_enabled"

    .line 160
    const/4 v4, -0x3

    .line 158
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isBlacklistNotifyEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 165
    const-string/jumbo v3, "phone_blacklist_notify_enabled"

    .line 166
    const/4 v4, -0x3

    .line 164
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isBlacklistPrivateNumberEnabled(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 171
    const-string/jumbo v2, "phone_blacklist_private_number_enabled"

    .line 172
    const/4 v3, -0x3

    .line 170
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBlacklistRegexEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 183
    const-string/jumbo v2, "phone_blacklist_regex_enabled"

    .line 184
    const/4 v3, -0x3

    .line 182
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isBlacklistUnknownNumberEnabled(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 177
    const-string/jumbo v2, "phone_blacklist_unknown_number_enabled"

    .line 178
    const/4 v3, -0x3

    .line 176
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isInputRegex(Ljava/lang/String;)Z
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    const/16 v2, 0x25

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 260
    const/16 v2, 0x5f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public static isListed(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 78
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    const/4 v2, 0x0

    return v2

    .line 88
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 90
    const-string/jumbo v16, "phone"

    .line 99
    .local v16, "type":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistUnknownNumberEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v11

    .line 101
    .local v11, "ci":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v11, :cond_4

    iget-boolean v2, v11, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v2, :cond_4

    .line 108
    .end local v11    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistPrivateNumberEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    const/4 v2, 0x1

    return v2

    .line 91
    .end local v16    # "type":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x10

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 93
    const-string/jumbo v16, "message"

    .restart local v16    # "type":Ljava/lang/String;
    goto :goto_0

    .line 95
    .end local v16    # "type":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "BlacklistUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x0

    return v2

    .line 103
    .restart local v11    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v16    # "type":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x2

    return v2

    .line 113
    .end local v11    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_5
    const/4 v2, 0x0

    return v2

    .line 116
    :cond_6
    sget-object v2, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 117
    .local v9, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistRegexEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    const-string/jumbo v2, "regex"

    const-string/jumbo v3, "1"

    invoke-virtual {v9, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    :cond_7
    const/4 v15, 0x0

    .line 123
    .local v15, "result":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 124
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "is_regex"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v16, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 123
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 126
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_b

    .line 128
    const-string/jumbo v2, "is_regex"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 129
    .local v14, "regexColumnIndex":I
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 130
    .local v13, "modeColumnIndex":I
    const/16 v17, 0x0

    .line 132
    .local v17, "whitelisted":Z
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 133
    :cond_8
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 134
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v12, 0x1

    .line 135
    .local v12, "isRegex":Z
    :goto_2
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_d

    const/4 v8, 0x1

    .line 137
    .local v8, "blocked":Z
    :goto_3
    if-nez v12, :cond_f

    .line 138
    if-eqz v8, :cond_e

    const/16 v17, 0x0

    .line 139
    :goto_4
    const/4 v15, 0x3

    .line 140
    if-eqz v8, :cond_8

    .line 147
    .end local v8    # "blocked":Z
    .end local v12    # "isRegex":Z
    :cond_9
    if-eqz v17, :cond_a

    .line 148
    const/4 v15, 0x0

    .line 150
    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 154
    .end local v13    # "modeColumnIndex":I
    .end local v14    # "regexColumnIndex":I
    .end local v17    # "whitelisted":Z
    :cond_b
    return v15

    .line 134
    .restart local v13    # "modeColumnIndex":I
    .restart local v14    # "regexColumnIndex":I
    .restart local v17    # "whitelisted":Z
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "isRegex":Z
    goto :goto_2

    .line 135
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "blocked":Z
    goto :goto_3

    .line 138
    :cond_e
    const/16 v17, 0x1

    goto :goto_4

    .line 143
    :cond_f
    if-eqz v8, :cond_8

    .line 144
    const/4 v15, 0x4

    goto :goto_1
.end method

.method public static isValidBlacklistInput(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/BlacklistUtils;->normalizeNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 190
    .local v1, "normalizeResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, "normalizedNumber":Ljava/lang/String;
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 192
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v0, 0x1

    .line 195
    .local v0, "isRegex":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    :cond_0
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 191
    .end local v0    # "isRegex":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isRegex":Z
    goto :goto_0

    .line 192
    .end local v0    # "isRegex":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isRegex":Z
    goto :goto_0

    .line 195
    :cond_3
    invoke-static {p1}, Lcom/android/internal/telephony/util/BlacklistUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    new-instance v3, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 251
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const/4 v2, 0x0

    return v2

    .line 250
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static normalizeNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 210
    .local v5, "len":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    .local v7, "ret":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_7

    .line 213
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 215
    .local v1, "c":C
    const/16 v9, 0xa

    invoke-static {v1, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 216
    .local v2, "digit":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_1

    .line 217
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_1
    const/16 v9, 0x61

    if-lt v1, v9, :cond_3

    const/16 v9, 0x7a

    if-gt v1, v9, :cond_3

    .line 219
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "actualNumber":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/BlacklistUtils;->normalizeNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    return-object v8

    .line 218
    .end local v0    # "actualNumber":Ljava/lang/String;
    :cond_3
    const/16 v9, 0x41

    if-lt v1, v9, :cond_4

    const/16 v9, 0x5a

    if-le v1, v9, :cond_2

    .line 221
    :cond_4
    if-nez v4, :cond_5

    const/16 v9, 0x2b

    if-ne v1, v9, :cond_5

    .line 222
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 223
    :cond_5
    const/16 v9, 0x2a

    if-ne v1, v9, :cond_6

    .line 225
    const/16 v9, 0x25

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 226
    :cond_6
    const/16 v9, 0x2e

    if-ne v1, v9, :cond_0

    .line 228
    const/16 v9, 0x5f

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 232
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-static {p0, v6}, Lcom/android/internal/telephony/util/BlacklistUtils;->toE164Number(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "e164Number":Ljava/lang/String;
    if-eqz v3, :cond_8

    move-object v6, v3

    .end local v6    # "normalizedNumber":Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_9

    const/4 v8, 0x1

    :cond_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    return-object v8
.end method

.method public static toE164Number(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 239
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 241
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "countryCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    .local v1, "numberLocale":Ljava/util/Locale;
    :goto_0
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 244
    .end local v1    # "numberLocale":Ljava/util/Locale;
    :cond_0
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v3, ""

    invoke-direct {v1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "numberLocale":Ljava/util/Locale;
    goto :goto_0
.end method
