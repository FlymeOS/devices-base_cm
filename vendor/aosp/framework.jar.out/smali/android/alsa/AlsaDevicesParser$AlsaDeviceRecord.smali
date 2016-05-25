.class public Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/alsa/AlsaDevicesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaDeviceRecord"
.end annotation


# static fields
.field public static final kDeviceDir_Capture:I = 0x0

.field public static final kDeviceDir_Playback:I = 0x1

.field public static final kDeviceDir_Unknown:I = -0x1

.field public static final kDeviceType_Audio:I = 0x0

.field public static final kDeviceType_Control:I = 0x1

.field public static final kDeviceType_MIDI:I = 0x2

.field public static final kDeviceType_Unknown:I = -0x1


# instance fields
.field mCardNum:I

.field mDeviceDir:I

.field mDeviceNum:I

.field mDeviceType:I

.field final synthetic this$0:Landroid/alsa/AlsaDevicesParser;


# direct methods
.method public constructor <init>(Landroid/alsa/AlsaDevicesParser;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 61
    iput-object p1, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Landroid/alsa/AlsaDevicesParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    .line 57
    iput v0, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    .line 58
    iput v0, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    .line 59
    iput v0, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 62
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Z
    .locals 12
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v3, 0x0

    .line 72
    .local v3, "kToken_LineNum":I
    const/4 v1, 0x1

    .line 73
    .local v1, "kToken_CardNum":I
    const/4 v2, 0x2

    .line 74
    .local v2, "kToken_DeviceNum":I
    const/4 v4, 0x3

    .line 75
    .local v4, "kToken_Type0":I
    const/4 v5, 0x4

    .line 76
    .local v5, "kToken_Type1":I
    const/4 v6, 0x5

    .line 78
    .local v6, "kToken_Type2":I
    const/4 v9, 0x0

    .line 79
    .local v9, "tokenOffset":I
    const/4 v0, 0x0

    .line 80
    .local v0, "delimOffset":I
    const/4 v8, 0x0

    .line 82
    .local v8, "tokenIndex":I
    :goto_0
    # getter for: Landroid/alsa/AlsaDevicesParser;->mTokenizer:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaDevicesParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v10

    invoke-virtual {v10, p1, v0}, Landroid/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v9

    .line 83
    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 141
    const/4 v10, 0x1

    return v10

    .line 86
    :cond_0
    # getter for: Landroid/alsa/AlsaDevicesParser;->mTokenizer:Landroid/alsa/LineTokenizer;
    invoke-static {}, Landroid/alsa/AlsaDevicesParser;->access$000()Landroid/alsa/LineTokenizer;

    move-result-object v10

    invoke-virtual {v10, p1, v9}, Landroid/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v0

    .line 87
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    :cond_1
    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "token":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 138
    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    .line 139
    goto :goto_0

    .line 98
    :pswitch_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_2

    .line 100
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 105
    :pswitch_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    goto :goto_1

    .line 109
    :pswitch_3
    const-string v10, "digital"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 111
    const-string v10, "control"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 112
    const/4 v10, 0x1

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_1

    .line 113
    :cond_3
    const-string/jumbo v10, "raw"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 119
    :pswitch_4
    const-string v10, "audio"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 120
    const/4 v10, 0x0

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_1

    .line 121
    :cond_4
    const-string/jumbo v10, "midi"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 122
    const/4 v10, 0x2

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    .line 123
    iget-object v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Landroid/alsa/AlsaDevicesParser;

    const/4 v11, 0x1

    # setter for: Landroid/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z
    invoke-static {v10, v11}, Landroid/alsa/AlsaDevicesParser;->access$102(Landroid/alsa/AlsaDevicesParser;Z)Z

    goto :goto_1

    .line 128
    :pswitch_5
    const-string v10, "capture"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 129
    const/4 v10, 0x0

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 130
    iget-object v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Landroid/alsa/AlsaDevicesParser;

    const/4 v11, 0x1

    # setter for: Landroid/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z
    invoke-static {v10, v11}, Landroid/alsa/AlsaDevicesParser;->access$202(Landroid/alsa/AlsaDevicesParser;Z)Z

    goto :goto_1

    .line 131
    :cond_5
    const-string/jumbo v10, "playback"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 132
    const/4 v10, 0x1

    iput v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 133
    iget-object v10, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Landroid/alsa/AlsaDevicesParser;

    const/4 v11, 0x1

    # setter for: Landroid/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z
    invoke-static {v10, v11}, Landroid/alsa/AlsaDevicesParser;->access$302(Landroid/alsa/AlsaDevicesParser;Z)Z

    goto :goto_1

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public textFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    packed-switch v1, :pswitch_data_0

    .line 163
    :goto_0
    iget v1, p0, Landroid/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    packed-switch v1, :pswitch_data_1

    .line 175
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 150
    :pswitch_0
    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    :pswitch_1
    const-string v1, " Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v1, " Control"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 159
    :pswitch_3
    const-string v1, " MIDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 165
    :pswitch_4
    const-string v1, " N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 168
    :pswitch_5
    const-string v1, " Capture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :pswitch_6
    const-string v1, " Playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 148
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 163
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
