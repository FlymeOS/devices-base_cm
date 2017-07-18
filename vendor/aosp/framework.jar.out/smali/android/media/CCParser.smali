.class Landroid/media/CCParser;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/CCParser$DisplayListener;,
        Landroid/media/CCParser$StyleCode;,
        Landroid/media/CCParser$PAC;,
        Landroid/media/CCParser$CCLineBuilder;,
        Landroid/media/CCParser$CCMemory;,
        Landroid/media/CCParser$CCData;
    }
.end annotation


# static fields
.field private static final AOF:I = 0x22

.field private static final AON:I = 0x23

.field private static final BS:I = 0x21

.field private static final CR:I = 0x2d

.field private static final DEBUG:Z

.field private static final DER:I = 0x24

.field private static final EDM:I = 0x2c

.field private static final ENM:I = 0x2e

.field private static final EOC:I = 0x2f

.field private static final FON:I = 0x28

.field private static final INVALID:I = -0x1

.field public static final MAX_COLS:I = 0x20

.field public static final MAX_ROWS:I = 0xf

.field private static final MODE_PAINT_ON:I = 0x1

.field private static final MODE_POP_ON:I = 0x3

.field private static final MODE_ROLL_UP:I = 0x2

.field private static final MODE_TEXT:I = 0x4

.field private static final MODE_UNKNOWN:I = 0x0

.field private static final RCL:I = 0x20

.field private static final RDC:I = 0x29

.field private static final RTD:I = 0x2b

.field private static final RU2:I = 0x25

.field private static final RU3:I = 0x26

.field private static final RU4:I = 0x27

.field private static final TAG:Ljava/lang/String; = "CCParser"

.field private static final TR:I = 0x2a

.field private static final TS:C = '\u00a0'


# instance fields
.field private mDisplay:Landroid/media/CCParser$CCMemory;

.field private final mListener:Landroid/media/CCParser$DisplayListener;

.field private mMode:I

.field private mNonDisplay:Landroid/media/CCParser$CCMemory;

.field private mPrevCtrlCode:I

.field private mRollUpSize:I

.field private mTextMem:Landroid/media/CCParser$CCMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "CCParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/CCParser;->DEBUG:Z

    .line 116
    return-void
.end method

.method constructor <init>(Landroid/media/CCParser$DisplayListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/CCParser$DisplayListener;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/CCParser;->mMode:I

    .line 156
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/CCParser;->mRollUpSize:I

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/CCParser;->mPrevCtrlCode:I

    .line 159
    new-instance v0, Landroid/media/CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    .line 160
    new-instance v0, Landroid/media/CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    .line 161
    new-instance v0, Landroid/media/CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/CCParser;->mTextMem:Landroid/media/CCParser$CCMemory;

    .line 164
    iput-object p1, p0, Landroid/media/CCParser;->mListener:Landroid/media/CCParser$DisplayListener;

    .line 163
    return-void
.end method

.method private getMemory()Landroid/media/CCParser$CCMemory;
    .locals 3

    .prologue
    .line 193
    iget v0, p0, Landroid/media/CCParser;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 204
    const-string/jumbo v0, "CCParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecoginized mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/CCParser;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    return-object v0

    .line 195
    :pswitch_0
    iget-object v0, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    return-object v0

    .line 199
    :pswitch_1
    iget-object v0, p0, Landroid/media/CCParser;->mTextMem:Landroid/media/CCParser$CCMemory;

    return-object v0

    .line 202
    :pswitch_2
    iget-object v0, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    return-object v0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleCtrlCode(Landroid/media/CCParser$CCData;)Z
    .locals 7
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    .line 263
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getCtrlCode()I

    move-result v0

    .line 265
    .local v0, "ctrlCode":I
    iget v1, p0, Landroid/media/CCParser;->mPrevCtrlCode:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/media/CCParser;->mPrevCtrlCode:I

    if-ne v1, v0, :cond_0

    .line 267
    iput v2, p0, Landroid/media/CCParser;->mPrevCtrlCode:I

    .line 268
    return v4

    .line 271
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 336
    :pswitch_0
    iput v2, p0, Landroid/media/CCParser;->mPrevCtrlCode:I

    .line 337
    const/4 v1, 0x0

    return v1

    .line 274
    :pswitch_1
    iput v5, p0, Landroid/media/CCParser;->mMode:I

    .line 340
    :cond_1
    :goto_0
    iput v0, p0, Landroid/media/CCParser;->mPrevCtrlCode:I

    .line 343
    return v4

    .line 277
    :pswitch_2
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->bs()V

    goto :goto_0

    .line 280
    :pswitch_3
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->der()V

    goto :goto_0

    .line 285
    :pswitch_4
    add-int/lit8 v1, v0, -0x23

    iput v1, p0, Landroid/media/CCParser;->mRollUpSize:I

    .line 287
    iget v1, p0, Landroid/media/CCParser;->mMode:I

    if-eq v1, v3, :cond_2

    .line 288
    iget-object v1, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->erase()V

    .line 289
    iget-object v1, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->erase()V

    .line 292
    :cond_2
    iput v3, p0, Landroid/media/CCParser;->mMode:I

    goto :goto_0

    .line 295
    :pswitch_5
    const-string/jumbo v1, "CCParser"

    const-string/jumbo v2, "Flash On"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :pswitch_6
    iput v4, p0, Landroid/media/CCParser;->mMode:I

    goto :goto_0

    .line 302
    :pswitch_7
    iput v6, p0, Landroid/media/CCParser;->mMode:I

    .line 303
    iget-object v1, p0, Landroid/media/CCParser;->mTextMem:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->erase()V

    goto :goto_0

    .line 306
    :pswitch_8
    iput v6, p0, Landroid/media/CCParser;->mMode:I

    goto :goto_0

    .line 310
    :pswitch_9
    iget-object v1, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->erase()V

    .line 311
    invoke-direct {p0}, Landroid/media/CCParser;->updateDisplay()V

    goto :goto_0

    .line 314
    :pswitch_a
    iget v1, p0, Landroid/media/CCParser;->mMode:I

    if-ne v1, v3, :cond_3

    .line 315
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    iget v2, p0, Landroid/media/CCParser;->mRollUpSize:I

    invoke-virtual {v1, v2}, Landroid/media/CCParser$CCMemory;->rollUp(I)V

    .line 319
    :goto_1
    iget v1, p0, Landroid/media/CCParser;->mMode:I

    if-ne v1, v3, :cond_1

    .line 320
    invoke-direct {p0}, Landroid/media/CCParser;->updateDisplay()V

    goto :goto_0

    .line 317
    :cond_3
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->cr()V

    goto :goto_1

    .line 325
    :pswitch_b
    iget-object v1, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/CCParser$CCMemory;->erase()V

    goto :goto_0

    .line 329
    :pswitch_c
    invoke-direct {p0}, Landroid/media/CCParser;->swapMemory()V

    .line 331
    iput v5, p0, Landroid/media/CCParser;->mMode:I

    .line 332
    invoke-direct {p0}, Landroid/media/CCParser;->updateDisplay()V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private handleDisplayableChars(Landroid/media/CCParser$CCData;)Z
    .locals 3
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    const/4 v2, 0x1

    .line 210
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    return v0

    .line 215
    :cond_0
    invoke-static {p1}, Landroid/media/CCParser$CCData;->-wrap0(Landroid/media/CCParser$CCData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/CCParser$CCMemory;->bs()V

    .line 219
    :cond_1
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Landroid/media/CCParser;->mMode:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/media/CCParser;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 222
    :cond_2
    invoke-direct {p0}, Landroid/media/CCParser;->updateDisplay()V

    .line 225
    :cond_3
    return v2
.end method

.method private handleMidRowCode(Landroid/media/CCParser$CCData;)Z
    .locals 2
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getMidRow()Landroid/media/CCParser$StyleCode;

    move-result-object v0

    .line 230
    .local v0, "m":Landroid/media/CCParser$StyleCode;
    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/CCParser$CCMemory;->writeMidRowCode(Landroid/media/CCParser$StyleCode;)V

    .line 232
    const/4 v1, 0x1

    return v1

    .line 234
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handlePACCode(Landroid/media/CCParser$CCData;)Z
    .locals 4
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getPAC()Landroid/media/CCParser$PAC;

    move-result-object v0

    .line 240
    .local v0, "pac":Landroid/media/CCParser$PAC;
    if-eqz v0, :cond_1

    .line 241
    iget v1, p0, Landroid/media/CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 242
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/CCParser$PAC;->getRow()I

    move-result v2

    iget v3, p0, Landroid/media/CCParser;->mRollUpSize:I

    invoke-static {v1, v2, v3}, Landroid/media/CCParser$CCMemory;->-wrap0(Landroid/media/CCParser$CCMemory;II)V

    .line 244
    :cond_0
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/CCParser$CCMemory;->writePAC(Landroid/media/CCParser$PAC;)V

    .line 245
    const/4 v1, 0x1

    return v1

    .line 248
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private handleTabOffsets(Landroid/media/CCParser$CCData;)Z
    .locals 2
    .param p1, "ccData"    # Landroid/media/CCParser$CCData;

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/media/CCParser$CCData;->getTabOffset()I

    move-result v0

    .line 254
    .local v0, "tabs":I
    if-lez v0, :cond_0

    .line 255
    invoke-direct {p0}, Landroid/media/CCParser;->getMemory()Landroid/media/CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/CCParser$CCMemory;->tab(I)V

    .line 256
    const/4 v1, 0x1

    return v1

    .line 259
    :cond_0
    return v1
.end method

.method private swapMemory()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    .line 355
    .local v0, "temp":Landroid/media/CCParser$CCMemory;
    iget-object v1, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    iput-object v1, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    .line 356
    iput-object v0, p0, Landroid/media/CCParser;->mNonDisplay:Landroid/media/CCParser$CCMemory;

    .line 353
    return-void
.end method

.method private updateDisplay()V
    .locals 3

    .prologue
    .line 347
    iget-object v1, p0, Landroid/media/CCParser;->mListener:Landroid/media/CCParser$DisplayListener;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Landroid/media/CCParser;->mListener:Landroid/media/CCParser$DisplayListener;

    invoke-interface {v1}, Landroid/media/CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 349
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v1, p0, Landroid/media/CCParser;->mListener:Landroid/media/CCParser$DisplayListener;

    iget-object v2, p0, Landroid/media/CCParser;->mDisplay:Landroid/media/CCParser$CCMemory;

    invoke-virtual {v2, v0}, Landroid/media/CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    .line 346
    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_0
    return-void
.end method


# virtual methods
.method parse([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 168
    invoke-static {p1}, Landroid/media/CCParser$CCData;->fromByteArray([B)[Landroid/media/CCParser$CCData;

    move-result-object v0

    .line 170
    .local v0, "ccData":[Landroid/media/CCParser$CCData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 171
    sget-boolean v2, Landroid/media/CCParser;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 172
    const-string/jumbo v2, "CCParser"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/CCParser$CCData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handleCtrlCode(Landroid/media/CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handleTabOffsets(Landroid/media/CCParser$CCData;)Z

    move-result v2

    .line 175
    if-nez v2, :cond_1

    .line 177
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handlePACCode(Landroid/media/CCParser$CCData;)Z

    move-result v2

    .line 175
    if-nez v2, :cond_1

    .line 178
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handleMidRowCode(Landroid/media/CCParser$CCData;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_2

    .line 170
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_2
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/CCParser;->handleDisplayableChars(Landroid/media/CCParser$CCData;)Z

    goto :goto_1

    .line 167
    :cond_3
    return-void
.end method
