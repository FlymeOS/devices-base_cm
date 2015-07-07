.class Landroid/media/CCParser$StyleCode;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleCode"
.end annotation


# static fields
.field static final COLOR_BLUE:I = 0x2

.field static final COLOR_CYAN:I = 0x3

.field static final COLOR_GREEN:I = 0x1

.field static final COLOR_INVALID:I = 0x7

.field static final COLOR_MAGENTA:I = 0x6

.field static final COLOR_RED:I = 0x4

.field static final COLOR_WHITE:I = 0x0

.field static final COLOR_YELLOW:I = 0x5

.field static final STYLE_ITALICS:I = 0x1

.field static final STYLE_UNDERLINE:I = 0x2

.field static final mColorMap:[Ljava/lang/String;


# instance fields
.field final mColor:I

.field final mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 362
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WHITE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GREEN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BLUE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CYAN"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "RED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "YELLOW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MAGENTA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "style"    # I
    .param p2, "color"    # I

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    .line 388
    iput p2, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    .line 389
    return-void
.end method

.method static fromByte(B)Landroid/media/CCParser$StyleCode;
    .locals 3
    .param p0, "data2"    # B

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "style":I
    shr-int/lit8 v2, p0, 0x1

    and-int/lit8 v0, v2, 0x7

    .line 373
    .local v0, "color":I
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    .line 374
    or-int/lit8 v1, v1, 0x2

    .line 377
    :cond_0
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 379
    const/4 v0, 0x0

    .line 380
    or-int/lit8 v1, v1, 0x1

    .line 383
    :cond_1
    new-instance v2, Landroid/media/CCParser$StyleCode;

    invoke-direct {v2, v1, v0}, Landroid/media/CCParser$StyleCode;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method getColor()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    return v0
.end method

.method isItalics()Z
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUnderline()Z
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    sget-object v1, Landroid/media/CCParser$StyleCode;->mColorMap:[Ljava/lang/String;

    iget v2, p0, Landroid/media/CCParser$StyleCode;->mColor:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget v1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 409
    const-string v1, ", ITALICS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_0
    iget v1, p0, Landroid/media/CCParser$StyleCode;->mStyle:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 412
    const-string v1, ", UNDERLINE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
