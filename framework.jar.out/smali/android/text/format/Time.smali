.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Time$TimeCalculator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DAYS_PER_MONTH:[I

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static final sThursdayOffset:[I


# instance fields
.field public allDay:Z

.field private calculator:Landroid/text/format/Time$TimeCalculator;

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 852
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    .line 247
    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 852
    :array_1
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 1
    .param p1, "other"    # Landroid/text/format/Time;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezoneId is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method private checkChar(Ljava/lang/String;IC)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "spos"    # I
    .param p3, "expected"    # C

    .prologue
    .line 486
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 487
    .local v0, "c":C
    if-eq v0, p3, :cond_0

    .line 488
    new-instance v1, Landroid/util/TimeFormatException;

    const-string v2, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_0
    return-void
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 2
    .param p0, "a"    # Landroid/text/format/Time;
    .param p1, "b"    # Landroid/text/format/Time;

    .prologue
    .line 329
    if-nez p0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "a == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    if-nez p1, :cond_1

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 335
    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 337
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-static {v0, v1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    move-result v0

    return v0
.end method

.method private static getChar(Ljava/lang/String;II)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spos"    # I
    .param p2, "mul"    # I

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 496
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    mul-int/2addr v1, p2

    return v1

    .line 499
    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error at pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .locals 8
    .param p0, "millis"    # J
    .param p2, "gmtoff"    # J

    .prologue
    .line 947
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 948
    .local v2, "offsetMillis":J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 949
    .local v0, "julianDay":J
    long-to-int v4, v0

    const v5, 0x253d8c    # 3.419992E-39f

    add-int/2addr v4, v5

    return v4
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .param p0, "week"    # I

    .prologue
    .line 1025
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1006
    rsub-int/lit8 v0, p1, 0x4

    .line 1007
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 1008
    add-int/lit8 v0, v0, 0x7

    .line 1010
    :cond_0
    const v2, 0x253d8c    # 3.419992E-39f

    sub-int v1, v2, v0

    .line 1011
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 200
    const/16 v0, 0x7b2

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 207
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 208
    return-void
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 6
    .param p0, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v2, 0x1

    .line 924
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 925
    .local v0, "millis":J
    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x253d8c    # 3.419992E-39f

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parse3339Internal(Ljava/lang/String;)Z
    .locals 14
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x2d

    const/4 v11, 0x2

    const/16 v10, 0xa

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 546
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 547
    .local v3, "len":I
    if-ge v3, v10, :cond_0

    .line 548
    new-instance v8, Landroid/util/TimeFormatException;

    const-string v9, "String too short --- expected at least 10 characters."

    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 550
    :cond_0
    const/4 v2, 0x0

    .line 553
    .local v2, "inUtc":Z
    const/16 v8, 0x3e8

    invoke-static {p1, v13, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 554
    .local v5, "n":I
    const/16 v8, 0x64

    invoke-static {p1, v12, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 555
    invoke-static {p1, v11, v10}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 556
    const/4 v8, 0x3

    invoke-static {p1, v8, v12}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 557
    iput v5, p0, Landroid/text/format/Time;->year:I

    .line 559
    const/4 v8, 0x4

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 562
    const/4 v8, 0x5

    invoke-static {p1, v8, v10}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 563
    const/4 v8, 0x6

    invoke-static {p1, v8, v12}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 564
    add-int/lit8 v5, v5, -0x1

    .line 565
    iput v5, p0, Landroid/text/format/Time;->month:I

    .line 567
    const/4 v8, 0x7

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 570
    const/16 v8, 0x8

    invoke-static {p1, v8, v10}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 571
    const/16 v8, 0x9

    invoke-static {p1, v8, v12}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 572
    iput v5, p0, Landroid/text/format/Time;->monthDay:I

    .line 574
    const/16 v8, 0x13

    if-lt v3, v8, :cond_6

    .line 576
    const/16 v8, 0x54

    invoke-direct {p0, p1, v10, v8}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 577
    iput-boolean v13, p0, Landroid/text/format/Time;->allDay:Z

    .line 580
    const/16 v8, 0xb

    invoke-static {p1, v8, v10}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 581
    const/16 v8, 0xc

    invoke-static {p1, v8, v12}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 584
    move v1, v5

    .line 586
    .local v1, "hour":I
    const/16 v8, 0xd

    const/16 v9, 0x3a

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 589
    const/16 v8, 0xe

    invoke-static {p1, v8, v10}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 590
    const/16 v8, 0xf

    invoke-static {p1, v8, v12}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 592
    move v4, v5

    .line 594
    .local v4, "minute":I
    const/16 v8, 0x10

    const/16 v9, 0x3a

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 597
    const/16 v8, 0x11

    invoke-static {p1, v8, v10}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 598
    const/16 v8, 0x12

    invoke-static {p1, v8, v12}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 599
    iput v5, p0, Landroid/text/format/Time;->second:I

    .line 603
    const/16 v7, 0x13

    .line 604
    .local v7, "tzIndex":I
    if-ge v7, v3, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    .line 606
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 607
    if-ge v7, v3, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 610
    :cond_2
    const/4 v6, 0x0

    .line 611
    .local v6, "offset":I
    if-le v3, v7, :cond_4

    .line 612
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 615
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 627
    new-instance v8, Landroid/util/TimeFormatException;

    const-string v9, "Unexpected character 0x%02d at position %d.  Expected + or -"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 618
    :sswitch_0
    const/4 v6, 0x0

    .line 631
    :goto_0
    const/4 v2, 0x1

    .line 633
    if-eqz v6, :cond_4

    .line 634
    add-int/lit8 v8, v7, 0x6

    if-ge v3, v8, :cond_3

    .line 635
    new-instance v8, Landroid/util/TimeFormatException;

    const-string v9, "Unexpected length; should be %d characters"

    new-array v10, v12, [Ljava/lang/Object;

    add-int/lit8 v11, v7, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 621
    :sswitch_1
    const/4 v6, 0x1

    .line 622
    goto :goto_0

    .line 624
    :sswitch_2
    const/4 v6, -0x1

    .line 625
    goto :goto_0

    .line 641
    :cond_3
    add-int/lit8 v8, v7, 0x1

    invoke-static {p1, v8, v10}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 642
    add-int/lit8 v8, v7, 0x2

    invoke-static {p1, v8, v12}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 643
    mul-int/2addr v5, v6

    .line 644
    add-int/2addr v1, v5

    .line 647
    add-int/lit8 v8, v7, 0x4

    invoke-static {p1, v8, v10}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 648
    add-int/lit8 v8, v7, 0x5

    invoke-static {p1, v8, v12}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 649
    mul-int/2addr v5, v6

    .line 650
    add-int/2addr v4, v5

    .line 653
    .end local v0    # "c":C
    :cond_4
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 654
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 656
    if-eqz v6, :cond_5

    .line 657
    invoke-virtual {p0, v13}, Landroid/text/format/Time;->normalize(Z)J

    .line 666
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "offset":I
    .end local v7    # "tzIndex":I
    :cond_5
    :goto_1
    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    .line 667
    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    .line 668
    const/4 v8, -0x1

    iput v8, p0, Landroid/text/format/Time;->isDst:I

    .line 669
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/text/format/Time;->gmtoff:J

    .line 670
    return v2

    .line 660
    :cond_6
    iput-boolean v12, p0, Landroid/text/format/Time;->allDay:Z

    .line 661
    iput v13, p0, Landroid/text/format/Time;->hour:I

    .line 662
    iput v13, p0, Landroid/text/format/Time;->minute:I

    .line 663
    iput v13, p0, Landroid/text/format/Time;->second:I

    goto :goto_1

    .line 615
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private parseInternal(Ljava/lang/String;)Z
    .locals 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0x8

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 415
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 416
    .local v1, "len":I
    if-ge v1, v7, :cond_0

    .line 417
    new-instance v3, Landroid/util/TimeFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String is too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" Expected at least 8 characters."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 421
    :cond_0
    const/4 v0, 0x0

    .line 424
    .local v0, "inUtc":Z
    const/16 v3, 0x3e8

    invoke-static {p1, v5, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 425
    .local v2, "n":I
    const/16 v3, 0x64

    invoke-static {p1, v4, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 426
    const/4 v3, 0x2

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 427
    const/4 v3, 0x3

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 428
    iput v2, p0, Landroid/text/format/Time;->year:I

    .line 431
    const/4 v3, 0x4

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 432
    const/4 v3, 0x5

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 433
    add-int/lit8 v2, v2, -0x1

    .line 434
    iput v2, p0, Landroid/text/format/Time;->month:I

    .line 437
    const/4 v3, 0x6

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 438
    const/4 v3, 0x7

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 439
    iput v2, p0, Landroid/text/format/Time;->monthDay:I

    .line 441
    if-le v1, v7, :cond_3

    .line 442
    if-ge v1, v8, :cond_1

    .line 443
    new-instance v3, Landroid/util/TimeFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String is too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" If there are more than 8 characters there must be at least"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 15."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 448
    :cond_1
    const/16 v3, 0x54

    invoke-direct {p0, p1, v7, v3}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 449
    iput-boolean v5, p0, Landroid/text/format/Time;->allDay:Z

    .line 452
    const/16 v3, 0x9

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 453
    invoke-static {p1, v6, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 454
    iput v2, p0, Landroid/text/format/Time;->hour:I

    .line 457
    const/16 v3, 0xb

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 458
    const/16 v3, 0xc

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 459
    iput v2, p0, Landroid/text/format/Time;->minute:I

    .line 462
    const/16 v3, 0xd

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 463
    const/16 v3, 0xe

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 464
    iput v2, p0, Landroid/text/format/Time;->second:I

    .line 466
    if-le v1, v8, :cond_2

    .line 468
    const/16 v3, 0x5a

    invoke-direct {p0, p1, v8, v3}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 469
    const/4 v0, 0x1

    .line 478
    :cond_2
    :goto_0
    iput v5, p0, Landroid/text/format/Time;->weekDay:I

    .line 479
    iput v5, p0, Landroid/text/format/Time;->yearDay:I

    .line 480
    const/4 v3, -0x1

    iput v3, p0, Landroid/text/format/Time;->isDst:I

    .line 481
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    .line 482
    return v0

    .line 472
    :cond_3
    iput-boolean v4, p0, Landroid/text/format/Time;->allDay:Z

    .line 473
    iput v5, p0, Landroid/text/format/Time;->hour:I

    .line 474
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 475
    iput v5, p0, Landroid/text/format/Time;->second:I

    goto :goto_0
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 1
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 844
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public before(Landroid/text/format/Time;)Z
    .locals 1
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 832
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 298
    if-nez p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 302
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 303
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 304
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 305
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 306
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 307
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 308
    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 309
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 310
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 311
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 313
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 349
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format2445()Ljava/lang/String;
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 762
    iget-object v1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 10
    .param p1, "allDay"    # Z

    .prologue
    .line 901
    if-eqz p1, :cond_0

    .line 902
    const-string v5, "%Y-%m-%d"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 912
    :goto_0
    return-object v5

    .line 903
    :cond_0
    const-string v5, "UTC"

    iget-object v6, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 904
    const-string v5, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 906
    :cond_1
    const-string v5, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "base":Ljava/lang/String;
    iget-wide v6, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    const-string v4, "-"

    .line 908
    .local v4, "sign":Ljava/lang/String;
    :goto_1
    iget-wide v6, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-int v3, v6

    .line 909
    .local v3, "offset":I
    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v2, v5, 0x3c

    .line 910
    .local v2, "minutes":I
    div-int/lit16 v1, v3, 0xe10

    .line 912
    .local v1, "hours":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s%s%02d:%02d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 907
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "offset":I
    .end local v4    # "sign":Ljava/lang/String;
    :cond_2
    const-string v4, "+"

    goto :goto_1
.end method

.method public getActualMaximum(I)I
    .locals 5
    .param p1, "field"    # I

    .prologue
    const/16 v0, 0x3b

    const/16 v2, 0x1c

    .line 258
    packed-switch p1, :pswitch_data_0

    .line 288
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad field="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move v2, v0

    .line 283
    :cond_0
    :goto_0
    return v2

    :pswitch_1
    move v2, v0

    .line 262
    goto :goto_0

    .line 264
    :pswitch_2
    const/16 v2, 0x17

    goto :goto_0

    .line 266
    :pswitch_3
    sget-object v3, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v4, p0, Landroid/text/format/Time;->month:I

    aget v0, v3, v4

    .line 267
    .local v0, "n":I
    if-eq v0, v2, :cond_1

    move v2, v0

    .line 268
    goto :goto_0

    .line 270
    :cond_1
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 271
    .local v1, "y":I
    rem-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_0

    rem-int/lit8 v3, v1, 0x64

    if-nez v3, :cond_2

    rem-int/lit16 v3, v1, 0x190

    if-nez v3, :cond_0

    :cond_2
    const/16 v2, 0x1d

    goto :goto_0

    .line 275
    .end local v0    # "n":I
    .end local v1    # "y":I
    :pswitch_4
    const/16 v2, 0xb

    goto :goto_0

    .line 277
    :pswitch_5
    const/16 v2, 0x7f5

    goto :goto_0

    .line 279
    :pswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 281
    :pswitch_7
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 283
    .restart local v1    # "y":I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_3

    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_4

    :cond_3
    const/16 v2, 0x16d

    goto :goto_0

    :cond_4
    const/16 v2, 0x16c

    goto :goto_0

    .line 286
    .end local v1    # "y":I
    :pswitch_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "WEEK_NUM not implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getWeekNumber()I
    .locals 5

    .prologue
    .line 876
    iget v2, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int v0, v2, v3

    .line 879
    .local v0, "closestThursday":I
    if-ltz v0, :cond_0

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_0

    .line 880
    div-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    .line 887
    :goto_0
    return v2

    .line 884
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 885
    .local v1, "temp":Landroid/text/format/Time;
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 886
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 887
    iget v2, v1, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public normalize(Z)J
    .locals 3
    .param p1, "ignoreDst"    # Z

    .prologue
    .line 227
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 228
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    .line 229
    .local v0, "timeInMillis":J
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 230
    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 406
    const/4 v0, 0x1

    .line 408
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 540
    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(III)V
    .locals 2
    .param p1, "monthDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .prologue
    const/4 v1, 0x0

    .line 811
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 812
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 813
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 814
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 815
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 816
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 817
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 818
    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    .line 819
    iput v1, p0, Landroid/text/format/Time;->yearDay:I

    .line 820
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 821
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 822
    return-void
.end method

.method public set(IIIIII)V
    .locals 2
    .param p1, "second"    # I
    .param p2, "minute"    # I
    .param p3, "hour"    # I
    .param p4, "monthDay"    # I
    .param p5, "month"    # I
    .param p6, "year"    # I

    .prologue
    const/4 v0, 0x0

    .line 788
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 789
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 790
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 791
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 792
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 793
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 794
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 795
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 796
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 797
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 799
    return-void
.end method

.method public set(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 749
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 750
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    .line 751
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 752
    return-void
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 769
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 770
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 771
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 772
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 773
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 774
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 775
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 776
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 777
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 778
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 779
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 780
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 781
    return-void
.end method

.method public setJulianDay(I)J
    .locals 9
    .param p1, "julianDay"    # I

    .prologue
    const/4 v8, 0x0

    .line 976
    const v4, 0x253d8c    # 3.419992E-39f

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long v2, v4, v6

    .line 977
    .local v2, "millis":J
    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 981
    iget-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 982
    .local v0, "approximateDay":I
    sub-int v1, p1, v0

    .line 983
    .local v1, "diff":I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 986
    iput v8, p0, Landroid/text/format/Time;->hour:I

    .line 987
    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 988
    iput v8, p0, Landroid/text/format/Time;->second:I

    .line 989
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 990
    return-wide v2
.end method

.method public setToNow()V
    .locals 2

    .prologue
    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 685
    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 242
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 244
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public toMillis(Z)J
    .locals 2
    .param p1, "ignoreDst"    # Z

    .prologue
    .line 736
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 737
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "calculator":Landroid/text/format/Time$TimeCalculator;
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 361
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
