.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 117
    sput-object v1, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 120
    sput-object v1, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .prologue
    .line 626
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, "f":Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 627
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I

    .prologue
    .line 650
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I
    .param p7, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 821
    and-int/lit16 v2, p6, 0xc1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 822
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x80

    :goto_0
    or-int/2addr p6, v2

    .line 825
    :cond_0
    invoke-static/range {p2 .. p7}, Llibcore/icu/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "range":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    return-object p1

    .line 822
    .end local v1    # "range":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x40

    goto :goto_0

    .line 828
    .restart local v1    # "range":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 829
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "flags"    # I

    .prologue
    .line 877
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(J)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 483
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 484
    .local v2, "res":Landroid/content/res/Resources;
    cmp-long v4, p0, v10

    if-ltz v4, :cond_0

    .line 485
    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, p0

    div-long/2addr v4, v10

    long-to-int v0, v4

    .line 486
    .local v0, "hours":I
    const v4, 0x1140014

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 494
    .end local v0    # "hours":I
    :goto_0
    return-object v4

    .line 488
    :cond_0
    cmp-long v4, p0, v6

    if-ltz v4, :cond_1

    .line 489
    const-wide/16 v4, 0x7530

    add-long/2addr v4, p0

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 490
    .local v1, "minutes":I
    const v4, 0x1140013

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 493
    .end local v1    # "minutes":I
    :cond_1
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, p0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    .line 494
    .local v3, "seconds":I
    const v4, 0x1140012

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "elapsedSeconds"    # J

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 13
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "elapsedSeconds"    # J

    .prologue
    .line 518
    const-wide/16 v2, 0x0

    .line 519
    .local v2, "hours":J
    const-wide/16 v4, 0x0

    .line 520
    .local v4, "minutes":J
    const-wide/16 v6, 0x0

    .line 521
    .local v6, "seconds":J
    const-wide/16 v8, 0xe10

    cmp-long v8, p1, v8

    if-ltz v8, :cond_0

    .line 522
    const-wide/16 v8, 0xe10

    div-long v2, p1, v8

    .line 523
    const-wide/16 v8, 0xe10

    mul-long/2addr v8, v2

    sub-long/2addr p1, v8

    .line 525
    :cond_0
    const-wide/16 v8, 0x3c

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1

    .line 526
    const-wide/16 v8, 0x3c

    div-long v4, p1, v8

    .line 527
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    sub-long/2addr p1, v8

    .line 529
    :cond_1
    move-wide v6, p1

    .line 533
    move-object v1, p0

    .line 534
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez v1, :cond_2

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    const/16 v8, 0x8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 542
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    new-instance v0, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v0, v1, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 543
    .local v0, "f":Ljava/util/Formatter;
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 544
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_3

    .line 545
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 547
    :goto_1
    return-object v8

    .line 537
    .end local v0    # "f":Ljava/util/Formatter;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 547
    .restart local v0    # "f":Ljava/util/Formatter;
    :cond_3
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "then"    # J
    .param p2, "now"    # J
    .param p4, "dateStyle"    # I
    .param p5, "timeStyle"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 570
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 571
    .local v2, "thenCal":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 572
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 573
    .local v3, "thenDate":Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 574
    .local v1, "nowCal":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 578
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 581
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 585
    .local v0, "f":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 583
    .end local v0    # "f":Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "f":Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ampm"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .param p0, "dayOfWeek"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 194
    .local v0, "d":Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 200
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .line 202
    .local v1, "names":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 195
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 196
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 232
    .local v0, "d":Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 238
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 240
    .local v1, "names":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 233
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 235
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 232
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 21
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minResolution"    # J
    .param p5, "transitionResolution"    # J
    .param p7, "flags"    # I

    .prologue
    .line 382
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 384
    .local v16, "r":Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 385
    .local v14, "now":J
    sub-long v4, v14, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    .line 390
    .local v12, "duration":J
    const-wide/32 v4, 0x240c8400

    cmp-long v4, p5, v4

    if-lez v4, :cond_1

    .line 391
    const-wide/32 p5, 0x240c8400

    .line 396
    :cond_0
    :goto_0
    const/4 v10, 0x1

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v19

    .line 399
    .local v19, "timeClause":Ljava/lang/CharSequence;
    cmp-long v4, v12, p5

    if-gez v4, :cond_2

    move-wide/from16 v4, p1

    move-wide v6, v14

    move-wide/from16 v8, p3

    move/from16 v10, p7

    .line 400
    invoke-static/range {v4 .. v10}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v17

    .line 401
    .local v17, "relativeClause":Ljava/lang/CharSequence;
    const v4, 0x1040534

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    const/4 v6, 0x1

    aput-object v19, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 407
    .end local v17    # "relativeClause":Ljava/lang/CharSequence;
    .local v18, "result":Ljava/lang/String;
    :goto_1
    return-object v18

    .line 392
    .end local v18    # "result":Ljava/lang/String;
    .end local v19    # "timeClause":Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v4, 0x5265c00

    cmp-long v4, p5, v4

    if-gez v4, :cond_0

    .line 393
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 403
    .restart local v19    # "timeClause":Ljava/lang/CharSequence;
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v4}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v11

    .line 404
    .local v11, "dateClause":Ljava/lang/CharSequence;
    const v4, 0x104012f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x1

    aput-object v19, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 15
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "day"    # J
    .param p3, "today"    # J

    .prologue
    .line 420
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v6, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 421
    .local v6, "locale":Ljava/util/Locale;
    if-nez v6, :cond_0

    .line 422
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 426
    :cond_0
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 427
    .local v10, "startTime":Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 428
    iget-wide v12, v10, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 430
    .local v9, "startDay":I
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 431
    .local v3, "currentTime":Landroid/text/format/Time;
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 432
    iget-wide v12, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 434
    .local v2, "currentDay":I
    sub-int v11, v2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 435
    .local v4, "days":I
    cmp-long v11, p3, p1

    if-lez v11, :cond_1

    const/4 v7, 0x1

    .line 438
    .local v7, "past":Z
    :goto_0
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    .line 439
    if-eqz v7, :cond_2

    .line 440
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    .line 456
    :goto_1
    return-object v11

    .line 435
    .end local v7    # "past":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 442
    .restart local v7    # "past":Z
    :cond_2
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->tomorrow:Ljava/lang/String;

    goto :goto_1

    .line 444
    :cond_3
    if-nez v4, :cond_4

    .line 445
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    goto :goto_1

    .line 449
    :cond_4
    if-eqz v7, :cond_5

    .line 450
    const v8, 0x1140005

    .line 455
    .local v8, "resId":I
    :goto_2
    invoke-virtual {p0, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "format":Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 452
    .end local v5    # "format":Ljava/lang/String;
    .end local v8    # "resId":I
    :cond_5
    const v8, 0x1140009

    .restart local v8    # "resId":I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "startTime"    # J

    .prologue
    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J

    .prologue
    .line 266
    const v6, 0x10014

    .local v6, "flags":I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 267
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 22
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J
    .param p6, "flags"    # I

    .prologue
    .line 292
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    .line 293
    .local v19, "r":Landroid/content/res/Resources;
    const/high16 v7, 0xc0000

    and-int v7, v7, p6

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    .line 295
    .local v6, "abbrevRelative":Z
    :goto_0
    cmp-long v7, p2, p0

    if-ltz v7, :cond_1

    const/16 v18, 0x1

    .line 296
    .local v18, "past":Z
    :goto_1
    sub-long v8, p2, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 300
    .local v16, "duration":J
    const-wide/32 v8, 0xea60

    cmp-long v7, v16, v8

    if-gez v7, :cond_5

    const-wide/32 v8, 0xea60

    cmp-long v7, p4, v8

    if-gez v7, :cond_5

    .line 301
    const-wide/16 v8, 0x3e8

    div-long v14, v16, v8

    .line 302
    .local v14, "count":J
    if-eqz v18, :cond_3

    .line 303
    if-eqz v6, :cond_2

    .line 304
    const v20, 0x114000a

    .line 353
    .local v20, "resId":I
    :goto_2
    long-to-int v7, v14

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v13

    .line 354
    .local v13, "format":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v13, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v13    # "format":Ljava/lang/String;
    .end local v14    # "count":J
    .end local v20    # "resId":I
    :goto_3
    return-object v7

    .line 293
    .end local v6    # "abbrevRelative":Z
    .end local v16    # "duration":J
    .end local v18    # "past":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 295
    .restart local v6    # "abbrevRelative":Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 306
    .restart local v14    # "count":J
    .restart local v16    # "duration":J
    .restart local v18    # "past":Z
    :cond_2
    const v20, 0x1140001

    .restart local v20    # "resId":I
    goto :goto_2

    .line 309
    .end local v20    # "resId":I
    :cond_3
    if-eqz v6, :cond_4

    .line 310
    const v20, 0x114000e

    .restart local v20    # "resId":I
    goto :goto_2

    .line 312
    .end local v20    # "resId":I
    :cond_4
    const v20, 0x1140006

    .restart local v20    # "resId":I
    goto :goto_2

    .line 315
    .end local v14    # "count":J
    .end local v20    # "resId":I
    :cond_5
    const-wide/32 v8, 0x36ee80

    cmp-long v7, v16, v8

    if-gez v7, :cond_9

    const-wide/32 v8, 0x36ee80

    cmp-long v7, p4, v8

    if-gez v7, :cond_9

    .line 316
    const-wide/32 v8, 0xea60

    div-long v14, v16, v8

    .line 317
    .restart local v14    # "count":J
    if-eqz v18, :cond_7

    .line 318
    if-eqz v6, :cond_6

    .line 319
    const v20, 0x114000b

    .restart local v20    # "resId":I
    goto :goto_2

    .line 321
    .end local v20    # "resId":I
    :cond_6
    const v20, 0x1140002

    .restart local v20    # "resId":I
    goto :goto_2

    .line 324
    .end local v20    # "resId":I
    :cond_7
    if-eqz v6, :cond_8

    .line 325
    const v20, 0x114000f

    .restart local v20    # "resId":I
    goto :goto_2

    .line 327
    .end local v20    # "resId":I
    :cond_8
    const v20, 0x1140007

    .restart local v20    # "resId":I
    goto :goto_2

    .line 330
    .end local v14    # "count":J
    .end local v20    # "resId":I
    :cond_9
    const-wide/32 v8, 0x5265c00

    cmp-long v7, v16, v8

    if-gez v7, :cond_d

    const-wide/32 v8, 0x5265c00

    cmp-long v7, p4, v8

    if-gez v7, :cond_d

    .line 331
    const-wide/32 v8, 0x36ee80

    div-long v14, v16, v8

    .line 332
    .restart local v14    # "count":J
    if-eqz v18, :cond_b

    .line 333
    if-eqz v6, :cond_a

    .line 334
    const v20, 0x114000c

    .restart local v20    # "resId":I
    goto :goto_2

    .line 336
    .end local v20    # "resId":I
    :cond_a
    const v20, 0x1140003

    .restart local v20    # "resId":I
    goto :goto_2

    .line 339
    .end local v20    # "resId":I
    :cond_b
    if-eqz v6, :cond_c

    .line 340
    const v20, 0x1140010

    .restart local v20    # "resId":I
    goto :goto_2

    .line 342
    .end local v20    # "resId":I
    :cond_c
    const v20, 0x1140008

    .restart local v20    # "resId":I
    goto :goto_2

    .line 345
    .end local v14    # "count":J
    .end local v20    # "resId":I
    :cond_d
    const-wide/32 v8, 0x240c8400

    cmp-long v7, v16, v8

    if-gez v7, :cond_e

    const-wide/32 v8, 0x240c8400

    cmp-long v7, p4, v8

    if-gez v7, :cond_e

    .line 346
    move-object/from16 v0, v19

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/format/DateUtils;->getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 350
    :cond_e
    const/4 v7, 0x0

    move-wide/from16 v8, p0

    move-wide/from16 v10, p0

    move/from16 v12, p6

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    .line 948
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "withPreposition"    # Z

    .prologue
    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 899
    .local v10, "now":J
    sub-long v4, v10, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 901
    .local v14, "span":J
    const-class v13, Landroid/text/format/DateUtils;

    monitor-enter v13

    .line 902
    :try_start_0
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v3, :cond_0

    .line 903
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    sput-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 906
    :cond_0
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v3, :cond_1

    .line 907
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    sput-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 910
    :cond_1
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v3, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 911
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 914
    const-wide/32 v4, 0x5265c00

    cmp-long v3, v14, v4

    if-gez v3, :cond_3

    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    sget-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v4, :cond_3

    .line 916
    const/4 v8, 0x1

    .local v8, "flags":I
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    .line 917
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 918
    .local v12, "result":Ljava/lang/String;
    const v2, 0x1040526

    .line 932
    .local v2, "prepositionId":I
    :goto_0
    if-eqz p3, :cond_2

    .line 933
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 934
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-virtual {v9, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 936
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_2
    monitor-exit v13

    .line 937
    return-object v12

    .line 919
    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    sget-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_4

    .line 921
    const v8, 0x20014

    .restart local v8    # "flags":I
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    .line 922
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 925
    .restart local v12    # "result":Ljava/lang/String;
    const v2, 0x1040525

    .line 926
    .restart local v2    # "prepositionId":I
    goto :goto_0

    .line 928
    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_4
    const v8, 0x10010

    .restart local v8    # "flags":I
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    .line 929
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 930
    .restart local v12    # "result":Ljava/lang/String;
    const v2, 0x1040525

    .restart local v2    # "prepositionId":I
    goto :goto_0

    .line 936
    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    .line 460
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 462
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    .line 466
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 467
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 468
    .local v0, "cfg":Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 469
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 470
    const v2, 0x1040539

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 471
    const v2, 0x104053a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 473
    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .param p0, "when"    # J

    .prologue
    .line 592
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 593
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 595
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 596
    .local v2, "thenYear":I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 597
    .local v0, "thenMonth":I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 599
    .local v1, "thenMonthDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 600
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
