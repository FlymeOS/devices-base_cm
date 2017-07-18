.class public final Lcyanogenmod/providers/DataUsageContract;
.super Ljava/lang/Object;
.source "DataUsageContract.java"


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final BYTES:Ljava/lang/String; = "bytes"

.field public static final COLUMN_OF_ACTIVE:I = 0x3

.field public static final COLUMN_OF_BYTES:I = 0x5

.field public static final COLUMN_OF_ENABLE:I = 0x2

.field public static final COLUMN_OF_EXTRA:I = 0xa

.field public static final COLUMN_OF_FAST_AVG:I = 0x8

.field public static final COLUMN_OF_FAST_SAMPLES:I = 0x9

.field public static final COLUMN_OF_ID:I = 0x0

.field public static final COLUMN_OF_LABEL:I = 0x4

.field public static final COLUMN_OF_SLOW_AVG:I = 0x6

.field public static final COLUMN_OF_SLOW_SAMPLES:I = 0x7

.field public static final COLUMN_OF_UID:I = 0x1

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.itemdatausage_item"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dirdatausage_item"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATAUSAGE_AUTHORITY:Ljava/lang/String; = "org.cyanogenmod.providers.datausage"

.field public static final DATAUSAGE_TABLE:Ljava/lang/String; = "datausage"

.field public static final ENABLE:Ljava/lang/String; = "enable"

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field public static final FAST_AVG:Ljava/lang/String; = "fast_avg"

.field public static final FAST_SAMPLES:Ljava/lang/String; = "fast_samples"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final PROJECTION_ALL:[Ljava/lang/String;

.field public static final SLOW_AVG:Ljava/lang/String; = "slow_avg"

.field public static final SLOW_SAMPLES:Ljava/lang/String; = "slow_samples"

.field public static final UID:Ljava/lang/String; = "uid"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-string/jumbo v0, "content://org.cyanogenmod.providers.datausage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 39
    sget-object v0, Lcyanogenmod/providers/DataUsageContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "datausage"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "uid"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "enable"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 138
    const-string/jumbo v1, "active"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 139
    const-string/jumbo v1, "label"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "bytes"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "slow_avg"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "slow_samples"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "fast_avg"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "fast_samples"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "extra"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 134
    sput-object v0, Lcyanogenmod/providers/DataUsageContract;->PROJECTION_ALL:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
