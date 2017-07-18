.class public Landroid/util/DateTimeUrlHelper;
.super Ljava/lang/Object;
.source "DateTimeUrlHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/DateTimeUrlHelper$1;,
        Landroid/util/DateTimeUrlHelper$2;
    }
.end annotation


# static fields
.field public static final ALL_DAY_EVENT:Ljava/lang/String; = "1"

.field public static final APRIL:Ljava/lang/String; = "apr"

.field public static final APRIL_PATTERN:Ljava/lang/String; = "[a|A][p][r][i][l]|[A][P][R][I][L]|[A|a][p][r]"

.field public static final AUGUST:Ljava/lang/String; = "aug"

.field public static final AUGUST_PATTERN:Ljava/lang/String; = "[a|A][u][g][u][s][t]|[A][U][G][U][S][T]|[A|a][u][g]"

.field public static final BACKSLASH_STRING:Ljava/lang/String; = "/"

.field public static final BANG_UNICODE:Ljava/lang/String; = "\u508d"

.field public static final BAN_UNICODE:Ljava/lang/String; = "\u534a"

.field public static final CHEN_UNICODE:Ljava/lang/String; = "\u6668"

.field public static final CN_NUMBER:Ljava/util/regex/Pattern;

.field public static final CN_ONE_TO_FIVE:Ljava/lang/String; = "[\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94]"

.field public static final CN_ONE_TO_NINE:Ljava/lang/String; = "[\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]"

.field public static final CN_ONE_TO_TEN:Ljava/lang/String; = "[\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d|\u5341]"

.field public static final CN_ONE_TO_TWO:Ljava/lang/String; = "[\u4e00|\u58f9|\u4e8c]"

.field public static final CN_ZERO_TO_FOUR:Ljava/lang/String; = "[\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db]"

.field public static final CN_ZERO_TO_NINE:Ljava/lang/String; = "[\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]"

.field public static final CN_ZERO_TO_TEN:Ljava/lang/String; = "[\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d|\u5341]"

.field public static final COLON_STRING:Ljava/lang/String; = ":"

.field public static final COLON_UNICODE:Ljava/lang/String; = "\uff1a"

.field public static final COMMA_CN_STRING:Ljava/lang/String; = "\uff0c"

.field public static final COMMA_STRING:Ljava/lang/String; = ","

.field public static final COMMA_UNICODE:Ljava/lang/String; = "\uff0c"

.field public static final DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field public static final DA_UNICODE:Ljava/lang/String; = "\u5927"

.field public static final DECEMBER:Ljava/lang/String; = "dec"

.field public static final DECEMBER_PATTERN:Ljava/lang/String; = "[d|D][e][c][e][m][b][e][r]|[D][E][C][E][M][B][E][R]|[D|d][e][c]"

.field public static final DIAN_UNICODE:Ljava/lang/String; = "\u70b9"

.field public static final DIAN_UNICODE_TW:Ljava/lang/String; = "\u9ede"

.field public static final EHIGE_CHAR:C = '\u516b'

.field public static final EHIGE_UNICODE:Ljava/lang/String; = "\u516b"

.field public static final EVENT_TYPE_STRING:Ljava/lang/String; = "+"

.field public static final FEBRUARY:Ljava/lang/String; = "feb"

.field public static final FEBRUARY_PATTERN:Ljava/lang/String; = "[f|F][e][b][r][u][a][r][y]|[F][E][B][R][U][A][R][Y]|[F|f][e][b]"

.field public static final FEN_UNICODE:Ljava/lang/String; = "\u5206"

.field public static final FIVE_CHAR:C = '\u4e94'

.field public static final FIVE_UNICODE:Ljava/lang/String; = "\u4e94"

.field public static final FORMAT_H_M:Ljava/lang/String; = "HH:mm"

.field public static final FORMAT_H_M_S:Ljava/lang/String; = "HH:mm:ss"

.field public static final FORMAT_Y_M_D:Ljava/lang/String; = "yyyy/MM/dd"

.field public static final FORMAT_Y_M_D_2:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final FORMAT_Y_M_D_H_M_1:Ljava/lang/String; = "yyyy/MM/dd HH:mm"

.field public static final FORMAT_Y_M_D_H_M_2:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final FORMAT_Y_M_D_NO_SEPARATOR:Ljava/lang/String; = "yyyyMMdd"

.field public static final FOUR_CHAR:C = '\u56db'

.field public static final FOUR_UNICODE:Ljava/lang/String; = "\u56db"

.field public static final HOU_UNICODE:Ljava/lang/String; = "\u540e"

.field public static final HOU_UNICODE_TW:Ljava/lang/String; = "\u5f8c"

.field public static final JANUARY:Ljava/lang/String; = "jan"

.field public static final JANUARY_PATTERN:Ljava/lang/String; = "[j|J][a][n][u][a][r][y]|[J][A][N][U][A][R][Y]|[J|j][a][n]"

.field public static final JIN_UNICODE:Ljava/lang/String; = "\u4eca"

.field public static final JULY:Ljava/lang/String; = "jul"

.field public static final JULY_PATTERN:Ljava/lang/String; = "[j|J][u][l][y]|[J][U][L][Y]|[J|j][u][l]"

.field public static final JUNE:Ljava/lang/String; = "jun"

.field public static final JUNE_PATTERN:Ljava/lang/String; = "[j|J][u][n][e]|[J][U][N][E]|[J|j][u][n]"

.field public static final KE_UNICODE:Ljava/lang/String; = "\u523b"

.field public static final LING_UNICODE:Ljava/lang/String; = "\u51cc"

.field public static final MARCH:Ljava/lang/String; = "mar"

.field public static final MARCH_PATTERN:Ljava/lang/String; = "[m|M][a][r][c][h]|[M][A][R][C][H]|[M|m][a][r]"

.field public static final MAY:Ljava/lang/String; = "may"

.field public static final MAY_PATTERN:Ljava/lang/String; = "[m|M][a][y]|[M][A][Y]|[M|m][a][y]"

.field public static final MIAO_UNICODE:Ljava/lang/String; = "\u79d2"

.field public static final MING_UNICODE:Ljava/lang/String; = "\u660e"

.field public static final MONTH_STRINGS:[Ljava/lang/String;

.field public static final NIAN_UNICODE:Ljava/lang/String; = "\u5e74"

.field public static final NINE_CHAR:C = '\u4e5d'

.field public static final NINE_UNICODE:Ljava/lang/String; = "\u4e5d"

.field public static final NOVEMBER:Ljava/lang/String; = "nov"

.field public static final NOVEMBER_PATTERN:Ljava/lang/String; = "[n|N][o][v][e][m][b][e][r]|[N][O][V][E][M][B][E][R]|[N|n][o][v]"

.field public static final NUM_0:I = 0x0

.field public static final NUM_1:I = 0x1

.field public static final NUM_10:I = 0xa

.field public static final NUM_100:I = 0x64

.field public static final NUM_11:I = 0xb

.field public static final NUM_12:I = 0xc

.field public static final NUM_13:I = 0xd

.field public static final NUM_15:I = 0xf

.field public static final NUM_16:I = 0x10

.field public static final NUM_1900:I = 0x76c

.field public static final NUM_2:I = 0x2

.field public static final NUM_20:I = 0x14

.field public static final NUM_21:I = 0x15

.field public static final NUM_23:I = 0x17

.field public static final NUM_28:I = 0x1c

.field public static final NUM_29:I = 0x1d

.field public static final NUM_3:I = 0x3

.field public static final NUM_30:I = 0x1e

.field public static final NUM_31:I = 0x1f

.field public static final NUM_4:I = 0x4

.field public static final NUM_400:I = 0x190

.field public static final NUM_5:I = 0x5

.field public static final NUM_59:I = 0x3b

.field public static final NUM_6:I = 0x6

.field public static final NUM_7:I = 0x7

.field public static final NUM_8:I = 0x8

.field public static final NUM_9:I = 0x9

.field public static final NUM_NEGATIVE_1:I = -0x1

.field public static final OCTOBER:Ljava/lang/String; = "oct"

.field public static final OCTOBER_PATTERN:Ljava/lang/String; = "[o|O][c][t][o][b][e][r]|[O][C][T][O][B][E][R]|[O|o][c][t]"

.field public static final ONE_CHAR:C = '\u4e00'

.field public static final ONE_CHAR_TW:C = '\u58f9'

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_UNICODE:Ljava/lang/String; = "\u4e00"

.field public static final ONE_UNICODE_TW:Ljava/lang/String; = "\u58f9"

.field public static final PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

.field public static final PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

.field public static final PATTERN_M_D_CN:Ljava/util/regex/Pattern;

.field public static final PATTERN_M_D_EN:Ljava/util/regex/Pattern;

.field public static final PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

.field public static final PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

.field public static final PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

.field public static final PATTERN_TIME:Ljava/util/regex/Pattern;

.field public static final PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

.field public static final PATTERN_WU_TIME:Ljava/util/regex/Pattern;

.field public static final PATTERN_Y_M_D:Ljava/util/regex/Pattern;

.field public static final PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

.field public static final PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

.field public static final QI_UNICODE:Ljava/lang/String; = "\u671f"

.field public static final RI_CHAR:C = '\u65e5'

.field public static final RI_UNICODE:Ljava/lang/String; = "\u65e5"

.field public static final SEPTEMBER:Ljava/lang/String; = "sep"

.field public static final SEPTEMBER_PATTERN:Ljava/lang/String; = "[s|S][e][p][t][e][m][b][e][r]|[S][E][P][T][E][M][B][E][R]|[S|s][e][p]|[S|s][e][p][t]"

.field public static final SEVEN_CHAR:C = '\u4e03'

.field public static final SEVEN_UNICODE:Ljava/lang/String; = "\u4e03"

.field public static final SHANG_UNICODE:Ljava/lang/String; = "\u4e0a"

.field public static final SIX_CHAR:C = '\u516d'

.field public static final SIX_UNICODE:Ljava/lang/String; = "\u516d"

.field public static final SPACE_STRING:Ljava/lang/String; = " "

.field public static final START_TIME_EVENT:Ljava/lang/String; = "2"

.field public static final TEN_CHAR:C = '\u5341'

.field public static final TEN_UNICODE:Ljava/lang/String; = "\u5341"

.field public static final THREE_CHAR:C = '\u4e09'

.field public static final THREE_UNICODE:Ljava/lang/String; = "\u4e09"

.field public static final TIAN_CHAR:C = '\u5929'

.field public static final TIAN_UNICODE:Ljava/lang/String; = "\u5929"

.field public static final TIME_TO_TIME_EVENT:Ljava/lang/String; = "3"

.field public static final TIME_TO_TIME_STRING:Ljava/lang/String; = "-"

.field public static final TWO_CHAR:C = '\u4e8c'

.field public static final TWO_UNICODE:Ljava/lang/String; = "\u4e8c"

.field public static final UNKNOW_EVENT:Ljava/lang/String; = "-1"

.field public static final URL_TIME_STRING:Ljava/lang/String; = "="

.field public static final WAN_UNICODE:Ljava/lang/String; = "\u665a"

.field public static final WU_UNICODE:Ljava/lang/String; = "\u5348"

.field public static final XIA_UNICODE:Ljava/lang/String; = "\u4e0b"

.field public static final XING_UNICODE:Ljava/lang/String; = "\u661f"

.field public static final YUE_UNICODE:Ljava/lang/String; = "\u6708"

.field public static final ZAO_UNICODE:Ljava/lang/String; = "\u65e9"

.field public static final ZERO_CHAR:C = '\u96f6'

.field public static final ZERO_UNICODE:Ljava/lang/String; = "\u96f6"

.field public static final ZHONG_UNICODE:Ljava/lang/String; = "\u4e2d"

.field public static final ZHOU_UNICODE:Ljava/lang/String; = "\u5468"

.field public static final sDateTimeMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sDateTimeTransformFilter:Landroid/text/util/Linkify$TransformFilter;


# direct methods
.method static synthetic -wrap0(Ljava/util/Date;)Z
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->isFutureTime(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByNextDayOfWeek(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createTimePointDates(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->changeCNToNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->switchFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Ljava/lang/String;)[Ljava/util/Date;
    .locals 1
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByDayWu(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Ljava/lang/String;)[Ljava/util/Date;
    .locals 1
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByTianWu(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Ljava/lang/String;)[Ljava/util/Date;
    .locals 1
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createTimeToTimeDates(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByCN_Wu_Dian(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D_Y(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 187
    const-string/jumbo v0, "[\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->CN_NUMBER:Ljava/util/regex/Pattern;

    .line 216
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "jan"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "feb"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "mar"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "apr"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "may"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "jun"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "jul"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "aug"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "sep"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "oct"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "nov"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dec"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 216
    sput-object v0, Landroid/util/DateTimeUrlHelper;->MONTH_STRINGS:[Ljava/lang/String;

    .line 227
    const-string/jumbo v0, "((([1-9][0-9][0-9][0-9])[\\/-]([0-9][0-9]|[0-9])[\\/-]?([0-9][0-9]|[0-9])))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D:Ljava/util/regex/Pattern;

    .line 233
    const-string/jumbo v0, "(((([1-9][0-9][0-9][0-9])|([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d][\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]{3}))([\u5e74])(([0-9][0-9]|[0-9])|(\u5341[\u4e00|\u58f9|\u4e8c]?)|([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]))([\u6708])(([0-9][0-9]|[0-9])|([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]?\u5341[\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]?)|([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]))([\u65e5]?)))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

    .line 241
    const-string/jumbo v0, "(([j|J][a][n][u][a][r][y]|[J][A][N][U][A][R][Y]|[J|j][a][n]|[f|F][e][b][r][u][a][r][y]|[F][E][B][R][U][A][R][Y]|[F|f][e][b]|[m|M][a][r][c][h]|[M][A][R][C][H]|[M|m][a][r]|[a|A][p][r][i][l]|[A][P][R][I][L]|[A|a][p][r]|[m|M][a][y]|[M][A][Y]|[M|m][a][y]|[j|J][u][n][e]|[J][U][N][E]|[J|j][u][n]|[j|J][u][l][y]|[J][U][L][Y]|[J|j][u][l]|[a|A][u][g][u][s][t]|[A][U][G][U][S][T]|[A|a][u][g]|[s|S][e][p][t][e][m][b][e][r]|[S][E][P][T][E][M][B][E][R]|[S|s][e][p]|[S|s][e][p][t]|[o|O][c][t][o][b][e][r]|[O][C][T][O][B][E][R]|[O|o][c][t]|[n|N][o][v][e][m][b][e][r]|[N][O][V][E][M][B][E][R]|[N|n][o][v]|[d|D][e][c][e][m][b][e][r]|[D][E][C][E][M][B][E][R]|[D|d][e][c])\\s+([0-9][0-9]|[0-9])([\\,|\uff0c])(\\s?)([1-9][0-9][0-9][0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

    .line 250
    const-string/jumbo v0, "(([j|J][a][n][u][a][r][y]|[J][A][N][U][A][R][Y]|[J|j][a][n]|[f|F][e][b][r][u][a][r][y]|[F][E][B][R][U][A][R][Y]|[F|f][e][b]|[m|M][a][r][c][h]|[M][A][R][C][H]|[M|m][a][r]|[a|A][p][r][i][l]|[A][P][R][I][L]|[A|a][p][r]|[m|M][a][y]|[M][A][Y]|[M|m][a][y]|[j|J][u][n][e]|[J][U][N][E]|[J|j][u][n]|[j|J][u][l][y]|[J][U][L][Y]|[J|j][u][l]|[a|A][u][g][u][s][t]|[A][U][G][U][S][T]|[A|a][u][g]|[s|S][e][p][t][e][m][b][e][r]|[S][E][P][T][E][M][B][E][R]|[S|s][e][p]|[S|s][e][p][t]|[o|O][c][t][o][b][e][r]|[O][C][T][O][B][E][R]|[O|o][c][t]|[n|N][o][v][e][m][b][e][r]|[N][O][V][E][M][B][E][R]|[N|n][o][v]|[d|D][e][c][e][m][b][e][r]|[D][E][C][E][M][B][E][R]|[D|d][e][c])\\s+([0-9][0-9]|[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_EN:Ljava/util/regex/Pattern;

    .line 258
    const-string/jumbo v0, "((([0-9][0-9]|[0-9])([\u6708])([0-9][0-9]|[0-9])([\u65e5])))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_CN:Ljava/util/regex/Pattern;

    .line 267
    const-string/jumbo v0, "((([\u5341][\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d])|([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d|\u5341]))([\u6708])(([\u4e8c|\u4e09][\u5341])|([\u4e8c|\u4e09][\u5341][\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d])|([\u5341][\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d])|([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d|\u5341]))([\u65e5]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

    .line 285
    const-string/jumbo v0, "((([1-9][0-9][0-9][0-9])[\\/-]([0-9][0-9]|[0-9])[\\/-]([0-9][0-9]|[0-9])\\u0020+([0-2][0-9]|[0-9])([\\:|\uff1a])([0-5][0-9])))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

    .line 292
    const-string/jumbo v0, "((([0-2][0-9]|[0-9])([\\:|\uff1a])([0-5][0-9])\\-([0-2][0-9]|[0-9])([\\:|\uff1a])([0-5][0-9])))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

    .line 299
    const-string/jumbo v0, "(([\u5927][\u540e]|[\u5927][\u5f8c]|[\u4eca]|[\u660e]|[\u540e]|[\u5f8c])[\u5929]([\u4e0a|\u4e2d|\u4e0b][\u5348]|[\u665a][\u4e0a]|[\u65e9][\u4e0a]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

    .line 308
    const-string/jumbo v0, "(([\u5468]|[\u661f][\u671f])([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u65e5|\u5929])([\u4e0a|\u4e2d|\u4e0b][\u5348]|[\u665a][\u4e0a]|[\u65e9][\u4e0a]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

    .line 317
    const-string/jumbo v0, "(([\u4e0b])([\u5468]|[\u661f][\u671f])([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u65e5|\u5929]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

    .line 325
    const-string/jumbo v0, "((([0-2][0-9]|[0-9])|(\u4e8c\u5341[\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]?)|(\u5341[\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]?)|([\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]))([\\:|\uff1a|\u70b9|\u9ede])(([0-5][0-9])|([\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94]?\u5341[\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d]?)|([\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d])))\u5206?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME:Ljava/util/regex/Pattern;

    .line 334
    const-string/jumbo v0, "((([\u51cc][\u6668])([0-4]|[\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db])([\u70b9|\u9ede])(\u534a|([0-3]|[\u4e00|\u58f9|\u4e8c|\u4e09])\u523b)?)|(([\u4e2d][\u5348])(([1][1]|[1][2]|[1]|[2])|(([\u5341][\u4e00])|([\u5341][\u58f9])|([\u5341][\u4e8c])|([\u4e00|\u58f9|\u4e8c])))([\u70b9|\u9ede]))|(([\u508d][\u665a])([\u4e94|\u516d|\u4e03]|[5|6|7])([\u70b9|\u9ede])(\u534a|([0-3]|[\u4e00|\u58f9|\u4e8c|\u4e09])\u523b)?)|(([\u4e0a][\u5348]|[\u65e9][\u4e0a])(([0-9]|[1][0]|[1][1]|[1][2])|([\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d|\u4e03|\u516b|\u4e5d|\u5341])|([\u5341][\u4e00]|[\u5341][\u58f9]|[\u5341][\u4e8c]))([\u70b9|\u9ede])(\u534a|([0-3]|[\u4e00|\u58f9|\u4e8c|\u4e09])\u523b)?)|(([\u4e0b][\u5348])(([1-6]|[1][2])|([\u96f6|\u4e00|\u58f9|\u4e8c|\u4e09|\u56db|\u4e94|\u516d])|([\u5341][\u4e8c]))([\u70b9|\u9ede])(\u534a|([0-3]|[\u4e00|\u58f9|\u4e8c|\u4e09])\u523b)?)|(([\u665a][\u4e0a])(([6-9]|[1][0]|[1][1])|([\u516d|\u4e03|\u516b|\u4e5d|\u5341])|([\u5341][\u4e00]|[\u5341][\u58f9]))([\u70b9|\u9ede])(\u534a|([0-3]|[\u4e00|\u58f9|\u4e8c|\u4e09])\u523b)?))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->PATTERN_WU_TIME:Ljava/util/regex/Pattern;

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 382
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_CN:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_EN:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    const-string/jumbo v1, "|"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    sget-object v1, Landroid/util/DateTimeUrlHelper;->PATTERN_WU_TIME:Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 384
    const-string/jumbo v1, ")"

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/DateTimeUrlHelper;->DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 665
    new-instance v0, Landroid/util/DateTimeUrlHelper$1;

    invoke-direct {v0}, Landroid/util/DateTimeUrlHelper$1;-><init>()V

    sput-object v0, Landroid/util/DateTimeUrlHelper;->sDateTimeTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 675
    new-instance v0, Landroid/util/DateTimeUrlHelper$2;

    invoke-direct {v0}, Landroid/util/DateTimeUrlHelper$2;-><init>()V

    sput-object v0, Landroid/util/DateTimeUrlHelper;->sDateTimeMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeCNToNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 862
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 863
    .local v0, "N":I
    new-array v7, v0, [I

    .line 864
    .local v7, "temp":[I
    const/4 v8, -0x1

    .line 865
    .local v8, "yue":I
    const/4 v6, -0x1

    .line 866
    .local v6, "ri":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 867
    .local v5, "newDate":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 868
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 869
    .local v1, "c":C
    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->isCNDigit(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 870
    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->changeNum(C)I

    move-result v9

    aput v9, v7, v3

    .line 867
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 872
    :cond_0
    aput v10, v7, v3

    .line 873
    if-ne v8, v10, :cond_1

    .line 874
    move v8, v3

    goto :goto_1

    .line 876
    :cond_1
    move v6, v3

    goto :goto_1

    .line 880
    .end local v1    # "c":C
    :cond_2
    if-ne v8, v12, :cond_5

    .line 881
    aget v4, v7, v11

    .line 882
    .local v4, "month":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 887
    .end local v4    # "month":I
    :cond_3
    :goto_2
    sub-int v9, v6, v8

    if-ne v9, v13, :cond_6

    .line 888
    add-int/lit8 v9, v8, 0x1

    aget v2, v7, v9

    .line 889
    .local v2, "day":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 902
    .end local v2    # "day":I
    :cond_4
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 883
    :cond_5
    if-ne v8, v13, :cond_3

    .line 884
    aget v9, v7, v11

    aget v10, v7, v12

    add-int v4, v9, v10

    .line 885
    .restart local v4    # "month":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 890
    .end local v4    # "month":I
    :cond_6
    sub-int v9, v6, v8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 891
    add-int/lit8 v9, v8, 0x1

    aget v9, v7, v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_7

    .line 892
    add-int/lit8 v9, v8, 0x1

    aget v9, v7, v9

    add-int/lit8 v10, v8, 0x2

    aget v10, v7, v10

    add-int v2, v9, v10

    .line 893
    .restart local v2    # "day":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 895
    .end local v2    # "day":I
    :cond_7
    add-int/lit8 v9, v8, 0x1

    aget v9, v7, v9

    add-int/lit8 v10, v8, 0x2

    aget v10, v7, v10

    mul-int v2, v9, v10

    .line 896
    .restart local v2    # "day":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 898
    .end local v2    # "day":I
    :cond_8
    sub-int v9, v6, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 899
    add-int/lit8 v9, v8, 0x1

    aget v9, v7, v9

    add-int/lit8 v10, v8, 0x2

    aget v10, v7, v10

    mul-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x3

    aget v10, v7, v10

    add-int v2, v9, v10

    .line 900
    .restart local v2    # "day":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method private static changeNum(C)I
    .locals 1
    .param p0, "charAt"    # C

    .prologue
    .line 912
    const/4 v0, 0x0

    .line 913
    .local v0, "num":I
    sparse-switch p0, :sswitch_data_0

    .line 950
    :goto_0
    return v0

    .line 915
    :sswitch_0
    const/4 v0, 0x1

    .line 916
    goto :goto_0

    .line 918
    :sswitch_1
    const/4 v0, 0x1

    .line 919
    goto :goto_0

    .line 921
    :sswitch_2
    const/4 v0, 0x2

    .line 922
    goto :goto_0

    .line 924
    :sswitch_3
    const/4 v0, 0x3

    .line 925
    goto :goto_0

    .line 927
    :sswitch_4
    const/4 v0, 0x4

    .line 928
    goto :goto_0

    .line 930
    :sswitch_5
    const/4 v0, 0x5

    .line 931
    goto :goto_0

    .line 933
    :sswitch_6
    const/4 v0, 0x6

    .line 934
    goto :goto_0

    .line 936
    :sswitch_7
    const/4 v0, 0x7

    .line 937
    goto :goto_0

    .line 939
    :sswitch_8
    const/16 v0, 0x8

    .line 940
    goto :goto_0

    .line 942
    :sswitch_9
    const/16 v0, 0x9

    .line 943
    goto :goto_0

    .line 945
    :sswitch_a
    const/16 v0, 0xa

    .line 946
    goto :goto_0

    .line 913
    :sswitch_data_0
    .sparse-switch
        0x4e00 -> :sswitch_0
        0x4e03 -> :sswitch_7
        0x4e09 -> :sswitch_3
        0x4e5d -> :sswitch_9
        0x4e8c -> :sswitch_2
        0x4e94 -> :sswitch_5
        0x516b -> :sswitch_8
        0x516d -> :sswitch_6
        0x5341 -> :sswitch_a
        0x56db -> :sswitch_4
        0x58f9 -> :sswitch_1
    .end sparse-switch
.end method

.method private static cnTimeTransform(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    .line 1094
    const-string/jumbo v3, "\u70b9"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1095
    const-string/jumbo v3, "\u70b9"

    const-string/jumbo v4, ":"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1097
    :cond_0
    const-string/jumbo v3, "\u9ede"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1098
    const-string/jumbo v3, "\u9ede"

    .line 1099
    const-string/jumbo v4, ":"

    .line 1098
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1101
    :cond_1
    const-string/jumbo v3, "\u5206"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1102
    const-string/jumbo v3, "\u5206"

    const-string/jumbo v4, ":"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1104
    :cond_2
    const-string/jumbo v3, "\u79d2"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1105
    const-string/jumbo v3, "\u79d2"

    const-string/jumbo v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1108
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1109
    .local v2, "time":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 1110
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1111
    .local v0, "c":C
    const/16 v3, 0x5341

    if-ne v0, v3, :cond_5

    .line 1112
    if-lez v1, :cond_7

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->isCNDigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_6

    .line 1114
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->isCNDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1109
    .end local v0    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1117
    .restart local v0    # "c":C
    :cond_4
    const/16 v0, 0x30

    .line 1126
    .end local v0    # "c":C
    :cond_5
    :goto_2
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->isCNDigit(C)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1127
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->changeNum(C)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1120
    .restart local v0    # "c":C
    :cond_6
    const/16 v0, 0x30

    .local v0, "c":C
    goto :goto_2

    .line 1123
    .local v0, "c":C
    :cond_7
    const/16 v0, 0x31

    .local v0, "c":C
    goto :goto_2

    .line 1129
    .end local v0    # "c":C
    :cond_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1132
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static createDateByCN_Wu_Dian(Ljava/lang/String;)Ljava/util/Date;
    .locals 13
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 1315
    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1317
    .local v8, "wu":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1318
    .local v3, "minutes":I
    const-string/jumbo v9, "\u534a"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1319
    .local v0, "banIndex":I
    const-string/jumbo v9, "\u523b"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1320
    .local v1, "keIndex":I
    const/4 v5, 0x0

    .line 1321
    .local v5, "timeEnd":I
    if-eq v0, v10, :cond_2

    .line 1322
    const/16 v3, 0x1e

    .line 1323
    add-int/lit8 v5, v0, -0x1

    .line 1333
    :goto_0
    invoke-virtual {p0, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1335
    .local v7, "timeString":Ljava/lang/String;
    invoke-static {v7}, Landroid/util/DateTimeUrlHelper;->getTimeStringToTimeNum(Ljava/lang/String;)I

    move-result v6

    .line 1336
    .local v6, "timeNum":I
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1337
    .local v4, "startDate":Ljava/util/Date;
    const-string/jumbo v9, "\u4e0b"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "\u665a"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1338
    const-string/jumbo v9, "\u508d"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 1337
    if-eqz v9, :cond_4

    .line 1339
    :cond_0
    const/16 v9, 0xc

    if-ge v6, v9, :cond_1

    .line 1340
    add-int/lit8 v6, v6, 0xc

    .line 1347
    :cond_1
    :goto_1
    invoke-virtual {v4, v6}, Ljava/util/Date;->setHours(I)V

    .line 1348
    invoke-virtual {v4, v3}, Ljava/util/Date;->setMinutes(I)V

    .line 1349
    invoke-virtual {v4, v11}, Ljava/util/Date;->setSeconds(I)V

    .line 1350
    return-object v4

    .line 1324
    .end local v4    # "startDate":Ljava/util/Date;
    .end local v6    # "timeNum":I
    .end local v7    # "timeString":Ljava/lang/String;
    :cond_2
    if-eq v1, v10, :cond_3

    .line 1326
    add-int/lit8 v9, v1, -0x1

    .line 1325
    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/DateTimeUrlHelper;->getTimeStringToTimeNum(Ljava/lang/String;)I

    move-result v2

    .line 1327
    .local v2, "keNum":I
    mul-int/lit8 v3, v2, 0xf

    .line 1328
    add-int/lit8 v5, v1, -0x2

    goto :goto_0

    .line 1330
    .end local v2    # "keNum":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    goto :goto_0

    .line 1342
    .restart local v4    # "startDate":Ljava/util/Date;
    .restart local v6    # "timeNum":I
    .restart local v7    # "timeString":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "\u4e2d"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    invoke-static {v9, v8}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1343
    const/16 v9, 0xb

    if-ge v6, v9, :cond_1

    .line 1344
    add-int/lit8 v6, v6, 0xc

    goto :goto_1
.end method

.method private static createDateByDayWu(Ljava/lang/String;)[Ljava/util/Date;
    .locals 14
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v9, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1208
    const/4 v1, 0x0

    .line 1209
    .local v1, "day":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1210
    .local v7, "wu":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1211
    .local v3, "startDate":Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1212
    .local v2, "endDate":Ljava/util/Date;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1213
    .local v0, "N":I
    const/4 v8, 0x5

    if-ne v0, v8, :cond_4

    .line 1214
    invoke-virtual {p0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1215
    .local v1, "day":Ljava/lang/String;
    invoke-virtual {p0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1221
    .end local v1    # "day":Ljava/lang/String;
    .end local v7    # "wu":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v8, "\u4e0a"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "\u65e9"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1222
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Ljava/util/Date;->setHours(I)V

    .line 1223
    invoke-virtual {v3, v10}, Ljava/util/Date;->setMinutes(I)V

    .line 1224
    const/16 v8, 0x9

    invoke-virtual {v2, v8}, Ljava/util/Date;->setHours(I)V

    .line 1225
    invoke-virtual {v2, v10}, Ljava/util/Date;->setMinutes(I)V

    .line 1242
    :cond_2
    :goto_1
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->getWeekOfDate(Ljava/util/Date;)I

    move-result v5

    .line 1243
    .local v5, "today":I
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/util/DateTimeUrlHelper;->getTagerDay(C)I

    move-result v4

    .line 1245
    .local v4, "tagerDay":I
    if-eq v5, v4, :cond_3

    .line 1246
    if-ge v5, v4, :cond_8

    .line 1247
    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v8

    sub-int v9, v4, v5

    add-int/2addr v8, v9

    invoke-virtual {v3, v8}, Ljava/util/Date;->setDate(I)V

    .line 1248
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v8

    sub-int v9, v4, v5

    add-int/2addr v8, v9

    invoke-virtual {v2, v8}, Ljava/util/Date;->setDate(I)V

    .line 1254
    :cond_3
    :goto_2
    new-array v6, v11, [Ljava/util/Date;

    .line 1255
    .local v6, "value":[Ljava/util/Date;
    aput-object v3, v6, v10

    .line 1256
    aput-object v2, v6, v12

    .line 1257
    return-object v6

    .line 1216
    .end local v4    # "tagerDay":I
    .end local v5    # "today":I
    .end local v6    # "value":[Ljava/util/Date;
    .local v1, "day":Ljava/lang/String;
    .restart local v7    # "wu":Ljava/lang/String;
    :cond_4
    if-ne v0, v13, :cond_0

    .line 1217
    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1218
    .local v1, "day":Ljava/lang/String;
    invoke-virtual {p0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .local v7, "wu":Ljava/lang/String;
    goto :goto_0

    .line 1226
    .end local v1    # "day":Ljava/lang/String;
    .end local v7    # "wu":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "\u4e2d"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1227
    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Ljava/util/Date;->setHours(I)V

    .line 1228
    invoke-virtual {v3, v10}, Ljava/util/Date;->setMinutes(I)V

    .line 1229
    const/16 v8, 0xd

    invoke-virtual {v2, v8}, Ljava/util/Date;->setHours(I)V

    .line 1230
    invoke-virtual {v2, v10}, Ljava/util/Date;->setMinutes(I)V

    goto :goto_1

    .line 1231
    :cond_6
    const-string/jumbo v8, "\u4e0b"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1232
    const/16 v8, 0xf

    invoke-virtual {v3, v8}, Ljava/util/Date;->setHours(I)V

    .line 1233
    invoke-virtual {v3, v10}, Ljava/util/Date;->setMinutes(I)V

    .line 1234
    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Ljava/util/Date;->setHours(I)V

    .line 1235
    invoke-virtual {v2, v10}, Ljava/util/Date;->setMinutes(I)V

    goto :goto_1

    .line 1236
    :cond_7
    const-string/jumbo v8, "\u665a"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1237
    const/16 v8, 0x14

    invoke-virtual {v3, v8}, Ljava/util/Date;->setHours(I)V

    .line 1238
    invoke-virtual {v3, v10}, Ljava/util/Date;->setMinutes(I)V

    .line 1239
    const/16 v8, 0x15

    invoke-virtual {v2, v8}, Ljava/util/Date;->setHours(I)V

    .line 1240
    invoke-virtual {v2, v10}, Ljava/util/Date;->setMinutes(I)V

    goto/16 :goto_1

    .line 1250
    .restart local v4    # "tagerDay":I
    .restart local v5    # "today":I
    :cond_8
    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v8

    rsub-int/lit8 v9, v5, 0x7

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    invoke-virtual {v3, v8}, Ljava/util/Date;->setDate(I)V

    .line 1251
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v8

    rsub-int/lit8 v9, v5, 0x7

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    invoke-virtual {v2, v8}, Ljava/util/Date;->setDate(I)V

    goto/16 :goto_2
.end method

.method private static createDateByEN_M_D(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p0, "matchingRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1387
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1388
    .local v1, "mon":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 1389
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 1388
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1390
    .local v0, "day":Ljava/lang/String;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1392
    .local v2, "now":Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v7

    add-int/lit16 v7, v7, 0x76c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1393
    .local v5, "year":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->getMonByEn(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1395
    .local v4, "temp":Ljava/lang/String;
    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1396
    const/4 v6, 0x0

    return-object v6

    .line 1398
    :cond_0
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    return-object v6
.end method

.method private static createDateByEN_M_D_Y(Ljava/lang/String;)Ljava/util/Date;
    .locals 9
    .param p0, "matchingRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1291
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1293
    .local v1, "mon":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1294
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\uff0c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1295
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1294
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1292
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1297
    .local v0, "day":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1298
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1297
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1296
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1300
    .local v4, "year":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy/MM/dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->getMonByEn(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1302
    .local v3, "temp":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateDate(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1303
    const/4 v5, 0x0

    return-object v5

    .line 1305
    :cond_0
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    return-object v5
.end method

.method private static createDateByNextDayOfWeek(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    .line 1268
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1269
    .local v1, "startDate":Ljava/util/Date;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1270
    .local v0, "day":Ljava/lang/String;
    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->getWeekOfDate(Ljava/util/Date;)I

    move-result v3

    .line 1271
    .local v3, "today":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->getTagerDay(C)I

    move-result v2

    .line 1273
    .local v2, "tagerDay":I
    if-ge v3, v2, :cond_0

    .line 1274
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v4

    sub-int v5, v2, v3

    add-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/Date;->setDate(I)V

    .line 1280
    :goto_0
    return-object v1

    .line 1275
    :cond_0
    if-le v3, v2, :cond_1

    .line 1276
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v4

    rsub-int/lit8 v5, v3, 0x7

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/util/Date;->setDate(I)V

    goto :goto_0

    .line 1278
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {v1, v4}, Ljava/util/Date;->setDate(I)V

    goto :goto_0
.end method

.method private static createDateByTianWu(Ljava/lang/String;)[Ljava/util/Date;
    .locals 13
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1144
    const/4 v1, 0x0

    .line 1145
    .local v1, "day":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1146
    .local v6, "wu":Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1147
    .local v4, "startDate":Ljava/util/Date;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1148
    .local v2, "endDate":Ljava/util/Date;
    const/4 v3, 0x0

    .line 1149
    .local v3, "hasDa":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1150
    .local v0, "N":I
    const/4 v7, 0x5

    if-ne v0, v7, :cond_4

    .line 1151
    const/4 v3, 0x1

    .line 1152
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "day":Ljava/lang/String;
    invoke-virtual {p0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1159
    .end local v1    # "day":Ljava/lang/String;
    .end local v6    # "wu":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v7, "\u4e0a"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "\u65e9"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1160
    :cond_1
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Ljava/util/Date;->setHours(I)V

    .line 1161
    invoke-virtual {v4, v8}, Ljava/util/Date;->setMinutes(I)V

    .line 1162
    const/16 v7, 0x9

    invoke-virtual {v2, v7}, Ljava/util/Date;->setHours(I)V

    .line 1163
    invoke-virtual {v2, v8}, Ljava/util/Date;->setMinutes(I)V

    .line 1180
    :cond_2
    :goto_1
    if-eqz v3, :cond_8

    .line 1181
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v4, v7}, Ljava/util/Date;->setDate(I)V

    .line 1182
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/Date;->setDate(I)V

    .line 1193
    :cond_3
    :goto_2
    new-array v5, v10, [Ljava/util/Date;

    .line 1194
    .local v5, "value":[Ljava/util/Date;
    aput-object v4, v5, v8

    .line 1195
    aput-object v2, v5, v9

    .line 1196
    return-object v5

    .line 1154
    .end local v5    # "value":[Ljava/util/Date;
    .local v1, "day":Ljava/lang/String;
    .restart local v6    # "wu":Ljava/lang/String;
    :cond_4
    if-ne v0, v12, :cond_0

    .line 1155
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, "day":Ljava/lang/String;
    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .local v6, "wu":Ljava/lang/String;
    goto :goto_0

    .line 1164
    .end local v1    # "day":Ljava/lang/String;
    .end local v6    # "wu":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "\u4e2d"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1165
    const/16 v7, 0xc

    invoke-virtual {v4, v7}, Ljava/util/Date;->setHours(I)V

    .line 1166
    invoke-virtual {v4, v8}, Ljava/util/Date;->setMinutes(I)V

    .line 1167
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Ljava/util/Date;->setHours(I)V

    .line 1168
    invoke-virtual {v2, v8}, Ljava/util/Date;->setMinutes(I)V

    goto :goto_1

    .line 1169
    :cond_6
    const-string/jumbo v7, "\u4e0b"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1170
    const/16 v7, 0xf

    invoke-virtual {v4, v7}, Ljava/util/Date;->setHours(I)V

    .line 1171
    invoke-virtual {v4, v8}, Ljava/util/Date;->setMinutes(I)V

    .line 1172
    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Ljava/util/Date;->setHours(I)V

    .line 1173
    invoke-virtual {v2, v8}, Ljava/util/Date;->setMinutes(I)V

    goto :goto_1

    .line 1174
    :cond_7
    const-string/jumbo v7, "\u665a"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1175
    const/16 v7, 0x14

    invoke-virtual {v4, v7}, Ljava/util/Date;->setHours(I)V

    .line 1176
    invoke-virtual {v4, v8}, Ljava/util/Date;->setMinutes(I)V

    .line 1177
    const/16 v7, 0x15

    invoke-virtual {v2, v7}, Ljava/util/Date;->setHours(I)V

    .line 1178
    invoke-virtual {v2, v8}, Ljava/util/Date;->setMinutes(I)V

    goto :goto_1

    .line 1184
    :cond_8
    const-string/jumbo v7, "\u4eca"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1185
    const-string/jumbo v7, "\u660e"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1186
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Date;->setDate(I)V

    .line 1187
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/Date;->setDate(I)V

    goto/16 :goto_2

    .line 1188
    :cond_9
    const-string/jumbo v7, "\u540e"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "\u5f8c"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1189
    :cond_a
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Date;->setDate(I)V

    .line 1190
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/Date;->setDate(I)V

    goto/16 :goto_2
.end method

.method private static createTimePointDates(Ljava/lang/String;)Ljava/util/Date;
    .locals 7
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1072
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1073
    .local v0, "startDate":Ljava/util/Date;
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->cnTimeTransform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "timeStr":Ljava/lang/String;
    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1075
    .local v2, "timeStrs":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 1076
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->setHours(I)V

    .line 1077
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->setMinutes(I)V

    .line 1078
    array-length v3, v2

    if-ne v3, v6, :cond_1

    .line 1079
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->setSeconds(I)V

    .line 1084
    :cond_0
    :goto_0
    return-object v0

    .line 1081
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_0
.end method

.method private static createTimeToTimeDates(Ljava/lang/String;)[Ljava/util/Date;
    .locals 8
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1044
    const-string/jumbo v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1045
    .local v3, "startTime":Ljava/lang/String;
    const-string/jumbo v5, "-"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1046
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1045
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "endTime":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->validateTime(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1050
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1051
    .local v2, "startDate":Ljava/util/Date;
    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/Date;->setHours(I)V

    .line 1052
    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1053
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 1052
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/Date;->setMinutes(I)V

    .line 1054
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1055
    .local v0, "endDate":Ljava/util/Date;
    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Date;->setHours(I)V

    .line 1057
    const-string/jumbo v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1056
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/Date;->setMinutes(I)V

    .line 1058
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/util/Date;

    .line 1059
    .local v4, "value":[Ljava/util/Date;
    aput-object v2, v4, v7

    .line 1060
    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 1061
    return-object v4

    .line 1048
    .end local v0    # "endDate":Ljava/util/Date;
    .end local v2    # "startDate":Ljava/util/Date;
    .end local v4    # "value":[Ljava/util/Date;
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method

.method private static getMonByEn(Ljava/lang/String;)I
    .locals 4
    .param p0, "monEn"    # Ljava/lang/String;

    .prologue
    .line 1408
    const/4 v1, 0x1

    .line 1409
    .local v1, "monNum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/util/DateTimeUrlHelper;->MONTH_STRINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1410
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/util/DateTimeUrlHelper;->MONTH_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1411
    add-int/lit8 v1, v0, 0x1

    .line 1415
    :cond_0
    return v1

    .line 1409
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getTagerDay(C)I
    .locals 1
    .param p0, "day"    # C

    .prologue
    .line 1425
    const/4 v0, 0x0

    .line 1426
    .local v0, "num":I
    sparse-switch p0, :sswitch_data_0

    .line 1457
    :goto_0
    return v0

    .line 1428
    :sswitch_0
    const/4 v0, 0x2

    .line 1429
    goto :goto_0

    .line 1431
    :sswitch_1
    const/4 v0, 0x2

    .line 1432
    goto :goto_0

    .line 1434
    :sswitch_2
    const/4 v0, 0x3

    .line 1435
    goto :goto_0

    .line 1437
    :sswitch_3
    const/4 v0, 0x4

    .line 1438
    goto :goto_0

    .line 1440
    :sswitch_4
    const/4 v0, 0x5

    .line 1441
    goto :goto_0

    .line 1443
    :sswitch_5
    const/4 v0, 0x6

    .line 1444
    goto :goto_0

    .line 1446
    :sswitch_6
    const/4 v0, 0x7

    .line 1447
    goto :goto_0

    .line 1449
    :sswitch_7
    const/4 v0, 0x1

    .line 1450
    goto :goto_0

    .line 1452
    :sswitch_8
    const/4 v0, 0x1

    .line 1453
    goto :goto_0

    .line 1426
    nop

    :sswitch_data_0
    .sparse-switch
        0x4e00 -> :sswitch_0
        0x4e09 -> :sswitch_3
        0x4e8c -> :sswitch_2
        0x4e94 -> :sswitch_5
        0x516d -> :sswitch_6
        0x56db -> :sswitch_4
        0x58f9 -> :sswitch_1
        0x5929 -> :sswitch_8
        0x65e5 -> :sswitch_7
    .end sparse-switch
.end method

.method private static getTimeStringToTimeNum(Ljava/lang/String;)I
    .locals 3
    .param p0, "timeString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1360
    const/4 v0, -0x1

    .line 1361
    .local v0, "num":I
    if-nez p0, :cond_0

    .line 1362
    return v0

    .line 1363
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1364
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1365
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1376
    :goto_0
    return v0

    .line 1367
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->changeNum(C)I

    move-result v0

    goto :goto_0

    .line 1370
    :cond_2
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1371
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1373
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->changeNum(C)I

    move-result v1

    add-int/lit8 v0, v1, 0xa

    goto :goto_0
.end method

.method public static getWeekOfDate(Ljava/util/Date;)I
    .locals 3
    .param p0, "dt"    # Ljava/util/Date;

    .prologue
    .line 1467
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1468
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1469
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1470
    .local v1, "w":I
    if-gez v1, :cond_0

    .line 1471
    const/4 v1, 0x0

    .line 1473
    :cond_0
    return v1
.end method

.method private static isCNDigit(C)Z
    .locals 1
    .param p0, "charAt"    # C

    .prologue
    .line 960
    const v0, 0x96f6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e00

    if-ne p0, v0, :cond_1

    .line 963
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 960
    :cond_1
    const/16 v0, 0x58f9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e8c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e09

    if-eq p0, v0, :cond_0

    .line 961
    const/16 v0, 0x56db

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e94

    if-eq p0, v0, :cond_0

    const/16 v0, 0x516d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e03

    if-eq p0, v0, :cond_0

    .line 962
    const/16 v0, 0x516b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5341

    if-eq p0, v0, :cond_0

    .line 965
    const/4 v0, 0x0

    return v0
.end method

.method private static isFutureTime(Ljava/util/Date;)Z
    .locals 6
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 654
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 655
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 656
    const/4 v1, 0x0

    return v1

    .line 658
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 504
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    const/4 v1, 0x1

    return v1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 2
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 644
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static parserDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "matchingRegion"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 518
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 519
    .local v0, "date":Ljava/util/Date;
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_H_M:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 521
    const/4 v4, 0x0

    .line 522
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    const-string/jumbo v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 523
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd HH:mm"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    move-object v4, v5

    .line 527
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 528
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 525
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd HH:mm"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    move-object v4, v5

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 529
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 530
    .local v3, "e":Ljava/text/ParseException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 632
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_1
    :goto_1
    return-object p0

    .line 532
    :cond_2
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 534
    const/4 v4, 0x0

    .line 535
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_1
    const-string/jumbo v7, "/"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_3

    .line 536
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    move-object v4, v5

    .line 542
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :goto_2
    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 543
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 544
    const-string/jumbo v8, "+"

    .line 543
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 544
    const-string/jumbo v8, "1"

    .line 543
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 537
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v8, :cond_4

    .line 538
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    move-object v4, v5

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_2

    .line 540
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMdd"

    invoke-direct {v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    move-object v4, v5

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_2

    .line 545
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v3

    .line 546
    .restart local v3    # "e":Ljava/text/ParseException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 548
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_5
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME_TO_TIME:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 550
    :try_start_2
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createTimeToTimeDates(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 551
    .local v1, "dates":[Ljava/util/Date;
    if-nez v1, :cond_6

    .line 552
    return-object p0

    .line 554
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 555
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 554
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 555
    const-string/jumbo v8, "+"

    .line 554
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 555
    const-string/jumbo v8, "3"

    .line 554
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    return-object v7

    .line 556
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_2
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 559
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIAN_WU_CN:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 561
    :try_start_3
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByTianWu(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 562
    .restart local v1    # "dates":[Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 563
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 562
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 563
    const-string/jumbo v8, "+"

    .line 562
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 563
    const-string/jumbo v8, "3"

    .line 562
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    return-object v7

    .line 564
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_3
    move-exception v2

    .line 565
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 567
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_Y_M_D_CN:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 569
    :try_start_4
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 570
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->switchFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 571
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v7

    return-object v7

    .line 572
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_4
    move-exception v3

    .line 573
    .restart local v3    # "e":Ljava/text/ParseException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 575
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_9
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_CN:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 577
    :try_start_5
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 578
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 579
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v7

    return-object v7

    .line 580
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_5
    move-exception v3

    .line 581
    .restart local v3    # "e":Ljava/text/ParseException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 583
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_a
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_ALL_CN:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 585
    :try_start_6
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->changeCNToNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, "temp":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy/MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 587
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {v6}, Landroid/util/DateTimeUrlHelper;->switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 588
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v7

    return-object v7

    .line 589
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "temp":Ljava/lang/String;
    :catch_6
    move-exception v3

    .line 590
    .restart local v3    # "e":Ljava/text/ParseException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 592
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_b
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_TIME:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 593
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createTimePointDates(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 595
    :cond_c
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_DAY_WU_CN:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 597
    :try_start_7
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByDayWu(Ljava/lang/String;)[Ljava/util/Date;

    move-result-object v1

    .line 598
    .restart local v1    # "dates":[Ljava/util/Date;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 599
    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 598
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 599
    const-string/jumbo v8, "+"

    .line 598
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 599
    const-string/jumbo v8, "3"

    .line 598
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v7

    return-object v7

    .line 600
    .end local v1    # "dates":[Ljava/util/Date;
    :catch_7
    move-exception v2

    .line 601
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 603
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_NEXT_DAY_OF_WEEK:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 605
    :try_start_8
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByNextDayOfWeek(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 606
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v7

    return-object v7

    .line 607
    :catch_8
    move-exception v2

    .line 608
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 610
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_Y_EN:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 612
    :try_start_9
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D_Y(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 613
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v7

    return-object v7

    .line 614
    :catch_9
    move-exception v2

    .line 615
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 617
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_f
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_M_D_EN:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 619
    :try_start_a
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByEN_M_D(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 620
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v7

    return-object v7

    .line 621
    :catch_a
    move-exception v2

    .line 622
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 624
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_10
    sget-object v7, Landroid/util/DateTimeUrlHelper;->PATTERN_WU_TIME:Ljava/util/regex/Pattern;

    invoke-static {v7, p0}, Landroid/util/DateTimeUrlHelper;->match(Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 626
    :try_start_b
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->createDateByCN_Wu_Dian(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 627
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v7

    return-object v7

    .line 628
    :catch_b
    move-exception v2

    .line 629
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static switchFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 975
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 976
    .local v2, "newDate":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 977
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 978
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 979
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 976
    .end local v0    # "c":C
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 980
    .restart local v0    # "c":C
    :cond_1
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->isCNDigit(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 981
    const/16 v3, 0x5341

    if-ne v0, v3, :cond_2

    .line 982
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->isCNDigit(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 983
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    .line 984
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->isCNDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 987
    const v0, 0x96f6

    .line 1002
    .end local v0    # "c":C
    :cond_2
    :goto_2
    invoke-static {v0}, Landroid/util/DateTimeUrlHelper;->changeNum(C)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 990
    .restart local v0    # "c":C
    :cond_3
    const v0, 0x96f6

    .local v0, "c":C
    goto :goto_2

    .line 993
    .local v0, "c":C
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/util/DateTimeUrlHelper;->isCNDigit(C)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 997
    :cond_5
    const/16 v0, 0x4e00

    .local v0, "c":C
    goto :goto_2

    .line 994
    .local v0, "c":C
    :cond_6
    const-string/jumbo v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1004
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1005
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1009
    .end local v0    # "c":C
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static switchFormatNoYear(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 1020
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1022
    .local v2, "now":Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v4, v4, 0x76c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v1, "newDate":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1024
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1025
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1023
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1027
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1028
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1032
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static validateDate(Ljava/lang/String;)Z
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "first":I
    const/4 v6, 0x0

    .line 395
    .local v6, "second":I
    const-string/jumbo v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 396
    const-string/jumbo v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 397
    const-string/jumbo v9, "/"

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 402
    :goto_0
    if-ne v2, v6, :cond_1

    .line 403
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "Input String must has / or -"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    return v12

    .line 399
    :cond_0
    const-string/jumbo v9, "-"

    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 400
    const-string/jumbo v9, "-"

    invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 407
    .local v8, "year":Ljava/lang/String;
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "month":Ljava/lang/String;
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "day":Ljava/lang/String;
    const/16 v4, 0x1f

    .line 410
    .local v4, "maxDays":I
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    invoke-static {v8}, Landroid/util/DateTimeUrlHelper;->isNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v5}, Landroid/util/DateTimeUrlHelper;->isNumber(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 412
    :cond_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "Input String error"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    return v12

    .line 411
    :cond_3
    invoke-static {v1}, Landroid/util/DateTimeUrlHelper;->isNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 414
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v14, :cond_4

    .line 415
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "Input year num < 4"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 416
    return v12

    .line 418
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 419
    .local v7, "y":I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 420
    .local v3, "m":I
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 421
    .local v0, "d":I
    const/16 v9, 0xc

    if-gt v3, v9, :cond_5

    if-ge v3, v13, :cond_6

    .line 422
    :cond_5
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "the month must 1 to 12"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    return v12

    .line 424
    :cond_6
    if-eq v3, v14, :cond_7

    const/4 v9, 0x6

    if-ne v3, v9, :cond_a

    .line 425
    :cond_7
    const/16 v4, 0x1e

    .line 434
    :cond_8
    :goto_1
    if-lt v0, v13, :cond_9

    if-le v0, v4, :cond_d

    .line 435
    :cond_9
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "the day is error"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    return v12

    .line 424
    :cond_a
    const/16 v9, 0x9

    if-eq v3, v9, :cond_7

    const/16 v9, 0xb

    if-eq v3, v9, :cond_7

    .line 426
    const/4 v9, 0x2

    if-ne v3, v9, :cond_8

    .line 427
    rem-int/lit8 v9, v7, 0x4

    if-lez v9, :cond_b

    .line 428
    const/16 v4, 0x1c

    goto :goto_1

    .line 429
    :cond_b
    rem-int/lit8 v9, v7, 0x64

    if-nez v9, :cond_c

    rem-int/lit16 v9, v7, 0x190

    if-lez v9, :cond_c

    .line 430
    const/16 v4, 0x1c

    goto :goto_1

    .line 432
    :cond_c
    const/16 v4, 0x1d

    goto :goto_1

    .line 439
    :cond_d
    return v13
.end method

.method public static validateTime(Ljava/lang/String;)Z
    .locals 14
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x3b

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 449
    const-string/jumbo v8, "\u70b9"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "\u9ede"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 450
    :cond_0
    invoke-static {p0}, Landroid/util/DateTimeUrlHelper;->cnTimeTransform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 452
    :cond_1
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 453
    .local v0, "first":I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    .line 454
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "Input String must has : "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    return v11

    .line 457
    :cond_2
    const-string/jumbo v8, ":"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, "times":[Ljava/lang/String;
    aget-object v2, v7, v11

    .line 460
    .local v2, "hour":Ljava/lang/String;
    aget-object v4, v7, v12

    .line 461
    .local v4, "min":Ljava/lang/String;
    const/4 v6, 0x0

    .line 462
    .local v6, "second":Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 463
    const/4 v8, 0x2

    aget-object v6, v7, v8

    .line 466
    .end local v6    # "second":Ljava/lang/String;
    :cond_3
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    invoke-static {v2}, Landroid/util/DateTimeUrlHelper;->isNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v4}, Landroid/util/DateTimeUrlHelper;->isNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 468
    :cond_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "Input String error"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    return v11

    .line 471
    :cond_5
    if-eqz v6, :cond_8

    .line 472
    invoke-static {v6}, Landroid/util/DateTimeUrlHelper;->isNumber(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 473
    return v11

    .line 475
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 476
    .local v5, "s":I
    if-gt v5, v13, :cond_7

    if-gez v5, :cond_8

    .line 477
    :cond_7
    return v11

    .line 482
    .end local v5    # "s":I
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 483
    .local v1, "h":I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 484
    .local v3, "m":I
    if-gt v3, v13, :cond_9

    if-gez v3, :cond_a

    .line 485
    :cond_9
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "the min must 0 to 59"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 486
    return v11

    .line 488
    :cond_a
    if-ltz v1, :cond_b

    .line 465
    const/16 v8, 0x17

    .line 488
    if-le v1, v8, :cond_c

    .line 489
    :cond_b
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "the hour is error"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    return v11

    .line 493
    :cond_c
    return v12
.end method
