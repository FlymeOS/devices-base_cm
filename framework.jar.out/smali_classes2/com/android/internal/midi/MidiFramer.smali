.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "MidiFramer.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mCount:I

.field private mInSysEx:Z

.field private mNeeded:I

.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field private mRunningStatus:B


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 36
    const-string/jumbo v0, "MidiFramer"

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 45
    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 44
    return-void
.end method

.method public static formatMidiData([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIDI+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "text":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "0x%02X, "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_1

    move/from16 v4, p2

    .line 64
    .local v4, "sysExStartOffset":I
    :goto_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, p3

    if-ge v14, v0, :cond_9

    .line 65
    aget-byte v12, p1, p2

    .line 66
    .local v12, "currentByte":B
    and-int/lit16 v13, v12, 0xff

    .line 67
    .local v13, "currentInt":I
    const/16 v2, 0x80

    if-lt v13, v2, :cond_7

    .line 68
    const/16 v2, 0xf0

    if-ge v13, v2, :cond_2

    .line 69
    move-object/from16 v0, p0

    iput-byte v12, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 70
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 71
    invoke-static {v12}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 113
    :cond_0
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 64
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 62
    .end local v4    # "sysExStartOffset":I
    .end local v12    # "currentByte":B
    .end local v13    # "currentInt":I
    .end local v14    # "i":I
    :cond_1
    const/4 v4, -0x1

    .restart local v4    # "sysExStartOffset":I
    goto :goto_0

    .line 72
    .restart local v12    # "currentByte":B
    .restart local v13    # "currentInt":I
    .restart local v14    # "i":I
    :cond_2
    const/16 v2, 0xf8

    if-ge v13, v2, :cond_5

    .line 73
    const/16 v2, 0xf0

    if-ne v13, v2, :cond_3

    .line 75
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 76
    move/from16 v4, p2

    goto :goto_2

    .line 77
    :cond_3
    const/16 v2, 0xf7

    if-ne v13, v2, :cond_4

    .line 79
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 81
    sub-int v3, p2, v4

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    .line 80
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 82
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 83
    const/4 v4, -0x1

    goto :goto_2

    .line 86
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    const/4 v3, 0x0

    aput-byte v12, v2, v3

    .line 87
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-byte v2, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 88
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 89
    invoke-static {v12}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    goto :goto_2

    .line 93
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-eqz v2, :cond_6

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 95
    sub-int v5, p2, v4

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    .line 94
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 96
    add-int/lit8 v4, p2, 0x1

    .line 98
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    const/4 v9, 0x1

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    goto :goto_2

    .line 101
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    if-nez v2, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    aput-byte v12, v2, v3

    .line 103
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    if-nez v2, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-byte v2, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    if-eqz v2, :cond_8

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    move-object/from16 v0, p0

    iget-byte v3, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    const/4 v5, 0x0

    aput-byte v3, v2, v5

    .line 107
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    const/4 v8, 0x0

    move-wide/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 109
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    goto/16 :goto_2

    .line 117
    .end local v12    # "currentByte":B
    .end local v13    # "currentInt":I
    :cond_9
    if-ltz v4, :cond_a

    move/from16 v0, p2

    if-ge v4, v0, :cond_a

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 119
    sub-int v5, p2, v4

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    .line 118
    invoke-virtual/range {v2 .. v7}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 61
    :cond_a
    return-void
.end method
