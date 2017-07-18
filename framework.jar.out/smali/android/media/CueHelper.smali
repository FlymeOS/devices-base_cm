.class public Landroid/media/CueHelper;
.super Ljava/lang/Object;
.source "CueHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/CueHelper$CueTrackInfo;,
        Landroid/media/CueHelper$CueTrackTag;,
        Landroid/media/CueHelper$CueTrack;
    }
.end annotation


# static fields
.field private static final AUDIO_FILETYPE:[I

.field private static final AUDIO_TYPE:[Ljava/lang/String;

.field public static final DOT_CUE:Ljava/lang/String; = ".cue"

.field public static final DOT_CUS:Ljava/lang/String; = ".cus"

.field private static final FILE:Ljava/lang/String; = "FILE"

.field private static final INDEX:Ljava/lang/String; = "INDEX"

.field public static final MAX_DURATION:J = 0x7fffffffL

.field private static final PERFORMER:Ljava/lang/String; = "PERFORMER"

.field private static final TITLE:Ljava/lang/String; = "TITLE"

.field private static final TRACK:Ljava/lang/String; = "TRACK"

.field private static final UTF8:Ljava/lang/String; = "UFT-8"


# instance fields
.field private m_cueFilePath:Ljava/lang/String;

.field private m_cuePerformer:Ljava/lang/String;

.field private m_cueTitle:Ljava/lang/String;

.field private m_cueTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/CueHelper$CueTrack;",
            ">;"
        }
    .end annotation
.end field

.field private m_musicFileName:Ljava/lang/String;

.field private m_musicFileNameWithExt:Ljava/lang/String;

.field private m_musicFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ".ape"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, ".flac"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, ".wav"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, ".fla"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, ".dts"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/CueHelper;->AUDIO_TYPE:[Ljava/lang/String;

    .line 49
    const/16 v0, 0x6f

    .line 50
    const/16 v1, 0x6e

    .line 51
    const/16 v2, 0x67

    .line 52
    const/16 v3, 0x72

    .line 49
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/media/CueHelper;->AUDIO_FILETYPE:[I

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 551
    iput-object v1, p0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    .line 552
    iput-object v1, p0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    .line 553
    iput-object v1, p0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    .line 554
    iput-object v1, p0, Landroid/media/CueHelper;->m_cueTitle:Ljava/lang/String;

    .line 555
    iput-object v1, p0, Landroid/media/CueHelper;->m_cuePerformer:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 557
    iput-object v1, p0, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public static getCharset(Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 133
    const-string/jumbo v1, "GBK"

    .line 134
    .local v1, "charset":Ljava/lang/String;
    const/4 v8, 0x3

    new-array v4, v8, [B

    .line 135
    .local v4, "first3Bytes":[B
    const/4 v5, 0x0

    .line 137
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 139
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 141
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v0, v4, v8, v9}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 142
    .local v7, "read":I
    if-ne v7, v10, :cond_1

    .line 158
    if-eqz v6, :cond_0

    .line 160
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v8, 0x0

    :try_start_3
    aget-byte v8, v4, v8

    if-ne v8, v10, :cond_5

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    if-ne v8, v11, :cond_5

    .line 146
    const-string/jumbo v1, "unicode"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 158
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 160
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v5, v6

    .line 166
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "read":I
    :cond_4
    :goto_3
    return-object v1

    .line 147
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "read":I
    :cond_5
    const/4 v8, 0x0

    :try_start_5
    aget-byte v8, v4, v8

    if-ne v8, v11, :cond_6

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    if-ne v8, v10, :cond_6

    .line 149
    const-string/jumbo v1, "unicode"

    goto :goto_1

    .line 150
    :cond_6
    const/4 v8, 0x0

    aget-byte v8, v4, v8

    const/16 v9, -0x11

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    const/16 v9, -0x45

    if-ne v8, v9, :cond_2

    .line 151
    const/4 v8, 0x2

    aget-byte v8, v4, v8

    const/16 v9, -0x41

    if-ne v8, v9, :cond_2

    .line 152
    const-string/jumbo v1, "UTF-8"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 161
    :catch_1
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 155
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "read":I
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .line 156
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 158
    if-eqz v5, :cond_4

    .line 160
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 161
    :catch_3
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 158
    :goto_5
    if-eqz v5, :cond_7

    .line 160
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 157
    :cond_7
    :goto_6
    throw v8

    .line 161
    :catch_4
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 155
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static getCharset([B)Ljava/lang/String;
    .locals 7
    .param p0, "content"    # [B

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 170
    const-string/jumbo v0, "GBK"

    .line 171
    .local v0, "charset":Ljava/lang/String;
    if-eqz p0, :cond_0

    array-length v1, p0

    if-le v1, v6, :cond_0

    .line 172
    aget-byte v1, p0, v3

    if-ne v1, v5, :cond_1

    aget-byte v1, p0, v4

    if-ne v1, v2, :cond_1

    .line 174
    const-string/jumbo v0, "unicode"

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :cond_1
    aget-byte v1, p0, v3

    if-ne v1, v2, :cond_2

    aget-byte v1, p0, v4

    if-ne v1, v5, :cond_2

    .line 177
    const-string/jumbo v0, "unicode"

    goto :goto_0

    .line 178
    :cond_2
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    aget-byte v1, p0, v3

    const/16 v2, -0x11

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v4

    const/16 v2, -0x45

    if-ne v1, v2, :cond_0

    .line 179
    aget-byte v1, p0, v6

    const/16 v2, -0x41

    if-ne v1, v2, :cond_0

    .line 180
    const-string/jumbo v0, "UTF-8"

    goto :goto_0
.end method

.method public static getCueFromCus(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "cusFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x4

    .line 105
    .local v2, "startIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "fileExt":Ljava/lang/String;
    const-string/jumbo v3, ".cus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    add-int/lit8 v2, v2, -0x1

    .line 108
    const/16 v3, 0x2e

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 109
    .local v1, "i":I
    if-lez v1, :cond_0

    if-ge v1, v2, :cond_0

    .line 110
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 114
    .end local v0    # "fileExt":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "startIndex":I
    :cond_0
    return-object v6
.end method

.method public static getCueFromMusic(Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .param p0, "musicFilePath"    # Ljava/lang/String;
    .param p1, "fileType"    # I

    .prologue
    const/4 v13, 0x0

    const/16 v9, 0x2e

    const/4 v12, -0x1

    const/4 v8, 0x0

    .line 64
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 66
    const/4 v6, 0x0

    .line 67
    .local v6, "needFind":Z
    const/4 v3, -0x1

    .line 69
    .local v3, "dotPos":I
    if-gez p1, :cond_2

    .line 70
    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 71
    if-le v3, v12, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_0

    .line 72
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "fileExt":Ljava/lang/String;
    sget-object v9, Landroid/media/CueHelper;->AUDIO_TYPE:[Ljava/lang/String;

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v0, v9, v7

    .line 75
    .local v0, "audioType":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 76
    const/4 v6, 0x1

    .line 91
    .end local v0    # "audioType":Ljava/lang/String;
    .end local v4    # "fileExt":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v6, :cond_4

    if-le v3, v12, :cond_4

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".cue"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "cueFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "cueFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 95
    return-object v2

    .line 74
    .end local v1    # "cueFile":Ljava/io/File;
    .end local v2    # "cueFilePath":Ljava/lang/String;
    .restart local v0    # "audioType":Ljava/lang/String;
    .restart local v4    # "fileExt":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "audioType":Ljava/lang/String;
    .end local v4    # "fileExt":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    sget-object v7, Landroid/media/CueHelper;->AUDIO_FILETYPE:[I

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 83
    sget-object v7, Landroid/media/CueHelper;->AUDIO_FILETYPE:[I

    aget v7, v7, v5

    if-ne p1, v7, :cond_3

    .line 84
    const/4 v6, 0x1

    .line 85
    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    goto :goto_1

    .line 82
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 99
    .end local v3    # "dotPos":I
    .end local v5    # "k":I
    .end local v6    # "needFind":Z
    :cond_4
    return-object v13
.end method

.method private static getLineContent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    const/16 v3, 0x22

    .line 189
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 190
    .local v1, "start":I
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 191
    .local v0, "end":I
    if-gez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 194
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMusicPathForCue(Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 386
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_1

    .line 387
    :cond_0
    const/16 v23, 0x0

    return-object v23

    .line 389
    :cond_1
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 394
    invoke-static {v11}, Landroid/media/CueHelper;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 398
    .local v12, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v12, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 400
    .local v5, "br":Ljava/io/BufferedReader;
    const-string/jumbo v23, "UFT-8"

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 401
    const-wide/16 v24, 0x1

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    .line 407
    :cond_2
    const/16 v17, 0x0

    .line 410
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 411
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_3

    .line 412
    const/16 v18, 0x0

    .line 413
    .local v18, "pos1":I
    :goto_0
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v23

    const/16 v24, 0x20

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 414
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 391
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "charset":Ljava/lang/String;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "line":Ljava/lang/String;
    .end local v18    # "pos1":I
    :cond_4
    const/16 v23, 0x0

    return-object v23

    .line 416
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "charset":Ljava/lang/String;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v18    # "pos1":I
    :cond_5
    const/16 v23, 0x20

    add-int/lit8 v24, v18, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    .line 417
    .local v19, "pos2":I
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 419
    .local v22, "word":Ljava/lang/String;
    const-string/jumbo v23, "FILE"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 421
    move/from16 v0, v19

    invoke-static {v13, v0}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 424
    .local v16, "musicFileNameWithExt":Ljava/lang/String;
    const/16 v23, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 425
    .local v20, "sepPos":I
    if-ltz v20, :cond_6

    .line 426
    add-int/lit8 v23, v20, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 430
    .local v7, "cueDir":Ljava/lang/String;
    :goto_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 432
    .local v17, "musicFilePath":Ljava/lang/String;
    const/16 v23, 0x2e

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 433
    .local v9, "dotPos":I
    if-lez v9, :cond_7

    .line 434
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 439
    .local v15, "musicFileName":Ljava/lang/String;
    :goto_2
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    .local v14, "musicFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_9

    .line 441
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    const-string/jumbo v25, ".cue"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, "cueFileName":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 443
    sget-object v24, Landroid/media/CueHelper;->AUDIO_TYPE:[Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    aget-object v4, v24, v23

    .line 444
    .local v4, "audioType":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 445
    .local v21, "tryFile":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    .end local v14    # "musicFile":Ljava/io/File;
    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .restart local v14    # "musicFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 447
    move-object/from16 v17, v21

    .line 450
    return-object v17

    .line 428
    .end local v4    # "audioType":Ljava/lang/String;
    .end local v7    # "cueDir":Ljava/lang/String;
    .end local v8    # "cueFileName":Ljava/lang/String;
    .end local v9    # "dotPos":I
    .end local v14    # "musicFile":Ljava/io/File;
    .end local v15    # "musicFileName":Ljava/lang/String;
    .end local v17    # "musicFilePath":Ljava/lang/String;
    .end local v21    # "tryFile":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, ""

    .restart local v7    # "cueDir":Ljava/lang/String;
    goto/16 :goto_1

    .line 436
    .restart local v9    # "dotPos":I
    .restart local v17    # "musicFilePath":Ljava/lang/String;
    :cond_7
    move-object/from16 v15, v16

    .restart local v15    # "musicFileName":Ljava/lang/String;
    goto :goto_2

    .line 443
    .restart local v4    # "audioType":Ljava/lang/String;
    .restart local v8    # "cueFileName":Ljava/lang/String;
    .restart local v14    # "musicFile":Ljava/io/File;
    .restart local v21    # "tryFile":Ljava/lang/String;
    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 455
    .end local v4    # "audioType":Ljava/lang/String;
    .end local v8    # "cueFileName":Ljava/lang/String;
    .end local v21    # "tryFile":Ljava/lang/String;
    :cond_9
    return-object v17

    .line 461
    .end local v7    # "cueDir":Ljava/lang/String;
    .end local v9    # "dotPos":I
    .end local v14    # "musicFile":Ljava/io/File;
    .end local v15    # "musicFileName":Ljava/lang/String;
    .end local v16    # "musicFileNameWithExt":Ljava/lang/String;
    .end local v17    # "musicFilePath":Ljava/lang/String;
    .end local v18    # "pos1":I
    .end local v19    # "pos2":I
    .end local v20    # "sepPos":I
    .end local v22    # "word":Ljava/lang/String;
    :cond_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    const/16 v23, 0x0

    return-object v23

    .line 463
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "line":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 464
    .local v10, "e":Ljava/lang/Exception;
    const/16 v23, 0x0

    return-object v23
.end method

.method private static getPreTime(Ljava/lang/String;I)J
    .locals 12
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    const/16 v9, 0x3a

    const/16 v8, 0x20

    const-wide/16 v10, 0x3e8

    .line 224
    invoke-virtual {p0, v8, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 225
    .local v2, "pos":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    const-wide/16 v8, -0x1

    return-wide v8

    .line 229
    :cond_0
    add-int/lit8 v2, v2, 0x2

    .line 230
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_1

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_1
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 236
    .local v0, "m":J
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 237
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 238
    .local v4, "s":J
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 239
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 241
    .local v6, "z":J
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    mul-long v0, v8, v10

    .line 242
    mul-long/2addr v4, v10

    .line 243
    mul-long v8, v6, v10

    const-wide/16 v10, 0x4b

    div-long v6, v8, v10

    .line 245
    add-long v8, v0, v4

    add-long/2addr v8, v6

    return-wide v8
.end method

.method private static getTime(Ljava/lang/String;I)J
    .locals 13
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    const/16 v12, 0x3a

    const/16 v9, 0x20

    const-wide/16 v10, 0x3e8

    .line 199
    invoke-virtual {p0, v9, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 200
    .local v2, "pos":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_0

    .line 201
    const-wide/16 v8, -0x1

    return-wide v8

    .line 204
    :cond_0
    add-int/lit8 v2, v2, 0x2

    .line 205
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_1

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_1
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 211
    .local v0, "m":J
    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 212
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 213
    .local v4, "s":J
    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v8, v2, 0x2

    if-ge v3, v8, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 216
    .local v6, "z":J
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    mul-long v0, v8, v10

    .line 217
    mul-long/2addr v4, v10

    .line 218
    mul-long v8, v6, v10

    const-wide/16 v10, 0x4b

    div-long v6, v8, v10

    .line 220
    add-long v8, v0, v4

    add-long/2addr v8, v6

    return-wide v8

    .line 214
    .end local v6    # "z":J
    :cond_2
    add-int/lit8 v3, v2, 0x2

    goto :goto_1
.end method

.method public static getTrackFromCus(Ljava/lang/String;)I
    .locals 5
    .param p0, "cusFilePath"    # Ljava/lang/String;

    .prologue
    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x4

    .line 120
    .local v2, "startIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "fileExt":Ljava/lang/String;
    const-string/jumbo v3, ".cus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    add-int/lit8 v2, v2, -0x1

    .line 123
    const/16 v3, 0x2e

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 124
    .local v1, "i":I
    if-lez v1, :cond_0

    if-ge v1, v2, :cond_0

    .line 125
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 129
    .end local v0    # "fileExt":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "startIndex":I
    :cond_0
    const/4 v3, -0x1

    return v3
.end method


# virtual methods
.method public getCuePerformer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Landroid/media/CueHelper;->m_cuePerformer:Ljava/lang/String;

    return-object v0
.end method

.method public getCueTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Landroid/media/CueHelper;->m_cueTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTrackInfo(I)Landroid/media/CueHelper$CueTrackInfo;
    .locals 12
    .param p1, "track"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 473
    const/4 v7, 0x1

    if-lt p1, v7, :cond_0

    iget-object v7, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le p1, v7, :cond_1

    .line 474
    :cond_0
    return-object v8

    .line 476
    :cond_1
    new-instance v6, Landroid/media/CueHelper$CueTrackInfo;

    invoke-direct {v6, p0}, Landroid/media/CueHelper$CueTrackInfo;-><init>(Landroid/media/CueHelper;)V

    .line 477
    .local v6, "trackInfo":Landroid/media/CueHelper$CueTrackInfo;
    iget-object v7, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/CueHelper$CueTrack;

    iget-wide v8, v7, Landroid/media/CueHelper$CueTrack;->startTime:J

    iput-wide v8, v6, Landroid/media/CueHelper$CueTrackInfo;->startTime:J

    .line 478
    iget-object v7, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne p1, v7, :cond_3

    .line 479
    iput-wide v10, v6, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    .line 487
    :goto_0
    iget-wide v8, v6, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 488
    const/4 v1, 0x0

    .line 490
    .local v1, "mmr":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v1    # "mmr":Landroid/media/MediaMetadataRetriever;
    .local v2, "mmr":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    iget-object v7, p0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 492
    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "str":Ljava/lang/String;
    const-string/jumbo v7, "CueHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "duration = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    if-eqz v3, :cond_5

    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v6, Landroid/media/CueHelper$CueTrackInfo;->endTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 503
    :goto_1
    if-eqz v2, :cond_2

    .line 504
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 509
    .end local v2    # "mmr":Landroid/media/MediaMetadataRetriever;
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v7, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/CueHelper$CueTrack;

    iget-object v7, v7, Landroid/media/CueHelper$CueTrack;->musicpath:Ljava/lang/String;

    iput-object v7, v6, Landroid/media/CueHelper$CueTrackInfo;->musicFilePath:Ljava/lang/String;

    .line 511
    return-object v6

    .line 482
    :cond_3
    iget-object v7, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/CueHelper$CueTrack;

    iget-wide v4, v7, Landroid/media/CueHelper$CueTrack;->preStart:J

    .line 483
    .local v4, "nextPre":J
    cmp-long v7, v4, v10

    if-nez v7, :cond_4

    .line 484
    iget-object v7, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/CueHelper$CueTrack;

    iget-wide v4, v7, Landroid/media/CueHelper$CueTrack;->startTime:J

    .line 483
    .end local v4    # "nextPre":J
    :cond_4
    iput-wide v4, v6, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    goto :goto_0

    .line 497
    .restart local v2    # "mmr":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "str":Ljava/lang/String;
    :cond_5
    const-wide/32 v8, 0x7fffffff

    :try_start_2
    iput-wide v8, v6, Landroid/media/CueHelper$CueTrackInfo;->endTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 499
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e1":Ljava/lang/Exception;
    move-object v1, v2

    .line 500
    .end local v2    # "mmr":Landroid/media/MediaMetadataRetriever;
    :goto_3
    const-wide/32 v8, 0x7fffffff

    :try_start_3
    iput-wide v8, v6, Landroid/media/CueHelper$CueTrackInfo;->endTime:J

    .line 501
    const-string/jumbo v7, "CueHelper"

    const-string/jumbo v8, "MediaMetadataRetriever to get duration failed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 503
    if-eqz v1, :cond_2

    .line 504
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    .line 502
    .end local v0    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 503
    :goto_4
    if-eqz v1, :cond_6

    .line 504
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 502
    :cond_6
    throw v7

    .restart local v2    # "mmr":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "mmr":Landroid/media/MediaMetadataRetriever;
    .local v1, "mmr":Landroid/media/MediaMetadataRetriever;
    goto :goto_4

    .line 499
    .local v1, "mmr":Landroid/media/MediaMetadataRetriever;
    :catch_1
    move-exception v0

    .restart local v0    # "e1":Ljava/lang/Exception;
    goto :goto_3
.end method

.method public getTrackTag(I)Landroid/media/CueHelper$CueTrackTag;
    .locals 4
    .param p1, "track"    # I

    .prologue
    const/4 v3, 0x0

    .line 523
    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 524
    :cond_0
    return-object v3

    .line 526
    :cond_1
    iget-object v2, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/CueHelper$CueTrack;

    .line 527
    .local v0, "cueTrack":Landroid/media/CueHelper$CueTrack;
    new-instance v1, Landroid/media/CueHelper$CueTrackTag;

    invoke-direct {v1, p0}, Landroid/media/CueHelper$CueTrackTag;-><init>(Landroid/media/CueHelper;)V

    .line 528
    .local v1, "trackTag":Landroid/media/CueHelper$CueTrackTag;
    iget-object v2, p0, Landroid/media/CueHelper;->m_cueTitle:Ljava/lang/String;

    iput-object v2, v1, Landroid/media/CueHelper$CueTrackTag;->album:Ljava/lang/String;

    .line 529
    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->artist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_2
    iget-object v2, p0, Landroid/media/CueHelper;->m_cuePerformer:Ljava/lang/String;

    :goto_0
    iput-object v2, v1, Landroid/media/CueHelper$CueTrackTag;->artist:Ljava/lang/String;

    .line 530
    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    :cond_3
    iget-object v2, p0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Landroid/media/CueHelper$CueTrackTag;->title:Ljava/lang/String;

    .line 531
    return-object v1

    .line 529
    :cond_4
    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->artist:Ljava/lang/String;

    goto :goto_0

    .line 530
    :cond_5
    iget-object v2, v0, Landroid/media/CueHelper$CueTrack;->title:Ljava/lang/String;

    goto :goto_1
.end method

.method public loadCueFile(Ljava/lang/String;)Z
    .locals 29
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 251
    const/16 v25, 0x1

    return v25

    .line 254
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/media/CueHelper;->clear()V

    .line 256
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_2

    .line 257
    :cond_1
    const/16 v25, 0x0

    return v25

    .line 259
    :cond_2
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 264
    invoke-static {v13}, Landroid/media/CueHelper;->getCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, "charset":Ljava/lang/String;
    const/16 v22, 0x0

    .line 267
    .local v22, "trackCount":I
    new-instance v9, Landroid/media/CueHelper$CueTrack;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/media/CueHelper$CueTrack;-><init>(Landroid/media/CueHelper;)V

    .line 270
    .local v9, "cueTrack":Landroid/media/CueHelper$CueTrack;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 271
    .local v14, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v0, v14, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 273
    .local v5, "br":Ljava/io/BufferedReader;
    const-string/jumbo v25, "UFT-8"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 274
    const-wide/16 v26, 0x1

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Ljava/io/BufferedReader;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, v9

    .line 280
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .local v10, "cueTrack":Landroid/media/CueHelper$CueTrack;
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_11

    .line 281
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    if-eqz v25, :cond_14

    .line 282
    const/16 v17, 0x0

    .line 283
    .local v17, "pos1":I
    :goto_1
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 284
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 261
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "charset":Ljava/lang/String;
    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "pos1":I
    .end local v22    # "trackCount":I
    :cond_3
    const/16 v25, 0x0

    return v25

    .line 286
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "charset":Ljava/lang/String;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pos1":I
    .restart local v22    # "trackCount":I
    :cond_4
    const/16 v25, 0x20

    add-int/lit8 v26, v17, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v18

    .line 287
    .local v18, "pos2":I
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 288
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 293
    .local v24, "word":Ljava/lang/String;
    :goto_2
    const-string/jumbo v25, "INDEX"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 294
    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/media/CueHelper;->getTime(Ljava/lang/String;I)J

    move-result-wide v20

    .line 295
    .local v20, "time":J
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-lez v25, :cond_7

    .line 296
    move-wide/from16 v0, v20

    iput-wide v0, v10, Landroid/media/CueHelper$CueTrack;->startTime:J

    move-object v9, v10

    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "pos1":I
    .end local v18    # "pos2":I
    .end local v20    # "time":J
    .end local v24    # "word":Ljava/lang/String;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :cond_5
    :goto_3
    move-object v10, v9

    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto :goto_0

    .line 290
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "pos1":I
    .restart local v18    # "pos2":I
    :cond_6
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24    # "word":Ljava/lang/String;
    goto :goto_2

    .line 298
    .restart local v20    # "time":J
    :cond_7
    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/media/CueHelper;->getPreTime(Ljava/lang/String;I)J

    move-result-wide v20

    .line 299
    const-wide/16 v26, 0x0

    cmp-long v25, v20, v26

    if-lez v25, :cond_14

    .line 300
    move-wide/from16 v0, v20

    iput-wide v0, v10, Landroid/media/CueHelper$CueTrack;->preStart:J

    move-object v9, v10

    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto :goto_3

    .line 303
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .end local v20    # "time":J
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :cond_8
    const-string/jumbo v25, "TITLE"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 304
    if-nez v22, :cond_9

    .line 305
    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_cueTitle:Ljava/lang/String;

    move-object v9, v10

    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto :goto_3

    .line 307
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :cond_9
    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Landroid/media/CueHelper$CueTrack;->title:Ljava/lang/String;

    move-object v9, v10

    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto :goto_3

    .line 309
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :cond_a
    const-string/jumbo v25, "PERFORMER"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 310
    if-nez v22, :cond_b

    .line 311
    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_cuePerformer:Ljava/lang/String;

    move-object v9, v10

    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto :goto_3

    .line 313
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :cond_b
    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v10, Landroid/media/CueHelper$CueTrack;->artist:Ljava/lang/String;

    move-object v9, v10

    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto :goto_3

    .line 315
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :cond_c
    const-string/jumbo v25, "TRACK"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 316
    if-lez v22, :cond_15

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v9, Landroid/media/CueHelper$CueTrack;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/media/CueHelper$CueTrack;-><init>(Landroid/media/CueHelper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v9, Landroid/media/CueHelper$CueTrack;->musicpath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 321
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 322
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :cond_d
    :try_start_3
    const-string/jumbo v25, "FILE"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 324
    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/media/CueHelper;->getLineContent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    .line 327
    const/16 v25, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 328
    .local v19, "sepPos":I
    if-ltz v19, :cond_e

    .line 329
    add-int/lit8 v25, v19, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "cueDir":Ljava/lang/String;
    :goto_5
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x2e

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 336
    .local v11, "dotPos":I
    if-lez v11, :cond_f

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    .line 342
    :goto_6
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v16, "musicFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_14

    .line 344
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v26

    const-string/jumbo v27, ".cue"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 345
    .local v8, "cueFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 346
    sget-object v26, Landroid/media/CueHelper;->AUDIO_TYPE:[Ljava/lang/String;

    const/16 v25, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_14

    aget-object v4, v26, v25

    .line 347
    .local v4, "audioType":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 348
    .local v23, "tryFile":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    .end local v16    # "musicFile":Ljava/io/File;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v16    # "musicFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 350
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFilePath:Ljava/lang/String;

    .line 351
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;

    .line 352
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object v9, v10

    .line 353
    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto/16 :goto_3

    .line 331
    .end local v4    # "audioType":Ljava/lang/String;
    .end local v7    # "cueDir":Ljava/lang/String;
    .end local v8    # "cueFileName":Ljava/lang/String;
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .end local v11    # "dotPos":I
    .end local v16    # "musicFile":Ljava/io/File;
    .end local v23    # "tryFile":Ljava/lang/String;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :cond_e
    const-string/jumbo v7, ""

    .restart local v7    # "cueDir":Ljava/lang/String;
    goto/16 :goto_5

    .line 339
    .restart local v11    # "dotPos":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_musicFileNameWithExt:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_musicFileName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 364
    .end local v7    # "cueDir":Ljava/lang/String;
    .end local v11    # "dotPos":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v17    # "pos1":I
    .end local v18    # "pos2":I
    .end local v19    # "sepPos":I
    .end local v24    # "word":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    move-object v9, v10

    .line 365
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :goto_8
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    invoke-direct/range {p0 .. p0}, Landroid/media/CueHelper;->clear()V

    .line 367
    const/16 v25, 0x0

    return v25

    .line 346
    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "audioType":Ljava/lang/String;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "cueDir":Ljava/lang/String;
    .restart local v8    # "cueFileName":Ljava/lang/String;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v11    # "dotPos":I
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "musicFile":Ljava/io/File;
    .restart local v17    # "pos1":I
    .restart local v18    # "pos2":I
    .restart local v19    # "sepPos":I
    .restart local v23    # "tryFile":Ljava/lang/String;
    .restart local v24    # "word":Ljava/lang/String;
    :cond_10
    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    .line 362
    .end local v4    # "audioType":Ljava/lang/String;
    .end local v7    # "cueDir":Ljava/lang/String;
    .end local v8    # "cueFileName":Ljava/lang/String;
    .end local v11    # "dotPos":I
    .end local v16    # "musicFile":Ljava/io/File;
    .end local v17    # "pos1":I
    .end local v18    # "pos2":I
    .end local v19    # "sepPos":I
    .end local v23    # "tryFile":Ljava/lang/String;
    .end local v24    # "word":Ljava/lang/String;
    :cond_11
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-gtz v25, :cond_13

    .line 376
    const/16 v25, 0x0

    return v25

    .line 379
    :cond_13
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    .line 381
    const/16 v25, 0x1

    return v25

    .line 364
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .end local v14    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "line":Ljava/lang/String;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    :catch_1
    move-exception v12

    .restart local v12    # "e":Ljava/lang/Exception;
    goto :goto_8

    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v14    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_14
    move-object v9, v10

    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto/16 :goto_3

    .end local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v17    # "pos1":I
    .restart local v18    # "pos2":I
    .restart local v24    # "word":Ljava/lang/String;
    :cond_15
    move-object v9, v10

    .end local v10    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    .restart local v9    # "cueTrack":Landroid/media/CueHelper$CueTrack;
    goto/16 :goto_4
.end method

.method public makeCusForTrack(I)Ljava/lang/String;
    .locals 2
    .param p1, "track"    # I

    .prologue
    .line 535
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroid/media/CueHelper;->m_cueTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 536
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 538
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/CueHelper;->m_cueFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".cus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
