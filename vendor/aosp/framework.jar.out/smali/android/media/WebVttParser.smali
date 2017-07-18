.class Landroid/media/WebVttParser;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttParser$Phase;,
        Landroid/media/WebVttParser$1;,
        Landroid/media/WebVttParser$2;,
        Landroid/media/WebVttParser$3;,
        Landroid/media/WebVttParser$4;,
        Landroid/media/WebVttParser$5;,
        Landroid/media/WebVttParser$6;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttParser"


# instance fields
.field private mBuffer:Ljava/lang/String;

.field private mCue:Landroid/media/TextTrackCue;

.field private mCueTexts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/media/WebVttCueListener;

.field private final mParseCueId:Landroid/media/WebVttParser$Phase;

.field private final mParseCueText:Landroid/media/WebVttParser$Phase;

.field private final mParseCueTime:Landroid/media/WebVttParser$Phase;

.field private final mParseHeader:Landroid/media/WebVttParser$Phase;

.field private final mParseStart:Landroid/media/WebVttParser$Phase;

.field private mPhase:Landroid/media/WebVttParser$Phase;

.field private final mSkipRest:Landroid/media/WebVttParser$Phase;


# direct methods
.method static synthetic -get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/WebVttParser;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic -get6(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic -get7(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic -get8(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    return-object p1
.end method

.method static synthetic -set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;
    .locals 0

    iput-object p1, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "subMessage"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/media/WebVttCueListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/WebVttCueListener;

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Landroid/media/WebVttParser$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$1;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;

    .line 697
    new-instance v0, Landroid/media/WebVttParser$2;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$2;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    .line 714
    new-instance v0, Landroid/media/WebVttParser$3;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$3;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;

    .line 814
    new-instance v0, Landroid/media/WebVttParser$4;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$4;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;

    .line 839
    new-instance v0, Landroid/media/WebVttParser$5;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$5;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;

    .line 942
    new-instance v0, Landroid/media/WebVttParser$6;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser$6;-><init>(Landroid/media/WebVttParser;)V

    iput-object v0, p0, Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;

    .line 577
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 578
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 579
    iput-object p1, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    .line 580
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    .line 576
    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/media/WebVttParser;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 964
    invoke-virtual {p0}, Landroid/media/WebVttParser;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 965
    const-string/jumbo v2, " (\'"

    .line 964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 965
    const-string/jumbo v2, "\')"

    .line 964
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return-void
.end method

.method private log_warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nameType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "subMessage"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    .line 958
    invoke-virtual {p0}, Landroid/media/WebVttParser;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 959
    const-string/jumbo v2, " (\'"

    .line 958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 959
    const-string/jumbo v2, "\' "

    .line 958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 959
    const-string/jumbo v2, ")"

    .line 958
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return-void
.end method

.method public static parseFloatPercentage(Ljava/lang/String;)F
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 586
    const-string/jumbo v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "does not end in %"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 589
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 591
    const-string/jumbo v2, ".*[^0-9.].*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "contains an invalid character"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 596
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 597
    .local v1, "value":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    .line 598
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "is out of range"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v1    # "value":F
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "is not a number"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "value":F
    :cond_3
    return v1
.end method

.method public static parseIntPercentage(Ljava/lang/String;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 607
    const-string/jumbo v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "does not end in %"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 612
    const-string/jumbo v2, ".*[^0-9].*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "contains an invalid character"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 617
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 618
    .local v1, "value":I
    if-ltz v1, :cond_2

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    .line 619
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "is out of range"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 623
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string/jumbo v3, "is not a number"

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 621
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "value":I
    :cond_3
    return v1
.end method

.method public static parseTimestampMs(Ljava/lang/String;)J
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 628
    const-string/jumbo v5, "(\\d+:)?[0-5]\\d:[0-5]\\d\\.\\d{3}"

    invoke-virtual {p0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 629
    new-instance v4, Ljava/lang/NumberFormatException;

    const-string/jumbo v5, "has invalid format"

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 632
    :cond_0
    const-string/jumbo v5, "\\."

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "parts":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 634
    .local v2, "value":J
    aget-object v5, v1, v4

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 635
    .local v0, "group":Ljava/lang/String;
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v2, v8, v10

    .line 634
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "group":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static timeToString(J)Ljava/lang/String;
    .locals 8
    .param p0, "timeMs"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 641
    const-string/jumbo v0, "%d:%02d:%02d.%03d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 642
    const-wide/32 v2, 0x36ee80

    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/32 v2, 0xea60

    div-long v2, p0, v2

    rem-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 643
    div-long v2, p0, v6

    rem-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    rem-long v2, p0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 641
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public eos()V
    .locals 3

    .prologue
    .line 667
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string/jumbo v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 671
    :cond_0
    iget-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    iget-object v1, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 672
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 674
    invoke-virtual {p0}, Landroid/media/WebVttParser;->yieldCue()V

    .line 675
    iget-object v0, p0, Landroid/media/WebVttParser;->mParseStart:Landroid/media/WebVttParser$Phase;

    iput-object v0, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    .line 666
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 647
    const/4 v2, 0x0

    .line 648
    .local v2, "trailingCR":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u0000"

    const-string/jumbo v5, "\ufffd"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    const-string/jumbo v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 651
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string/jumbo v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    const/4 v2, 0x1

    .line 653
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 656
    :cond_0
    iget-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    const-string/jumbo v4, "[\r\n]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "lines":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 658
    iget-object v3, p0, Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;

    aget-object v4, v1, v0

    invoke-interface {v3, v4}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 662
    if-eqz v2, :cond_2

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/media/WebVttParser;->mBuffer:Ljava/lang/String;

    .line 646
    :cond_2
    return-void
.end method

.method public yieldCue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 680
    iget-object v0, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 681
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    iget-object v1, v1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 682
    iget-object v0, p0, Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 683
    iget-object v0, p0, Landroid/media/WebVttParser;->mListener:Landroid/media/WebVttCueListener;

    iget-object v1, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    invoke-interface {v0, v1}, Landroid/media/WebVttCueListener;->onCueParsed(Landroid/media/TextTrackCue;)V

    .line 685
    :cond_0
    iput-object v2, p0, Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;

    .line 678
    return-void
.end method
