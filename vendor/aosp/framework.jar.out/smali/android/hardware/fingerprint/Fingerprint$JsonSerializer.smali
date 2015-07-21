.class public Landroid/hardware/fingerprint/Fingerprint$JsonSerializer;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/Fingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonSerializer"
.end annotation


# static fields
.field private static final NAME_FINGERNAME:Ljava/lang/String; = "fingerName"

.field private static final NAME_ID:Ljava/lang/String; = "fingerId"

.field private static final NAME_USERID:Ljava/lang/String; = "userId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 157
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 158
    .local v1, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v1

    .line 161
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 160
    .local v3, "reader":Ljava/io/StringReader;
    const/4 v5, 0x0

    .line 162
    :try_start_1
    new-instance v2, Landroid/util/JsonReader;

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 160
    .local v2, "jsonReader":Landroid/util/JsonReader;
    const/4 v6, 0x0

    .line 164
    :try_start_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginArray()V

    .line 165
    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 166
    invoke-static {v2}, Landroid/hardware/fingerprint/Fingerprint$JsonSerializer;->readFingerprint(Landroid/util/JsonReader;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 160
    :catch_0
    move-exception v5

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    :catchall_0
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    :goto_2
    if-eqz v2, :cond_2

    if-eqz v6, :cond_7

    :try_start_4
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :goto_3
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 160
    .end local v2    # "jsonReader":Landroid/util/JsonReader;
    :catch_1
    move-exception v5

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 169
    :catchall_1
    move-exception v6

    move-object v7, v5

    move-object v5, v6

    :goto_4
    if-eqz v3, :cond_3

    if-eqz v7, :cond_9

    :try_start_7
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_5
    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .end local v3    # "reader":Ljava/io/StringReader;
    :catch_2
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Landroid/hardware/fingerprint/Fingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/fingerprint/Fingerprint;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse fingerprint from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "jsonReader":Landroid/util/JsonReader;
    .restart local v3    # "reader":Ljava/io/StringReader;
    :cond_4
    :try_start_9
    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 169
    if-eqz v2, :cond_5

    if-eqz v7, :cond_6

    :try_start_a
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_5
    :goto_6
    if-eqz v3, :cond_0

    if-eqz v7, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_0

    :catch_3
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_0

    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v2    # "jsonReader":Landroid/util/JsonReader;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v5

    goto :goto_4

    .restart local v2    # "jsonReader":Landroid/util/JsonReader;
    :cond_6
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V

    goto :goto_6

    :catch_5
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v2}, Landroid/util/JsonReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    :cond_8
    :try_start_e
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V

    goto/16 :goto_0

    .end local v2    # "jsonReader":Landroid/util/JsonReader;
    :catch_6
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_5

    .restart local v2    # "jsonReader":Landroid/util/JsonReader;
    :catchall_3
    move-exception v5

    move-object v6, v7

    goto :goto_2
.end method

.method private static readFingerprint(Landroid/util/JsonReader;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 7
    .param p0, "reader"    # Landroid/util/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "fingerName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 178
    .local v1, "id":I
    const/4 v3, 0x0

    .line 179
    .local v3, "userId":I
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 180
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "name":Ljava/lang/String;
    const-string v4, "fingerId"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    .line 184
    :cond_0
    const-string v4, "fingerName"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v4

    sget-object v5, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_1

    .line 185
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    const-string/jumbo v4, "userId"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 192
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 194
    new-instance v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v4
.end method

.method public static toJson(Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    const/4 v9, 0x0

    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    .local v5, "writer":Ljava/io/Writer;
    const/4 v7, 0x0

    .line 133
    :try_start_1
    new-instance v4, Landroid/util/JsonWriter;

    invoke-direct {v4, v5}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 131
    .local v4, "jsonWriter":Landroid/util/JsonWriter;
    const/4 v8, 0x0

    .line 135
    :try_start_2
    invoke-virtual {v4}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 137
    .local v1, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v4, v1}, Landroid/hardware/fingerprint/Fingerprint$JsonSerializer;->writeFingerprint(Landroid/util/JsonWriter;Landroid/hardware/fingerprint/Fingerprint;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 131
    .end local v1    # "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_1
    if-eqz v4, :cond_0

    if-eqz v8, :cond_6

    :try_start_4
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :goto_2
    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 131
    .end local v4    # "jsonWriter":Landroid/util/JsonWriter;
    :catch_1
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 141
    :catchall_1
    move-exception v8

    move-object v9, v7

    move-object v7, v8

    :goto_3
    if-eqz v5, :cond_1

    if-eqz v9, :cond_8

    :try_start_7
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_1
    :goto_4
    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v5    # "writer":Ljava/io/Writer;
    :catch_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    # getter for: Landroid/hardware/fingerprint/Fingerprint;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/fingerprint/Fingerprint;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Could not serialize fingerprint"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    return-object v3

    .line 139
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local v5    # "writer":Ljava/io/Writer;
    :cond_3
    :try_start_9
    invoke-virtual {v4}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 140
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v3

    .line 141
    if-eqz v4, :cond_4

    if-eqz v9, :cond_5

    :try_start_a
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_4
    :goto_6
    if-eqz v5, :cond_2

    if-eqz v9, :cond_7

    :try_start_b
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_5

    :catch_3
    move-exception v6

    .local v6, "x2":Ljava/lang/Throwable;
    :try_start_c
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    .end local v6    # "x2":Ljava/lang/Throwable;
    :catch_4
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonWriter":Landroid/util/JsonWriter;
    .end local v6    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v7

    goto :goto_3

    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "jsonWriter":Landroid/util/JsonWriter;
    :cond_5
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V

    goto :goto_6

    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_5
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v4}, Landroid/util/JsonWriter;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_e
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    goto :goto_5

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "jsonWriter":Landroid/util/JsonWriter;
    :catch_6
    move-exception v6

    .restart local v6    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v6    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_4

    .restart local v4    # "jsonWriter":Landroid/util/JsonWriter;
    :catchall_3
    move-exception v7

    move-object v8, v9

    goto :goto_1
.end method

.method private static writeFingerprint(Landroid/util/JsonWriter;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p0, "writer"    # Landroid/util/JsonWriter;
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 150
    const-string v0, "fingerId"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 151
    const-string v0, "fingerName"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 152
    const-string/jumbo v0, "userId"

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getUserId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 153
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 154
    return-void
.end method
