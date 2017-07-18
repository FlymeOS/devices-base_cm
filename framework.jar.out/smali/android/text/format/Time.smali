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
    .line 250
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 876
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    .line 56
    return-void

    .line 250
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

    .line 876
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
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 1
    .param p1, "other"    # Landroid/text/format/Time;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    if-nez p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezoneId is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private checkChar(Ljava/lang/String;IC)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "spos"    # I
    .param p3, "expected"    # C

    .prologue
    .line 494
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 495
    .local v0, "c":C
    if-eq v0, p3, :cond_0

    .line 496
    new-instance v1, Landroid/util/TimeFormatException;

    .line 497
    const-string/jumbo v2, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    .line 496
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 496
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :cond_0
    return-void
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 2
    .param p0, "a"    # Landroid/text/format/Time;
    .param p1, "b"    # Landroid/text/format/Time;

    .prologue
    .line 337
    if-nez p0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "a == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    if-nez p1, :cond_1

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 343
    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 345
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
    .line 503
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 504
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    mul-int/2addr v1, p2

    return v1

    .line 507
    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Parse error at pos="

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
    .line 685
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
    .line 975
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 976
    .local v2, "offsetMillis":J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 977
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
    .line 1053
    mul-int/lit8 v0, p0, 0x7

    const v1, 0x253d89

    add-int/2addr v0, v1

    return v0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1034
    rsub-int/lit8 v0, p1, 0x4

    .line 1035
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 1036
    add-int/lit8 v0, v0, 0x7

    .line 1038
    :cond_0
    const v2, 0x253d8c    # 3.419992E-39f

    sub-int v1, v2, v0

    .line 1039
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 201
    const/16 v0, 0x7b2

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 202
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 208
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 199
    return-void
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 6
    .param p0, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v2, 0x1

    .line 952
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 953
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
    .locals 13
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 555
    .local v3, "len":I
    const/16 v8, 0xa

    if-ge v3, v8, :cond_0

    .line 556
    new-instance v8, Landroid/util/TimeFormatException;

    const-string/jumbo v9, "String too short --- expected at least 10 characters."

    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 558
    :cond_0
    const/4 v2, 0x0

    .line 561
    .local v2, "inUtc":Z
    const/4 v8, 0x0

    const/16 v9, 0x3e8

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 562
    .local v5, "n":I
    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 563
    const/4 v8, 0x2

    const/16 v9, 0xa

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 564
    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 565
    iput v5, p0, Landroid/text/format/Time;->year:I

    .line 567
    const/4 v8, 0x4

    const/16 v9, 0x2d

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 570
    const/4 v8, 0x5

    const/16 v9, 0xa

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 571
    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 572
    add-int/lit8 v5, v5, -0x1

    .line 573
    iput v5, p0, Landroid/text/format/Time;->month:I

    .line 575
    const/4 v8, 0x7

    const/16 v9, 0x2d

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 578
    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 579
    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 580
    iput v5, p0, Landroid/text/format/Time;->monthDay:I

    .line 582
    const/16 v8, 0x13

    if-lt v3, v8, :cond_6

    .line 584
    const/16 v8, 0xa

    const/16 v9, 0x54

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 585
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/text/format/Time;->allDay:Z

    .line 588
    const/16 v8, 0xb

    const/16 v9, 0xa

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 589
    const/16 v8, 0xc

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 592
    move v1, v5

    .line 594
    .local v1, "hour":I
    const/16 v8, 0xd

    const/16 v9, 0x3a

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 597
    const/16 v8, 0xe

    const/16 v9, 0xa

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 598
    const/16 v8, 0xf

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 600
    move v4, v5

    .line 602
    .local v4, "minute":I
    const/16 v8, 0x10

    const/16 v9, 0x3a

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 605
    const/16 v8, 0x11

    const/16 v9, 0xa

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 606
    const/16 v8, 0x12

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 607
    iput v5, p0, Landroid/text/format/Time;->second:I

    .line 611
    const/16 v7, 0x13

    .local v7, "tzIndex":I
    const/16 v8, 0x13

    .line 612
    if-ge v8, v3, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    .line 614
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 615
    if-ge v7, v3, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 618
    :cond_2
    const/4 v6, 0x0

    .line 619
    .local v6, "offset":I
    if-le v3, v7, :cond_4

    .line 620
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 623
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 635
    new-instance v8, Landroid/util/TimeFormatException;

    .line 636
    const-string/jumbo v9, "Unexpected character 0x%02d at position %d.  Expected + or -"

    .line 635
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 637
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 635
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 626
    :sswitch_0
    const/4 v6, 0x0

    .line 639
    :goto_0
    const/4 v2, 0x1

    .line 641
    if-eqz v6, :cond_4

    .line 642
    add-int/lit8 v8, v7, 0x6

    if-ge v3, v8, :cond_3

    .line 643
    new-instance v8, Landroid/util/TimeFormatException;

    .line 644
    const-string/jumbo v9, "Unexpected length; should be %d characters"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 645
    add-int/lit8 v11, v7, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 644
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 643
    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 629
    :sswitch_1
    const/4 v6, 0x1

    .line 630
    goto :goto_0

    .line 632
    :sswitch_2
    const/4 v6, -0x1

    .line 633
    goto :goto_0

    .line 649
    :cond_3
    add-int/lit8 v8, v7, 0x1

    const/16 v9, 0xa

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 650
    add-int/lit8 v8, v7, 0x2

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 651
    mul-int/2addr v5, v6

    .line 652
    add-int/2addr v1, v5

    .line 655
    add-int/lit8 v8, v7, 0x4

    const/16 v9, 0xa

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    .line 656
    add-int/lit8 v8, v7, 0x5

    const/4 v9, 0x1

    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v5, v8

    .line 657
    mul-int/2addr v5, v6

    .line 658
    add-int/2addr v4, v5

    .line 661
    .end local v0    # "c":C
    :cond_4
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 662
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 664
    if-eqz v6, :cond_5

    .line 665
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 674
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "offset":I
    .end local v7    # "tzIndex":I
    :cond_5
    :goto_1
    const/4 v8, 0x0

    iput v8, p0, Landroid/text/format/Time;->weekDay:I

    .line 675
    const/4 v8, 0x0

    iput v8, p0, Landroid/text/format/Time;->yearDay:I

    .line 676
    const/4 v8, -0x1

    iput v8, p0, Landroid/text/format/Time;->isDst:I

    .line 677
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/text/format/Time;->gmtoff:J

    .line 678
    return v2

    .line 668
    :cond_6
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/text/format/Time;->allDay:Z

    .line 669
    const/4 v8, 0x0

    iput v8, p0, Landroid/text/format/Time;->hour:I

    .line 670
    const/4 v8, 0x0

    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 671
    const/4 v8, 0x0

    iput v8, p0, Landroid/text/format/Time;->second:I

    goto :goto_1

    .line 623
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

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 424
    .local v1, "len":I
    if-ge v1, v7, :cond_0

    .line 425
    new-instance v3, Landroid/util/TimeFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "String is too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 426
    const-string/jumbo v5, "\" Expected at least 8 characters."

    .line 425
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    :cond_0
    const/4 v0, 0x0

    .line 432
    .local v0, "inUtc":Z
    const/16 v3, 0x3e8

    invoke-static {p1, v5, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 433
    .local v2, "n":I
    const/16 v3, 0x64

    invoke-static {p1, v4, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 434
    const/4 v3, 0x2

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 435
    const/4 v3, 0x3

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 436
    iput v2, p0, Landroid/text/format/Time;->year:I

    .line 439
    const/4 v3, 0x4

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 440
    const/4 v3, 0x5

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 441
    add-int/lit8 v2, v2, -0x1

    .line 442
    iput v2, p0, Landroid/text/format/Time;->month:I

    .line 445
    const/4 v3, 0x6

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 446
    const/4 v3, 0x7

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 447
    iput v2, p0, Landroid/text/format/Time;->monthDay:I

    .line 449
    if-le v1, v7, :cond_3

    .line 450
    if-ge v1, v8, :cond_1

    .line 451
    new-instance v3, Landroid/util/TimeFormatException;

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "String is too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 453
    const-string/jumbo v5, "\" If there are more than 8 characters there must be at least"

    .line 452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 454
    const-string/jumbo v5, " 15."

    .line 452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :cond_1
    const/16 v3, 0x54

    invoke-direct {p0, p1, v7, v3}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 457
    iput-boolean v5, p0, Landroid/text/format/Time;->allDay:Z

    .line 460
    const/16 v3, 0x9

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 461
    invoke-static {p1, v6, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 462
    iput v2, p0, Landroid/text/format/Time;->hour:I

    .line 465
    const/16 v3, 0xb

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 466
    const/16 v3, 0xc

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 467
    iput v2, p0, Landroid/text/format/Time;->minute:I

    .line 470
    const/16 v3, 0xd

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    .line 471
    const/16 v3, 0xe

    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v2, v3

    .line 472
    iput v2, p0, Landroid/text/format/Time;->second:I

    .line 474
    if-le v1, v8, :cond_2

    .line 476
    const/16 v3, 0x5a

    invoke-direct {p0, p1, v8, v3}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 477
    const/4 v0, 0x1

    .line 486
    :cond_2
    :goto_0
    iput v5, p0, Landroid/text/format/Time;->weekDay:I

    .line 487
    iput v5, p0, Landroid/text/format/Time;->yearDay:I

    .line 488
    const/4 v3, -0x1

    iput v3, p0, Landroid/text/format/Time;->isDst:I

    .line 489
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    .line 490
    return v0

    .line 480
    :cond_3
    iput-boolean v4, p0, Landroid/text/format/Time;->allDay:Z

    .line 481
    iput v5, p0, Landroid/text/format/Time;->hour:I

    .line 482
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 483
    iput v5, p0, Landroid/text/format/Time;->second:I

    goto :goto_0
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    const/4 v0, 0x0

    .line 868
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public before(Landroid/text/format/Time;)Z
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    const/4 v0, 0x0

    .line 852
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 301
    if-nez p1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 305
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 306
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 307
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 308
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 309
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 310
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 311
    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 312
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 313
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 314
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 300
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 357
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format2445()Ljava/lang/String;
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 778
    iget-object v1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 10
    .param p1, "allDay"    # Z

    .prologue
    .line 925
    if-eqz p1, :cond_0

    .line 926
    const-string/jumbo v5, "%Y-%m-%d"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 927
    :cond_0
    const-string/jumbo v5, "UTC"

    iget-object v6, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 928
    const-string/jumbo v5, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 930
    :cond_1
    const-string/jumbo v5, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "base":Ljava/lang/String;
    iget-wide v6, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    const-string/jumbo v4, "-"

    .line 932
    .local v4, "sign":Ljava/lang/String;
    :goto_0
    iget-wide v6, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    long-to-int v3, v6

    .line 933
    .local v3, "offset":I
    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v2, v5, 0x3c

    .line 934
    .local v2, "minutes":I
    div-int/lit16 v1, v3, 0xe10

    .line 936
    .local v1, "hours":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%s%s%02d:%02d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 931
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "offset":I
    .end local v4    # "sign":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "+"

    .restart local v4    # "sign":Ljava/lang/String;
    goto :goto_0
.end method

.method public getActualMaximum(I)I
    .locals 5
    .param p1, "field"    # I

    .prologue
    const/16 v3, 0x3b

    const/16 v2, 0x1c

    .line 261
    packed-switch p1, :pswitch_data_0

    .line 291
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad field="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :pswitch_0
    return v3

    .line 265
    :pswitch_1
    return v3

    .line 267
    :pswitch_2
    const/16 v2, 0x17

    return v2

    .line 269
    :pswitch_3
    sget-object v3, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v4, p0, Landroid/text/format/Time;->month:I

    aget v0, v3, v4

    .line 270
    .local v0, "n":I
    if-eq v0, v2, :cond_0

    .line 271
    return v0

    .line 273
    :cond_0
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 274
    .local v1, "y":I
    rem-int/lit8 v3, v1, 0x4

    if-nez v3, :cond_2

    rem-int/lit8 v3, v1, 0x64

    if-nez v3, :cond_1

    rem-int/lit16 v3, v1, 0x190

    if-nez v3, :cond_2

    :cond_1
    const/16 v2, 0x1d

    :cond_2
    return v2

    .line 278
    .end local v0    # "n":I
    .end local v1    # "y":I
    :pswitch_4
    const/16 v2, 0xb

    return v2

    .line 280
    :pswitch_5
    const/16 v2, 0x7f5

    return v2

    .line 282
    :pswitch_6
    const/4 v2, 0x6

    return v2

    .line 284
    :pswitch_7
    iget v1, p0, Landroid/text/format/Time;->year:I

    .line 286
    .restart local v1    # "y":I
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    rem-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_3

    rem-int/lit16 v2, v1, 0x190

    if-nez v2, :cond_4

    :cond_3
    const/16 v2, 0x16d

    :goto_0
    return v2

    :cond_4
    const/16 v2, 0x16c

    goto :goto_0

    .line 289
    .end local v1    # "y":I
    :pswitch_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "WEEK_NUM not implemented"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    nop

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
    .line 900
    iget v2, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int v0, v2, v3

    .line 903
    .local v0, "closestThursday":I
    if-ltz v0, :cond_0

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_0

    .line 904
    div-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    return v2

    .line 908
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 909
    .local v1, "temp":Landroid/text/format/Time;
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 910
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 911
    iget v2, v1, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public normalize(Z)J
    .locals 3
    .param p1, "ignoreDst"    # Z

    .prologue
    .line 230
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 231
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    .line 232
    .local v0, "timeInMillis":J
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 233
    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    const-string/jumbo v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 414
    const/4 v0, 0x1

    return v0

    .line 416
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 543
    if-nez p1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    const-string/jumbo v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 548
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public set(III)V
    .locals 2
    .param p1, "monthDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .prologue
    const/4 v1, 0x0

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 828
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 829
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 830
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 831
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 832
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 833
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 834
    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    .line 835
    iput v1, p0, Landroid/text/format/Time;->yearDay:I

    .line 836
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 837
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 826
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

    .line 804
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 805
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 806
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 807
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 808
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 809
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 810
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 811
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 812
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 813
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 814
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 803
    return-void
.end method

.method public set(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 765
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 766
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    .line 767
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 763
    return-void
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    .prologue
    .line 785
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 786
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 787
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 788
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 789
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 790
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 791
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 792
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 793
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 794
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 795
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 796
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 784
    return-void
.end method

.method public setJulianDay(I)J
    .locals 9
    .param p1, "julianDay"    # I

    .prologue
    const/4 v8, 0x0

    .line 1004
    const v4, 0x253d8c    # 3.419992E-39f

    sub-int v4, p1, v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long v2, v4, v6

    .line 1005
    .local v2, "millis":J
    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1009
    iget-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1010
    .local v0, "approximateDay":I
    sub-int v1, p1, v0

    .line 1011
    .local v1, "diff":I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 1014
    iput v8, p0, Landroid/text/format/Time;->hour:I

    .line 1015
    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 1016
    iput v8, p0, Landroid/text/format/Time;->second:I

    .line 1017
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1018
    return-wide v2
.end method

.method public setToNow()V
    .locals 2

    .prologue
    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 691
    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 245
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 247
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public toMillis(Z)J
    .locals 2
    .param p1, "ignoreDst"    # Z

    .prologue
    .line 752
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 753
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "calculator":Landroid/text/format/Time$TimeCalculator;
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 369
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
